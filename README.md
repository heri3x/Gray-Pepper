# Gray-Pepper

## 概要

作業共通化用のポータブルなツール環境。煩雑なインストール作業をなるべく減らして、プログラマー以外のPCでも配置すれば同じツール環境がすぐ使えるようにしたい感じ。

## リポジトリのクローン時にエラーが出る場合

リポジトリをクローンする際に、下記のパスが長すぎる(260文字制限を超えた)エラーが出てクローン失敗する場合がある。

    fatal: cannot create directory at '...' : Filename too long

下記の２つの対策方法がある。

### (A) Cドライブのすぐ下にクローンする

'C:\Gray-Pepper' のような短いパスにクローンすると、とりあえずエラーが出なくなる。それでよければそれで解決。

### (B) git設定を変更する (Git for Windows用)

Git for Windowsをインストールしているなら管理者権限でGit Bashを開き、下記を実行してgitの設定を変更する。

    > git config --global core.longpaths=true

これで Git Bash や SourceTree ではクローン時のエラーが出なくなる。ただし GitKraken ではエラーが出る（解決方法不明）。

## プロンプトの起動

Prompt.bat をダブルクリックすると、ツール環境プロンプトが起動する。

### Python

Python, pip のバージョンを表示。

    > python -V
    > pip -V

pip のインストール済みパッケージ一覧を表示。

    > pip list

### Node.js

Node.js, npm のバージョンの表示。

    > node -v
    > npm -v

npm のインストール済みパッケージ一覧を表示。

    > npm list -depth=1

## テストコード

### PyQt5

    > python .\testcode\pyqt5_test.py

### Pillow

    > python .\testcode\pillow_test.py

### Electron

    > pushd .\testcode\electron-quick-start\
    > npm start
    > popd

### Moment.js

    > node .\testcode\moment_test.js

### PowerShell

    > .\testcode\powershell_test.ps1

## ツール類の更新

### pip の管理パッケージ更新（pip自体の更新も含む）

    > pip list --outdated --format=legacy | %{$_.Split(" ")[0]} | %{pip install -U $_}
    > tools/PythonMakePortable.bat

パッケージ更新時にスクリプトにフルパスが埋め込まれ他環境で動かなくなることがあるため、2行目でこれを修正するバッチを実行している。

### npm の管理パッケージ更新

    > npm update

### npm の更新

'Prompt-Admin.bat' をダブルクリックして、プロンプトを管理者権限で起動し、下記を実行する（管理者権限がないとエラーが出る）。

    > chcp 65001
    > npm-windows-upgrade

1行目でロケールを英語に変更してから、npm-windows-upgradeコマンドを実行している（日本語のままだと途中のコマンド出力のパース処理でエラーが出るみたい）。
