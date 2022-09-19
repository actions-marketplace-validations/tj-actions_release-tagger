#!/usr/bin/env bash

set -e

if [[ $GITHUB_REF != "refs/tags/"* ]]; then
  echo "::warning::Skipping: This should only run on tags push or on release.";
  exit 0;
fi

git fetch "$INPUTS_REMOTE" +refs/tags/*:refs/tags/*

NEW_TAG=${GITHUB_REF/refs\/tags\//}
MAJOR_VERSION=$(echo "$NEW_TAG" | cut -d. -f1)

for tag in $(git tag -l "$MAJOR_VERSION.*"); do
  echo "Adding $tag to release notes"
  {
    echo "# Changes in $tag"
    gh release view "$tag" --json body --jq '.body'
    printf "\n---\n\n"
  } >> "$INPUTS_RELEASE_NOTES_FILE"
done

if gh release view "$MAJOR_VERSION" > /dev/null 2>&1; then
  gh release edit "$MAJOR_VERSION" --notes-file "$INPUTS_RELEASE_NOTES_FILE" --target "$NEW_TAG"
else
  gh release create "$MAJOR_VERSION" --notes-file "$INPUTS_RELEASE_NOTES_FILE" --target "$NEW_TAG"
fi

echo "::set-output name=major_version::$MAJOR_VERSION"
echo "::set-output name=new_version::$NEW_TAG"
