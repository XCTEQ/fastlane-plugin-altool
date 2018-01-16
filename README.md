# altool plugin

[![fastlane Plugin Badge](https://rawcdn.githack.com/fastlane/fastlane/master/fastlane/assets/plugin-badge.svg)](https://rubygems.org/gems/fastlane-plugin-altool)

<a href="https://travis-ci.org/Shashikant86/fastlane-plugin-altool/"><img src="https://img.shields.io/travis/Shashikant86/fastlane-plugin-altool.svg" /></a>

## Getting Started

This project is a [_fastlane_](https://github.com/fastlane/fastlane) plugin. To get started with `fastlane-plugin-altool`, add it to your project by running:

```bash
fastlane add_plugin altool
```

## Pre-requisite

This plaugin has configurable Apple ID and password but you probably don't want to hardcode that. You need to have Fastlane setup with `FASTLANE_USER` and `FASTLANE_PASSWORD` environmenal varibales setup. Fastlane will ask it when you run `fastlane init` but if not you have to set these variables.

You can set that easily for bash shell

```
$ export FASTLANE_USER="your_apple_id@yourcompany.com";
$ export FASTLANE_PASSWORD="your_super_xecret_password";

```

You can do the same for your choice of shell if you aren't using bash.


## About altool

This plugin can be used to upload IPA to iTunes Connect using altool.

Currently Fastlane deliver uses iTMSTransporter to upload an ipa files to iTunes Connect but there is slick way to do this using `altool`

This plugin can be used for uploading generated `ipa` file using Gym to iTunes Connect.

This plugin assume that, you already have that Fastlane setup and your details are configured as ENV variables in `FASTLANE_USER` and `FASTLANE_PASSWORD` by default.


## Usage

You can configure this plaugin using

```
    altool(
        altool_username: ENV["FASTLANE_USER"],
        altool_password: ENV["FASTLANE_PASSWORD"],
        altool_app_type: "ios",
        altool_ipa_path: "./build/Your-ipa.ipa",
        altool_output_format: "xml",
    )

```

## Example Project Repo

This is a example project [Altool-Demo](https://github.com/Shashikant86/Altool-Demo) available on Github which has its own README.

## Run tests for this plugin

To run both the tests, and code style validation, run

```
rake
```

To automatically fix many of the styling issues, use
```
rubocop -a
```

## Issues and Feedback

For any other issues and feedback about this plugin, please submit it to this repository.

## Troubleshooting

If you have trouble using plugins, check out the [Plugins Troubleshooting](https://docs.fastlane.tools/plugins/plugins-troubleshooting/) guide.

## Using _fastlane_ Plugins

For more information about how the `fastlane` plugin system works, check out the [Plugins documentation](https://docs.fastlane.tools/plugins/create-plugin/).

## About _fastlane_

_fastlane_ is the easiest way to automate beta deployments and releases for your iOS and Android apps. To learn more, check out [fastlane.tools](https://fastlane.tools).
