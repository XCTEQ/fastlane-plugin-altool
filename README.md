# altool plugin

[![fastlane Plugin Badge](https://rawcdn.githack.com/fastlane/fastlane/master/fastlane/assets/plugin-badge.svg)](https://rubygems.org/gems/fastlane-plugin-altool)

<a href="https://travis-ci.org/Shashikant86/fastlane-plugin-altool/"><img src="https://img.shields.io/travis/Shashikant86/fastlane-plugin-altool.svg" /></a>

## Getting Started

This project is a [_fastlane_](https://github.com/fastlane/fastlane) plugin. To get started with `fastlane-plugin-altool`, add it to your project by running:

```bash
fastlane add_plugin altool
```

## About altool

Upload IPA to iTunes Connect using altool.

Currently Fastlane deliver uses iTMSTransporter to upload an ipa files to iTunes Connect but there is slick way to do this using `altool`

This plugin can be used for uploading generated ipa file using Gym to iTunes Connect.

This plugin assume that, you already have that Fastlane setup and your details are configured as ENV variables in FASTLANE_USER and FASTLANE_PASSWORD


## Example

You can configure this plaugin using

```
lane :upload_ipa_altool do
    altool(
        altool_app_type: "ios",
        altool_ipa_path: "./build/Your-ipa.ipa",
        altool_output_format: "xml",
    )

  end
```


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
