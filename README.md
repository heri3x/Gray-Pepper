# Gray-Pepper

## 概要

作業共通化用のポータブルなツール環境です。煩雑なインストール作業をなるべく減らして、プログラマー以外のPCでも配置すれば同じツール環境がすぐ使えるようにしたい感じ。

## ツール環境プロンプト

ToolPrompt.bat をダブルクリックすると、ツール環境プロンプトが起動します。

### Python

Pythonm, pip のバージョンを表示。

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

### ツール類の更新

pip の管理パッケージ更新 (※pip自体を含む)

    > pip list --outdated --format=legacy | %{$_.Split(" ")[0]} | %{pip install -U $_}
    > tools/PythonMakePortable.bat

npm の管理パッケージ更新

    > npm update

npm 自体の更新 (※Windowsだとエラーが出るみたい？)

    > npm update -g npm
