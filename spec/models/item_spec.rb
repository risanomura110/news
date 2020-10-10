require 'rails_helper'
RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
    @item.image = fixture_file_upload('public/images/test_image.jpg')
  end
  describe '記事投稿' do
    context '記事投稿がうまくいくとき' do
      it "全ての項目が入力されているとき" do
        expect(@item).to be_valid
    end
  end
  context '記事投稿がうまくいかないとき' do
    it "nameが空だと登録できない" do
      @item.name = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("著者名を入力してください")
    end
    it "urlが空だと登録できない" do
      @item.url = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Urlを入力してください")
    end
    it "titleが空だと登録できない" do
      @item.title = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("タイトルを入力してください")
    end
    it "genre_idが1だと登録できない" do
      @item.genre_id = "1"
      @item.valid?
      expect(@item.errors.full_messages).to include("Genreは1以外の値にしてください")
    end
    it "textが空だと登録できない" do
      @item.text = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("本文を入力してください")
    end


  end

end
end