

# 概要<br>
# アプリ名<br>
日本の論点<br>
# アプリケーション概要<br>
書籍「文藝春秋オピニオン 論点100」のアプリケーションを作成しました。<br>
・管理者ができること<br>
記事投稿、記事編集、記事削除、著者情報投稿、著者情報編集、著者情報削除<br>
・すべてのユーザーができること<br>
記事閲覧、コメント投稿、ログイン登録、snsシェア、ワード検索(記事タイトルを参照)<br>
著者情報閲覧、関連記事閲覧<br>
・その他表示について<br>
記事のジャンルごとに表示<br>

# 接続先情報<br>
https://news29178.herokuapp.com/<br>
   ID/Pass<br>
　　ID: admin<br>
　　Pass: 2222<br>
管理者用アカウント<br>
　　メールアドレス: risa123@gmail.com<br>
　　パスワード: risa123<br>

# 動作確認方法<br>
WebブラウザGoogle Chromeの最新版を利用してアクセスします。<br>
ただしデプロイ等で接続できないタイミングもあります。その際は少し時間をおいてから接続してください。<br>
接続先およびログイン情報については、上記の通りです。<br>
同時に複数の方がログインしている場合に、ログインできない可能性があります。<br>
管理者用アカウントでログイン→トップページから投稿するを押します→記事情報入力→記事情報を送信します。<br>
確認後、ログアウト処理。<br>

# 制作背景(意図)<br>

書籍「文藝春秋オピニオン 論点100」読者のメリット最大化を考え制作。現状本にはいくつかデメリットが存在しています。そのデメリットをアプリケーションで改善するため制作しました。※書籍の内容について。日本が直面する100の課題を各界の専門家が論じています。<br>

# 書籍「文藝春秋オピニオン 論点100」のデメリットについて<br>
・各専門家の意見について他者の意見を見ることができません。<br>
・気になった専門家について詳しく知ることができません。<br>
(普段どのような発信をしているのか？など）<br>
・過去の作品が読めません。<br>
(1年に1冊ずつ出版。2013年~2020年)<br>
・文字が小さいので読みずらいです。<br>
・難しい用語の説明がないです。<br>

# アプリケーションの目指す目標<br>
３者のメリットを最大化<br>
①出版社の利益<br>
本の売り上げをあげます。記事に課金制度を導入し収益化。<br>
②読者の利益<br>
本から得られない情報を得ることができます。<br>
（サイトから他者のコメントを見ることができます。著者のSNSにとびフォローすることができます。）<br>
③著者の利益<br>
SNSフォロワーが増加し、著者のファンが増えます。<br>


# 解決済みのアプリケーションの課題と解決策<br>
## 課題<br>
①各専門家の意見について他者の意見を知ることができません。<br>
②気になった専門家について詳しく知ることができません。<br>
(普段どのような発信をしているのか？など）<br>

## 解決策<br>
①本のQRコードを読み込むとサイトが閲覧でき、コメントを書き込むことができます。<br>
②著者の名前をクリックすると経歴とSNSのリンクが貼り付けてあります。<br>

# DEMO　読者・アプリケーション利用までの流れ<br>
①読者・他者の意見が気になります<br>
![画像名](https://github.com/risanomura110/news/blob/master/1.jpeg)

②本に記載されたQRコードを読み込みます<br>

![画像名](https://github.com/risanomura110/news/blob/master/2.png)

③気になる記事ページサイトを見ます<br>
※スマートフォン表示<br>
![画像名](https://github.com/risanomura110/news/blob/master/3.png)


④コメントを読み、書き込みます<br>
※スマートフォン表示<br>
![画像名](https://github.com/risanomura110/news/blob/master/4.png)

# 使用技術(開発環境)<br>
開発環境<br>
Ruby/Ruby on Rails/MySQL/Github/AWS/Visual Studio Code/Javascript<br>
開発期間と平均作業時間<br>
開発期間：9/17~9/30 (14日間)<br>
1日あたりの平均作業時間：5<br>
合計：70時間程度<br>

# 課題や今後実装したい機能<br>

## アプリケーションの課題<br>

以下のシートをご覧ください。アプリケーションのペルソナが持つ課題を洗い出し、そして解決策となる追加実装の仕様を記述しました。<br>

https://docs.google.com/spreadsheets/d/1ZtW3srkPp1sekqItQXLf4KZRQPhFlkrCdPMScNsjVwU/edit#gid=282075926<br>

## 今後実装したい機能<br>
・難解な用語をクリックすると注釈が出るようにします。<br>
・PV数のランキングが下に表示されるようにします。（歴代・24時間以内）<br>
・記事購入機能を導入します。<br>


## items 
| Column    | Type      | Options                        |
| ------    | ------    | ------------------------------ |
| name      | string    | null: false                    |
| url       | string    | null: false                    |
| title     | string    | null: false                    |
| gere_id   | integer   | null: false                    |
| text      | text      | null: false                    |

### Association
- belongs_to_active_hash :genre
- has_one_attached :image
- has_many :comments


## commentsテーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| text   | string     | null: false                    |
| item   | references | null: false, foreign_key: true |

### Association

- belongs_to :item

## users テーブル

| Column      | Type    | Options     |
| ------------| ------  | ----------- |
| email       | string  | null: false |
| password    | string  | null: false |

## writes テーブル

| Column      | Type    | Options     |
| ------------| ------  | ----------- |
| name        | string  | null: false |
| text        | text    | null: false |
| twitter     | string  | null: false |
| blog        | string  | null: false |

### Association

- has_one_attached :image
