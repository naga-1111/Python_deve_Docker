# VSCode + DockerでPythonの開発環境作成
## 事前準備
* [Git for windows](https://gitforwindows.org/)
* [Docker Desctop](https://www.docker.com/products/docker-desktop/)
* [VScode](https://azure.microsoft.com/ja-jp/products/visual-studio-code/)
  * VScodeの拡張機能
  * [docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)
  * [Remote Explorer](https://marketplace.visualstudio.com/items?itemName=ms-vscode.remote-explorer)
## 各種ファイル設定
* `.devcontainer/devcontainer.json`
  * "mounts"を"sorce=適当な自分のパス,target=コンテナ内パス,type=bind"に書き替える
  * "extensions"で好きな拡張機能を入れる (VScode左下の歯車→拡張機能→好きな拡張機能検索→installボタンの横の歯車→ADD to devcontainer.json)
  * "settings"で自分好みの設定にする
* `Dockerfile`
  * Pythonのバージョン、ユーザ名を好きに決める
* `requirements.txt`
  * 自分のPython環境で`pip freeze > requirements.txt`でモジュール一覧取得、上書き
## コンテナ起動手順
* VScode画面左下の緑色の部分→Open Folder in Container→このgit cloneしてきたdirectory選択、openコンテナ内にアクセスできる
