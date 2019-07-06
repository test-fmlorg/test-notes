---
layout: post
title: NetBSDインストール演習の分析(大学の演習2019 vs OSC-2013,2014)
tags:
- osc 
- netbsd
- インストール
- 演習
---

2018年度からの新しい必修演習科目でNetBSDインストール演習を始め(再開し)ました。
そこで、今年(2019)のNetBSD演習と、昔のインストール演習の記録を比較してみようと思います

### 概要

むかし、カリキュラム移行の端境期かなにかで一回だけやったことがあったり、OSCにハードウエアを持ち込んでやってみたこともありました。
本記事では、以下の匿名アンケート間の比較をしています

- 2013 ... OSC北海道にてNetBSDインストール演習:
           アンケート回収率は半分くらい、社会人の技術系が2/3、非技術が1/3
- 2014 ... OSC北海道にて(NetBSDはインストール済みで、その上の)apacheの設定演習:
           アンケート回収率は半分くらい、アンケートを見るかぎり、去年とは別のお客さん(学生2、社会人技術7、社会人非技術2)。
	   今回のテーマは、apacheの設定について解説することではなく、なぜ、この手順で、この設定をしているのか？という理屈を習おうというところにあります
- 2019 ... 情報系の学科の必修授業で強制的に、NetBSD演習(黒魔術の訓練?:-):
           アンケート回収率は、ほぼ100％です

2019の進行について:
- 演習の最初に、当日目標分のワークシートを配り、各自もしくはグループで調べ、適当にあてて答えさせるセッションがあります
- この調査は、グーグルしようが図書館に行って調べようが自由です。
   おおむね、適当に検索しているだけなので、それらしい回答が出てきますが、中身を理解しているかは不透明です
- それでも、やらないよりは良いかと思います

その他の印象:
- 検索して最初に引っかかったウエブの内容を盲目的に信じます。
  Unixに複数の系列があることなど、おもいもよらないので「このコマンドが動きません」という質問が出てきます。
  (まぁ Windows や MacOSX の人は、そんなこと思わないでしょうね)
- マニュアルでも口頭でもスペース区切りとか見間違えやすい文字(例: l と 1 )などを注意しますが、よく罠にはまってます ;-)
- C言語の時にCentOS上でbashとvi(vim)を使ったことがあるだけなので、それ以外のシェルとnviの振る舞いの違いの罠にはまります
  (e.g. 消去とか)
- Unixやviの操作法ビデオ教材(youtube)もあります、ちっとも見てくれませんけど
- マルチタスクでないです。
  ビデオもありますよと紹介すると、ビデオだけ見てやるので、細かいところを見逃して、お祭りになります。
  では、マニュアルを見ろ！と言うと、ビデオを参考にしたりしません
  ... orz


### 演習参加者の立ち位置について

2013と2014のお客様は、この10以上のセミナーが並列に開催されるOSC北海道で、わざわざ、このセッションを選んで参加していただいているわけです。意欲という点で精鋭部隊なのです。

かたや、2019のほうは、情報システム工学科という名前の学科ではありますが、必修科目のため強制参加しているという立場になっています。

さて、みなさんは、以下のデータをどう解釈しますか？



### 問1: 作業量、二時間で終わる程度を基準にしていますが、どうですか？

問|2013|2014|2019
--|----|----|-----
少ない      |  0  | 27% |  2%
やや少ない  | 17% |  9% | 17%
ちょうどよい| 33% | 55% | 69%
やや多い    | 50% |  9% |  8%
多い        |  0  |  0  |  2%

**注意**:
2013と2014は50分くらいの枠で、50分でなんとかなると思われる演習の一部を切り出して実施しました。
2019は全体で90分枠6コマ分なので、その分を割り引いてみてください。


### 問2: 難易度について

問|2013|2014|2019
---|----|----|----
やさしい    | 17% | 27% | 12%
やややさしい| 50% | 45% | 28%
やや難しい  | 33% |  9% | 54%
難しい      |  0  | 18% |  4%

自由記述

- 2013 ... viがわからない
- 2014 ... 初心者x2
- 2019 ...
    - viコマンド等、説明が少ない箇所が多々あったため、作業に手間どった(注: 他の授業で使ってます)
    - プロンプトが「#」と「$」の時で、文字の入力と削除の統一性がない
    - コマンドの理解など、内容がわからない x6
    - グループワークの課題の答えを見つけることが難しい、解答が口頭のみであまり理解できなかった
    - 文章の説明が読みづらい
    - 説明不足な部分で、操作に手まどってしまった
    - 写経になってしまっていて、目的の説明が欲しい
    - 間違えていたとき、どこが間違えていたかを探すこと。言葉を調べても、欲しい情報が出てこなくて苦戦した
    - 時間が足りない
    - 発展課題のレベルが高い(気がした)


