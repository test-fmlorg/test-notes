---
layout: post
title: 西暦2019年に50周年のもの
tags:
- Unix
- python
- インターネット
---

UnixとARPANET、そしてMonty Pyhton's Flying Circusが50周年ですね！
ついでにアポロ11号の月面着陸も50周年。

元号とかよりも、こっち、こっち♪


## 歴史

- 1969/07/16 Apollo 11号の打ち上げ
- 1969/07/20 Apollo 11号の月面着陸
- 1969の夏   Ken ThompsonがPDP7でUnixのプロトタイプを作った(1人月)
- 1969/10/05 BBC Monty Pyhton's Flying Circus 放送開始
- 1969/10/29 ARPANETでIMPを使った最初のメッセージが送信された


## FaaSって Unix をウエブ上に再実装したわけじゃないですか

サーバーレスとかマイクロサービスとかFaaSとか(用語の定義は微妙に違う予感はしますが、いずれにせよ)
- (小さい単位の)関数を作成
- 疎結合
- 次々とつなげて処理
- (スケールアウトのためには、こういう設計思想へ向かう)
えっと、それ Unix ですよね？もちろん、パイプではなくREST APIですとか、細かい技術は違いますが、設計思想が Unix です。50年たち、ふたたび Unix へ戻って来たんですね。

![UnixとLambda]({{ site.url }}/assets/figures/aws-lambda.png)
