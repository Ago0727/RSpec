RSpec.describe "モックの練習" do
  context "twitterの場合" do
    let(:client) { WeatherBot.new }
    #実際にツイートしてしまい,大変なことになる.
    it "エラーなく予報をツイートすること" do
      expect { client.tweet_forecast }.not_to raise_error
    end
  end
  context "twitterの場合(正しい)" do
    #空のモックオブジェクトを作成する(名前はなんでも良い)
    let(:client_mock) {double("Twitter client")}
    it "エラーなく予報をツィートすること" do
      #モックオブジェクトで呼ばれるであろうメソッドを予め設定しておく
      allow(client_mock).to receive(:update)
      #正規のインスタンスを生成
      weather_bot = WeatherBot.new
      #実際のtwitter_clientとモックのupdateを組み合わせてtwitter_client.updateを実現してる
      allow(weather_bot).to receive(:twitter_client).and_return(client_mock)
      expect {weather_bot.tweet_forecast}.not_to raise_error
    end
  end
end