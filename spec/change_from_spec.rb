RSpec.describe "change_from/to/byの練習" do
  let(:x) { [1,2,3] }
  context "change fromの場合" do
    it "配列のサイズは3である" do
      expect(x.size).to eq 3
    end

    it "配列のサイズは減少する" do
      x.pop
      expect(x.size).to eq 2
    end

    it "配列のサイズは減少する(change_from版)" do
      expect{ x.pop }.to change { x.size }.from(3).to(2)
    end

    it "配列のサイズは減少する(数はわからない)" do
      expect { x.pop }.to change { x.size }.by(-1)
    end

    it "配列のサイズが増加する" do
      expect { x.push(100) }.to change { x.size }.by(1)
    end
  end

  context "includeの場合" do
    it "配列に3が含まれている" do
      expect(x).to include 3
    end
  end
end