RSpec.describe "マッチャ/期待値の練習" do
  context "to,not_to,to_not" do
    it "3*3は9である" do
      expect(3 * 3).to eq 9
    end
    #not_toのほうがよく使われている.
    it "3*3は6ではない" do
      expect(3 * 3).not_to eq 6
    end
  end

  #true,falseを返すときのマッチャ
  #こっちはnilもちゃんと偽として扱ってくれる
  context "be_***マッチャ" do
    it "次の配列はからである" do
      expect([]).to be_empty
    end

    it "次の判定は真になる" do
      expect(1).to be_truthy
    end

    it "次の判定は偽になる" do
      expect(nil).to be_falsey
    end

    # eq true,eq falseはtrueかfalseかを厳密に判断するため数字,nilはtrue,falseにならない
    # it "次の判定はtrueになる" do
    #   expect(1).to eq true
    # end
    #
    # it "次の判定はfalseになる" do
    #   expect(nil).to eq false
    # end
  end
end