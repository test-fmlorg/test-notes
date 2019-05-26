---
layout: post
title: Chromebook での Debian GNU/Linux 環境セットアップ
tags:
- chromebook
- debian
- crostini
---

最近のChromebookでは、**Crostini**と呼ばれるLinuxコンテナ仮想化が使えます。


## Debian GNU/Linux 環境をインストール

2018年秋時点での最新機種群が、おおむね対応しているようです。
ChromeOSの設定にある「Linuxを有効化」などというボタンをクリックするだけです。

/etc/apt以下にChromeOS固有のパッケージ設定が入っていますが、
その分が追加される以外は、
ほぼ普通のDebianそのままに見えます。


## アップデート

ほぼ普通のDebianそのままなので、
```
# apt update
# apt upgrade
```
などを実行します。

apt でアップデートしない場合は？というと、
どんどん古くなりますが、
ChromeOSアップグレードと同様に、
たまにLinux環境も強制アップグレードされて最新になるようです。


## 追加のアプリケーションをインストールには？

これも普通に
```
# apt install アプリケーション
```
すればインストールされます。

ただし、インストールは出来ますが、
統合開発環境(IDE)のような高スペックを要求するアプリは起動できないです
(ずっと頑張りつづけるも起動してこない状態へ…)。

EmacsでC Perl GO言語みたいな人たちは全然問題ありません！


### エディタ: Micro GNU Emacs と本家 Emacs

```
# apt install mg emacs anthy-el ?
```


### ブラウザ: Firefox

ChromeOS上のアプリを探してもダメで、
そうではなく crostini 側でインストールすればインストールできて、
ChromeOS側でもFirefoxが使えるようになります。

ただし、
単に
```
# apt install firefox-esr
```
とするだけでは日本語が出るようになりません。
きちんと日本語が出るようにするには、
Firefox日本語セットつきだけではうまくいかず、
フォントまで入れないとダメみたいです。
```
# apt install firefox-esr-l10n-ja fonts-ipafont
```
インストール後は、
いちどFirefoxを起動して、パネルに貼りつけておくとよいでしょう。


### dnsutils

不便なので nslookup とか dig, nsupdate を入れておきます。
```
# apt install dnsutils
```


### 画像ビューワー

debian のパッケージには xv が存在しないんですよね(ふるいって？)
pqiv あたりでいいんでしょうか？
全部をミシュランしたわけではないのですが、なんとなく、これを使ってます。

```
# apt install pqiv
```

### 図を書く

tgifはパッケージに収録されていますが日本語がうまくあつかえないので、
dia ですかね〜

