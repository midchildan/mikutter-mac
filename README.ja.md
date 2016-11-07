# mikutter-osx

mikutter-macはTwitterクライアント[mikutter](http://mikutter.hachune.net)のプラグインです。mikutterをmacOSで使いやすくします。

See [this page](../master/README.md) for an English explanation.

## 機能

* mikutterの `.app` バンドルを作成
* 通知を有効化
* 音声再生を有効化

##要件

以下のパッケージを[Homebrew](https://brew.sh)でインストール

- mikutter
- terminal-notifier

## 導入方法

### このレポジトリをクローンする

```sh
brew install mikutter
mkdir -p ~/.mikutter/plugin
cd ~/.mikutter/plugin
git clone https://github.com/midchildan/mikutter-mac.git
```

### `.app` バンドルの作成

```sh
cd mikutter-mac
make install
```

#### make オプション

|オプション       |既定値                           |
|-----------------|---------------------------------|
|`prefix`         |`/Applications`                  |
|`MIKUTTER_PREFIX`|`/usr/local/opt/mikutter/libexec`|
|`PREPEND_PATH`   |`/usr/local/bin:/usr/local/sbin` |

## ライセンス

このプラグインはMITラインセンスの下で公開されてます。詳細は[こちら](../master/LICENSE)。

## 開発者

[みっどちるだ人](http://midchildan.org)
