# alt-ime-ahk-mod

左右 <kbd>Alt</kbd> キーの空打ちで IME を ON/OFF する AutoHotkey スクリプト

-   左 <kbd>Alt</kbd> キーの空打ちで IME OFF
-   右 <kbd>Alt</kbd> キーの空打ちで IME ON
-   <kbd>Alt</kbd> キーを押している間に他のキーを打つと通常の <kbd>Alt</kbd> キーとして動作

## 🤔 [オリジナル](https://github.com/karakaram/alt-ime-ahk) からの変更点

-   Windows 10 v1909 以降 <kbd>Alt</kbd> キーを長押しすると、Xbox Game Bar が起動してしまう問題を修正  
    Xbox Game Bar 起動用仮想キーコードとのバッティングを回避 (`vk07` -> `vkFF`)
-   メニュー項目を追加
    -   [Check for Updates...](https://github.com/nekocodeX/alt-ime-ahk-mod/releases/latest)
    -   [GitHub Repo / Readme](https://github.com/nekocodeX/alt-ime-ahk-mod)
-   <kbd>CapsLock</kbd> `0.75秒` 長押しで ON  
    (OFF は変更なし)
-   既存のインスタンスが存在する場合、終了して新たにインスタンスを開始

## ✅ 動作環境

-   Windows 10

## 📦 使い方

### インストール & 起動

-   [Releases](https://github.com/nekocodeX/alt-ime-ahk-mod/releases) から `alt-ime-ahk-mod.exe` をダウンロード後、好きな場所へ配置し、起動するとタスクトレイに常駐します 🎉

### 終了

-   タスクトレイのアイコンを右クリック → `Exit` をクリック

### アンインストール

-   `alt-ime-ahk-mod.exe` を削除

## 💡 Tips

-   管理者権限が必要なアプリケーションで動作させる場合、`alt-ime-ahk-mod.exe` を `管理者として実行` してください
-   PC 起動時に自動実行する場合、`スタートアップ` ではなく `タスク スケジューラ` をおすすめします  
    (`スタートアップ` では `管理者として実行` 出来ない為)

    設定例:
    <div align="center">

    <img src="https://user-images.githubusercontent.com/65624234/103242693-8def6600-499a-11eb-83a2-76e48e4c3ac8.png" width=49%>
    <img src="https://user-images.githubusercontent.com/65624234/103242723-a8c1da80-499a-11eb-820a-a189260879d3.png" width=49%>
    <img src="https://user-images.githubusercontent.com/65624234/103242743-bc6d4100-499a-11eb-84ed-bd2921eaf4e7.png" width=49%>
    <img src="https://user-images.githubusercontent.com/65624234/103242752-c2fbb880-499a-11eb-98e3-e0386ee24cfb.png" width=49%>
    <img src="https://user-images.githubusercontent.com/65624234/103242762-ca22c680-499a-11eb-822a-81a8832a849f.png" width=49%>

    </div>

-   IntelliJ IDEA など JetBrains 製の IDE をお使いの方は `上部メニューバー` > `View` > `Tool Buttons` をオンにしてください  
    オフのまま使うと、<kbd>Alt</kbd> キーを離した際に `alt-ime-ahk-mod.exe` がエラー終了します

## 🙇‍♂️ 謝辞

[alt-ime-ahk](https://github.com/karakaram/alt-ime-ahk) の作者 [karakaram](https://github.com/karakaram)

[Alt の空打ちで日本語入力(IME)を切り替えるツールを作った](http://www.karakaram.com/alt-ime-on-off/)