### 問3: 他に何をやってみたい？

- 2013 ... 業務用CISCO x2、ファイルサーバ、サーバ設定、コマンドの意味
- 2014 ... ルータ、OSもう少し新しいバージョンのほうがいいのでは？、この内容では進み方が遅い、インフラエンジニアを増やすために、もっとやれ！、OSインストール全般、パッケージシステム
- 2019 ...
    - シェルプログラミング                  x3 (例としてあげてあるので誘導の要素あり)
    - twitterクライアント作ってみたい       x3 (例としてあげてあるので誘導の要素あり)
    - ファイルサーバやNASの構築             x3 (例としてあげてあるので誘導の要素あり)
    - CGIプログラムをもっと充実させたい        (例としてあげてあるので誘導の要素あり)
    - 業務用のネットワーク機材を設定してみたい (例としてあげてあるので誘導の要素あり)
    - 自分でサーバを作ってみたい
    - ポータルサイトの作成
    - ネットワーク関係を極める(座学→実際に手を動かす)
    - 目に見えてわかるような体験をしてみたかった
    - 興味はあるが具体的にはわからなかったです



### 問4: 毎月このような構築大会をやるなら参加しますか？

参加のY/N |2013|2014|2019
---|----|----|----
参加する  | 100% | 70% | 48%
参加しない|   0% | 30% | 52%


### 問7: この手の作業経験について(複数回答可)

- a OSを問わずインストールが初めて
- b Unixを初めてさわった
- c Unixを普段使っているが、コマンド操作は初めて
- d その他

問|2013|2014|2019
-|----|----|----
初    |  1/6|2/10|46/82
初Unix|  1/6|2/10|40/82
初CUI |-    |-   |4/82
その他|  4/6|5/10|7/82

- 2013 ... 	たまにSolaris、	自宅サーバ、インストールは初めて(ksh zshなどは触っている)
- 2014 ...	Unixでコマンドを使っている、サバ管２年目
- 2019 ...
    - Ubuntuを使ったサーバサイドの勉強
    - CentOSのインストールを一度
    - FreeBSDでsambaを動かしたことがある
    - アルバイトでさわりはじめた
    - 簡単なものしかやったことがない
    - 1.2年の講義で少しふれたことがある
    - サーバの中身をいじったことがない


### 問8: ふだん利用しているOS(複数回答可)

聞くまでもなくWindowsの圧勝なんですが...

OS|2013|2014|2019
-------|----|----|----
windows|5   |9   |74
  macos|2   |2   |12
  linux|3   |6   |2
    BSD|1   |4   |1
 その他|1   |1   |

- 2013 ...	RHEL、 NetBSD-current、	AIX、	Ubuntu
- 2014 ...	RHEL、 Cent x3 Ubuntu、	FreeBSD x3、iOS
- 2019 ...	Debian FreeBSD iOS

ちなみに、2019の場合、WindowsとMac両刀使いが6人、WindowsとUnix/Linuxが2人、MacOSXのみが6人です


### 問9: その他、自由記述

- 2013
    - コマンドの意味を説明してほしい、全体にQ&Aを共有してほしい
- 2014
    - 解説(講義)とハンズオンの時間枠は進行を明確に分けてほしい(解説聞きながら手を動かすのではなく)
- 2019
    - 教科書とても分かりやすかった
    - この手の分野(プログラミングを含めて)は大学に入る前にやってきてなかったのでマニュアルがあって助かった
    - システムに親近感が湧いたので、良い内容
    - シス管系女子読み始めました
    - TA、SAを増員してほしいです
    - シェル勉強会が入っていない時間にやってほしい。（5講時とか...）


### 作業時間の統計


![OSのインストール]({{ site.url }}/assets/figures/netbsd-install-2019-os.png)


![ネットワークの設定〜OpenSSHまで]({{ site.url }}/assets/figures/netbsd-install-2019-server.png)



![ApacheとPostgreSQLをいれてCGIの作成]({{ site.url }}/assets/figures/netbsd-install-2019-namazon.png)





### 履歴
