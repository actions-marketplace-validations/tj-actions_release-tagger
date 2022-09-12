[![CI](https://github.com/tj-actions/release-tagger/workflows/CI/badge.svg)](https://github.com/tj-actions/release-tagger/actions?query=workflow%3ACI)
[![Update release version.](https://github.com/tj-actions/release-tagger/workflows/Update%20release%20version./badge.svg)](https://github.com/tj-actions/release-tagger/actions?query=workflow%3A%22Update+release+version.%22)
[![Public workflows that use this action.](https://img.shields.io/endpoint?url=https%3A%2F%2Fapi-tj-actions1.vercel.app%2Fapi%2Fgithub-actions%2Fused-by%3Faction%3Dtj-actions%2Frelease-tagger%26badge%3Dtrue)](https://github.com/search?o=desc&q=tj-actions+release-tagger+path%3A.github%2Fworkflows+language%3AYAML&s=&type=Code)



release-tagger
--------------

Automatically manage action releases

```yaml
...
    steps:
      - uses: actions/checkout@v2
      - name: Action release tagger
        uses: tj-actions/release-tagger@v1
```


## Inputs

|   Input       |    type    |  required     |  default                      |  description  |
|:-------------:|:-----------:|:-------------:|:----------------------------:|:-------------:|
| token         |  `string`   |    `true`    | `${{ github.token }}` | [GITHUB_TOKEN](https://docs.github.com/en/free-pro-team@latest/actions/reference/authentication-in-a-workflow#using-the-github_token-in-a-workflow) <br /> or a repo scoped <br /> [Personal Access Token](https://docs.github.com/en/free-pro-team@latest/github/authenticating-to-github/creating-a-personal-access-token)              |


* Free software: [MIT license](LICENSE)

If you feel generous and want to show some extra appreciation:

[![Buy me a coffee][buymeacoffee-shield]][buymeacoffee]

[buymeacoffee]: https://www.buymeacoffee.com/jackton1
[buymeacoffee-shield]: https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png



Features
--------

* TODO


Credits
-------

This package was created with [Cookiecutter](https://github.com/cookiecutter/cookiecutter) using [cookiecutter-action](https://github.com/tj-actions/cookiecutter-action)

Report Bugs
-----------

Report bugs at https://github.com/tj-actions/release-tagger/issues.

If you are reporting a bug, please include:

* Your operating system name and version.
* Any details about your workflow that might be helpful in troubleshooting.
* Detailed steps to reproduce the bug.
