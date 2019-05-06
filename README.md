# technotes: 技術的なブログ


## 使い方 (業務フロー)

1. drafts/ に準備稿(書きかけの記事)を markdown で記事を書いてください
    1. 草稿、推敲の段階では**テーマ名.md**などとします
    
```
drafts/
      TITLE.md
      .... 

```

1. リリースしてよくなったら、docs/_post/ に git mv してください
    1. リリース時に、ファイル名を**YYYY-MM-DD-テーマ.md**としてください
    

```
% git mv drafts/TITLE.md docs/_post/YYYY-MM-DD-TITLE.md
% git commit
% git push
```

1. github側でjekyllが走るまで少しかかります


## 謝辞

https://github.com/mzyy94/jekyll-kieta-themeをクローンして使ってます。ぐっじょぶ！:+1:

[github.com/mzyy94/jekyll-kieta-theme](https://github.com/mzyy94/jekyll-kieta-theme)
