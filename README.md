

# 概要<br>
# アプリ名<br>
日本の論点<br>
# アプリケーション概要<br>
書籍「文藝春秋オピニオン 論点100」のアプリケーションを作成。<br>
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
WebブラウザGoogle Chromeの最新版を利用してアクセス。<br>
ただしデプロイ等で接続できないタイミングもある。その際は少し時間をおいてから接続。<br>
接続先およびログイン情報については、上記の通り。<br>
同時に複数の方がログインしている場合に、ログインできない可能性がある。<br>
管理者用アカウントでログイン→トップページから投稿するを押す→記事情報入力→記事情報を送信する。<br>
確認後、ログアウト処理。<br>

# 制作背景(意図)<br>

書籍「文藝春秋オピニオン 論点100」読者のメリット最大化を考え制作。現状本にはいくつかデメリットが存在している。そのデメリットをアプリケーションで改善するため制作した。※書籍の内容について。日本が直面する100の課題を各界の専門家が論じる。<br>

# 書籍「文藝春秋オピニオン 論点100」のデメリットについて<br>
・各専門家の意見について他者の意見を見ることができない。<br>
・気になった専門家について詳しく知ることができない。<br>
(普段どのような発信をしているのか？など）<br>
・過去の作品が読めない。<br>
(1年に1冊ずつ出版。2013年~2020年)<br>
・文字が小さいので読みずらい。<br>
・難しい用語の説明がない。<br>

# アプリケーションの目指す目標<br>
３者のメリットを最大化<br>
①出版社の利益<br>
本の売り上げをあげる。記事に課金制度を導入し収益化。<br>
②読者の利益<br>
サイトから他者のコメントを見ることができる。著者のSNSにとびフォローすることができる。<br>
③著者の利益<br>
SNSフォロワーが増え著者のファンが増える。<br>


# 解決済みのアプリケーションの課題と解決策<br>
## 課題<br>
①各専門家の意見について他者の意見を知ることができない。<br>
②気になった専門家について詳しく知ることができない。<br>
(普段どのような発信をしているのか？など）<br>

## 解決策<br>
①本のQRコードを読み込むとサイトが閲覧でき、コメントを書き込むことができる。<br>
②著者の名前をクリックすると経歴とSNSのリンクが貼り付けてある。<br>
DEMO　読者・アプリケーション利用までの流れ<br>
①読者・他者の意見が気になる<br>
![画像名](https://github.com/risanomura110/news/app/assets/images/1.png)

②本に記載されたQRコードを読み込む<br>

![画像名](https://github.com/risanomura110/news/app/assets/images/2.png)




③気になる記事ページサイトを見る<br>
※スマートフォン表示<br>



※pc表示<br>

④コメントを読む、書き込む<br>
※スマートフォン表示<br>


※pc表示<br>




# 使用技術(開発環境)<br>
開発環境<br>
Ruby/Ruby on Rails/MySQL/Github/AWS/Visual Studio Code/Javascript<br>
開発期間と平均作業時間<br>
開発期間：9/17~9/30 (14日間)<br>
1日あたりの平均作業時間：5<br>
合計：70時間程度<br>

# 課題や今後実装したい機能<br>
## アプリケーションの課題<br>
・難しい用語の説明がない。<br>
## 今後実装したい機能<br>
・レスポンシブWEBデザインに変更する。<br>
・難解な用語をクリックすると注釈が出る。<br>
・アイコンを設定する。<br>
・PV数のランキングが下に表示される（歴代・24時間以内）<br>


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
