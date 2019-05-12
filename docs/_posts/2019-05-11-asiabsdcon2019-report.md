---
layout: post
title: AsiaBSDCon 2019 レポート
tags:
- netbsd
- asiabsdcon
- BSD花見
name:   inverse
class:  center, middle, inverse
---

AsiaBSDCon 2019 のレポート(元は**BSD花見2019(謎)**のスライド)です。

---
## そもそも AsiaBSDCon とは

- *BSD Conference
    - EuroBSD  (ヨーロッパ)
    - BSDCan   (カナダ)
    - AsiaBSD  (アジア)

- BSDなら、なんでも歓迎
    - それどころか 2018 の基調講演が Linux Rump Kernel ネタって...
      (注: ちなみに Rump Kernel は NetBSD 発祥です)

- インターネットぽく一般の人がメイン
    - 立場とか関係なくBSDの開発をしている人を歓迎
    - そのため大学の人は皆無です


---
## 印象 2017-2018

- 2017
    - https://2017.asiabsdcon.org/
    - https://togetter.com/li/1084357
    - Free たくさん, Open ?, Net 3, Dragon 1
    - 論文セッションが3トラック並列で土日みっちり
    - めっちゃ人がたくさん

- 2018
    - https://2018.asiabsdcon.org/
    - https://togetter.com/li/1206515
    - Free 12, Net,Open,Dragonそれぞれ 1
    - 論文セッションは2トラック並列
    - Bhyve (the BSD Hypervysor) 関連に偏ってる印象
        - Bhyve は FreeBSD で linux KVM に相当するもの
    - BhyveConがチュートリアルセッション(最初の二日)の裏で開催

---
## 印象 2019

- https://2019.asiabsdcon.org/
- https://togetter.com/li/1330031
- Free 十数, Net 3, Open 0?, Dragon 0
- 論文セッションは2トラック並列、BhyveConが前日に開催
- 論文セッションの話題 
   - けっこう、いろいろ(詳細はプログラムを参照)
   - トピックのBhyve一辺倒は無くなった感じ
   - Bhyveでサービスしているプロバイダとかもあるらしい
- BSDの仮想環境
    - Bhyveの移植ではなくBSDそれぞれでそれぞれ進行中な印象
- NetBSDの仮想化対応
    - ポーランドの kamil@NetBSD.orgが頑張ってる
    - qemuのNetBSD対応担当者もkamil@のはず
    - HAXMのNetBSD対応とか少し違う方向からBSD仮想化戦線へ参戦
        - Windowsまで普通に動きまする
        - pkgsrcにカーネルモジュール用意されました、さくっといけそう
	- お試しを！
- ブースのガジェット
    - NetBSD/pinebook 安定可動、受注生産(w)
    - この小型プロジェクタが胸熱
    http://akizukidenshi.com/catalog/g/gK-13766/
    - twitterがレシートに印刷される件について

---
## AsiaBSDCon 今後の予定

- 2020
    - 東京
        - 2020 台湾説があったけれど東京らしい:-)
        - さすがに、オリンピックの影響は春にはないと思うんだよね〜

- 2021
    - 海外開催を考えているらしいです

- スポンサーは、つねに募集中
