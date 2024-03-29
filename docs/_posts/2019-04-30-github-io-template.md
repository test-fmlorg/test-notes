---
layout: post
title: github.ioにmarkdownなスライドをおいてプレゼンするためのテンプレート
tags:
- github.io
- blog
- jekyll
---

Forkして、すぐに使える
**markdownなスライドでプレゼンするテンプレート**
リポジトリを作ってみました。


## URL

[github.com/fmlorg/slide-templates-on-githubio](https://github.com/fmlorg/slide-templates-on-githubio)


## 使い方

1. このリポジトリを github.com で Fork し、
   リポジトリ名を適宜、変更してください
1. Settings で 
    1. 「master branch docs/ folder」を選びgithub.ioを有効にしてください
    1. テーマは好きなものを選びます
1. github.ioが期待どおり見えているか動作確認をしてください
    - github.ioに反映されるまでに少し時間がかかります
1. docs/ 以下を編集して使ってください。
    - docs/notes/slide.md などをコピーしてスライドを作成、
      docs/index.htmlを編集し、slide.htmlの引数に表示したいスライドを指定してください。
1. git addしてgit commit、git pushすればgithub.ioに反映されるはずです
   (注: github.ioの反映には少し時間がかかる場合があります)。
   ご確認ください


## 階層構造

- docs/   以下に置くと github.io で公開される想定


## 参考文献

[remark.js](https://github.com/gnab/remark)

[qiita.com/opengl-8080/items/d44aec7c6c643996916b](https://qiita.com/opengl-8080/items/d44aec7c6c643996916b)

[qiita.com/natsumo/items/717e40de2c43824624b6](https://qiita.com/natsumo/items/717e40de2c43824624b6)


## 謝辞

上の qiita の記事のオーナーさん、ありがとうございます。私は、これらを参考にして、fork するだけで使えるテンプレートになるよう再構成しました(しただけです)。
