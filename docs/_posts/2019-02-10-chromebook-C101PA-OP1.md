---
layout: post
title: Chromebook (ASUS C101PA-OP1) は理想に近いDebianノートPCだと思い3カ月ほど使ってみた感想
tags:
- chromebook
- debian
---

Chromebook を持ち歩いて生活してみることにしました。単にブラウザだけしか使えなくてもOKだからChromebookにしたわけではなくて、Chromebookが進化して、軽くて素敵なUnixノートPCとして目の前に再登場したからです(1にDebian、2にUSB-C給電可がポイント)。三ヶ月ほど使ってみた感想は、ごく、ひかえめにいって、いままで使ったノートPCの中でも理想にかなり近い製品です。いい感じ。

## 仕様

**ASUS Chromebook ASUS C101PA-OP1**
[ASUSの製品ページ](https://www.asus.com/jp/2-in-1-PCs/ASUS-Chromebook-Flip-C101PA/)

|CPU|Rockchip Quad-Core RK3288C|
|:----|----:|
|メモリ|2GB|
|ストレージ|16GB|
|重量|900g|

2018年秋~冬の実売価格は3万円台後半です。

## 選定の条件

Chromebook自体は昔から興味がありましたが、ブラウザだけで生活するのは運用部隊からみると少しなんなんですわ…SSHできなくはないけれど使い勝手がイマイチとか、いろいろと運用部隊向きではなかったです。と思っていたのですが、**2018年秋**、風向きが変わりました。
```時が来た！```
という感じでしょうか。なぜ今！？それは以下の条件その１がクリアされたことが大原動力になっていますが、ACアダプターを持ち歩かなくてもよくなったことも同じくらい大きな原動力でした。

+ Unix or Linux が動く (2018年秋から対応)
    + 出来るだけ生に近いものが動く、魔改造とかされていないものが望ましい
    + sh perl go git cvs emacs ssh などが素直に使える
+ 高い運用能力
    + 軽い(1kgを切る)
    + USB-Cで給電、非常時にはモバイルバッテリーから充電できる
    + 普通に使う分には一日もつくらいのバッテリーを搭載
+ Googleに依存することは前提にしてよい
    + つまり某シアトル方面の純正オフィス製品が動くかとかは考えなくてよい
      (特定営利企業製品の操作を覚えることが重要という世界観をおしつけてほしくないね)
+ お求め安い価格
+ (欲を言えば）
    + トラックポイントつき（さすがに、これは厳しい）

##  感想
### 感想(いいところ)

+ 環境の前提として、出先ではスマートフォンでテザリングします。自宅や職場は普通にどこでもwifiが使えます
+ 軽い、うすい、小さい、数秒で起動は正義
+ 普通にDebian GNU Linuxノートとして使っています
    + git cloneしてemacsでドキュメントやコードを編集
    + sshでサーバへ入って作業
    + もともと、shell perl go などIDEを前提としない古典的なスタイルの言語ばっかりなので無問題
+ でも、ブラウザをひらいている時間もけっこう長いです
    + SLACKとかもブラウザで開きます、Androidアプリも入るはずですが使ってません
    + アイコンたたくと、たいてい新しいブラウザタブが開いて、そこで動作します
    + なぜかGoogle Keepアイコンだけは、別のウインドウが起動してきますが…(?)
+ バッテリーは十分持ちます
    + ブラウザとDebian使う限りでは十分もちます
    + 一時間あたり10％弱で減ります
    + 動画とか見ると、どんどん減りますけど
+ 正規の充電器なら2時間くらいで充電できます
+ 非常時には、モバイルバッテリーからの給電も可能です
    + ただし所有しているモバイルバッテリーから使用しながらの充電は出来ませんでした
    + スリープモードで少しずつ充電できる程度です
    + (もっといいバッテリーを買いましょう(?))
    + (100円ショップのUSB-Cでも大丈夫ですか？はい使えてます)
+ ごくひかえめに言って、いままで使ったノートPCの中でも理想にかなり近いです

### 感想(悪いというほどでなく、ちょっと困ったところ）

+ 充電器を選ぶ
   + 純正品でないと、たいてい出力が低いので充電できないかもしれませんと警告されます
   + 使わない(ふたを閉じた)状態でなら、出力が低くてもそれなりに充電可能
   + 最近の充電器を買いましょう。スマートフォンの充電はジャンク屋で300円の正体不明な充電器でも出来ますが、Chromebookは充電不可です
+ トラックポイントがない(ベンダーが違うので、それは無理難題:frowning2:)
+ 自分は困りませんが、IDEは？とか言い出す人にはパワーが足りません。
    + もっとハイスペックのChromebookを買いましょう(?)
    + もちろん apt install .. で何でもインストールは出来ますけれど実用的かは別
    + そこまでいくとChromebookでなく、もっとハイスペックなマシンにDebianいれたほうが？
+ ブラウザとDebian(仮想環境)は別物、いい意味でも悪い意味でも
    + ブラウザで使う環境とDebian仮想環境という二つが独立して動いていると考えるべき 
    + 日本語切替は、それぞれの環境ごとに設定できます
    + ブラウザの日本語入力モードはDebian環境に移行しても有効なままです。逆は無効です。
    + CLIで困ってしまいます。ブラウザの日本語モードの状態からDebianへ移動すると、日本語入力モードのまま…なので、一度ブラウザに戻って、英語モードにて、またCLIに戻る動作をよくやってしまいます
+ キーボードのカスタマイズは、それなりにできるけれどxmodmapで全部カスタマイズできるわけではない(そういうマニアックな使い方は想定外)
+ 外部出力は、おおむね使えますが少し不安ですね
    + USB-CからHDMIやVGAを出してます
    + 2000円くらいのもの(ASIN B078W52ZTP)を使っていて十分な品質だと思っていますが、100％確実を求めるなら、もっと高いものでないとダメでしょうかね?

## おまけコラム: にっぽんじゃ～二番だ

理想のノートPCを、仮に、**ズバットブック**と呼びましょう。

(♪ちゃららら～)
「きみのChromebookにっぽんじゃ二番だ」
「なに、一番はだれだ」
「ちっちっちっ…」
(以下、略)

**ズバットブック**は前述のマシンのスペックで外見がThinkpad X201の形をしていると思います。そういうのが欲しいです…
