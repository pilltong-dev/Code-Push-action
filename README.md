# Code Push Github Action

This action runs any Code Push CLI command.

## Inputs

### `command`

**Required** The Code Push CLI command you want to use:
https://learn.microsoft.com/ko-kr/appcenter/distribution/codepush/cli

### `token`

**Required** Code Push API Token


```
name: Release

on: [push]

jobs:
  build:

    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v2.3.4
    - name: run any Code Push CLI command
      uses: pilltong-dev/Code-Push-action@v0.0.1
      with:
        command: code-push release-react CodePushReactNativeDemo-ios ios -d Production
        token: ${{secrets.CODE_PUSH_TOKEN}}
```
