RSpec.describe User do
  describe '#greet' do
    let(:user) { User.new(name: 'ago', age: age)}
    subject { user.greet }
    #重複した結果を求めたい場合はshared_examplesで結果のシェアができる
    shared_examples '子供の挨拶' do
      it { is_expected.to eq 'ぼくはagoだよ。' }
    end
    context '2歳の場合' do
      let(:age) { 2 }
      #呼び出しはit_behaves_like "shared_examplesの名前"
      it_behaves_like "子供の挨拶"
    end
    context '12歳の場合' do
      let(:age) { 12 }
      it_behaves_like "子供の挨拶"
    end

    shared_examples "大人の挨拶" do
      it {is_expected.to eq "僕はagoです。"}
    end
    context '13歳の場合' do
      let(:age) {13}
      it_behaves_like "大人の挨拶"
    end
    context '100歳の場合' do
      let(:age) { 100 }
      it_behaves_like "大人の挨拶"
    end

  end
end