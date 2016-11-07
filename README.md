# mikutter-mac

mikutter-mac is a plugin for the Twitter client [mikutter](http://mikutter.hachune.net). This plugin aims to better integrate mikutter with macOS.

日本語は[こちら](../master/README.ja.md)。

## Features

- Make an `.app` bundle for mikutter.
- Enable notifications
- Enable soundplay

## Requirements

Install these packages via [Homebrew](https://brew.sh):

- mikutter
- terminal-notifier

## Installation

### Clone this repository

```sh
mkdir -p ~/.mikutter/plugin
cd ~/.mikutter/plugin
git clone https://github.com/midchildan/mikutter-mac.git
```

### Make the `.app` bundle

```sh
cd ~/.mikutter/plugin/mikutter-mac
make install
```

#### Options for make

|Option           |Default Value                    |
|-----------------|---------------------------------|
|`prefix`         |`/Applications`                  |
|`MIKUTTER_PREFIX`|`/usr/local/opt/mikutter/libexec`|
|`PREPEND_PATH`   |`/usr/local/bin:/usr/local/sbin` |

## License

This plugin is distributed under the MIT license. See [LICENSE](../master/LICENSE) for more details.

## Author

[midchildan](http://midchildan.org)
