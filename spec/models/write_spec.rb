require 'rails_helper'
RSpec.describe Write, type: :model do
  before do
    @write = FactoryBot.build(:write)
    @write.image = fixture_file_upload('public/images/test_image.jpg')
  end

  describe '著者情報投稿' do
    context '著者情報投稿がうまくいくとき' do
      it '全ての項目が入力されているとき' do
        expect(@write).to be_valid
      end
    end
  end
  context '著者情報投稿失敗' do
    it 'nameが空のとき' do
      @write.name = ''
      @write.valid?
      expect(@write.errors.full_messages).to include('著者名を入力してください')
    end
    it 'textが空のとき' do
      @write.text = ''
      @write.valid?
      expect(@write.errors.full_messages).to include('経歴を入力してください')
    end
    it 'twitterが空のとき' do
      @write.twitter = ''
      @write.valid?
      expect(@write.errors.full_messages).to include('ツイッターurlを入力してください')
    end
    it 'blogが空のとき' do
      @write.blog = ''
      @write.valid?
      expect(@write.errors.full_messages).to include('ブログurlを入力してください')
    end
  end
end
