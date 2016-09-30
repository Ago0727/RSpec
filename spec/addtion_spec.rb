require "spec_helper"

RSpec.describe "四則演算" do
  describe "足し算" do
    it '1 + 1 は 2になること' do
      expect(1 + 1).to eq 2
    end

    it '2 + 3 は 5になること' do
      expect(2 + 3).to eq 5
    end
  end

  describe "引き算" do
    it '4 - 2 は 2になること' do
      expect(4 - 2).to eq 2
    end
  end
end