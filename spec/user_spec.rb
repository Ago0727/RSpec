RSpec.describe User do
  describe '#greet' do
    #exampleの実行前に呼ばれる
    # before do
    #   #@を使うよりletを使う
    #   # @params = { name: 'たろう' }
    # end
    #letを使うときはbeforeを使わない
    let(:user) { User.new({ name: 'たろう', age: age }) }
    subject { user.greet }

    #letは遅延評価なので,大元の初期値をまず書いておいて細々したデータをその後に書き出す.
    context '12歳以下の場合' do
      let(:age) { 12 }
      it 'ひらがなで答えること' do
        is_expected.to eq 'ぼくはたろうだよ。'
      end
    end
    context '12歳以上の場合' do
      let(:age) { 15 }
      it '漢字で答えること' do
        is_expected.to eq '僕はたろうです。'
      end
    end
  end
end