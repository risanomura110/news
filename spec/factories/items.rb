FactoryBot.define do
  factory :item do
    id { '1' }
    name { '山田太郎' }
    url {'https://www.youtube.com/'}
    title {'タイトル'}
    genre_id {'2'}
    text {'テキスト'}
  end
end
