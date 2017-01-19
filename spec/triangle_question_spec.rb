RSpec.describe "三角形の条件" do
  describe "三角形にならない条件" do
    describe "1つの辺の長さが負のとき" do

      let(:no_triangle) { Triangle.new(1,-1,2) }
      it "三角形にはならない" do
        expect(no_triangle.triangle).to eq '三角形ではありません'
      end
    end

    describe "1つの長さが0のとき" do
      let(:no_triangle) { Triangle.new(0, 2, 3)  }
      it "三角形にはならない" do
        expect(no_triangle.triangle).to eq '三角形ではありません'
      end
    end

    describe "すべての辺の長さが0のとき" do
      let(:no_triangle) {Triangle.new(0, 0, 0) }
      it "三角形にはならない" do
        expect(no_triangle.triangle).to eq '三角形ではありません'
      end
    end

    describe "辺が文字列のとき" do
      let(:no_triangle) { Triangle.new("test", 0, 0) }
      it "三角形ではない" do
        expect(no_triangle.triangle).to eq '三角形ではありません'
      end
    end

    describe "辺がnilのとき" do
      let(:no_triangle) { Triangle.new(nil, 0, 0) }
      it "三角形ではない" do
        expect(no_triangle.triangle).to eq '三角形ではありません'
      end
    end

    describe "1つの辺の長さが2つの長さの合計よりも短いとき" do
      let(:no_triangle) { Triangle.new(10, 1, 2) }
      it "問題の条件に当てはまらない" do
        expect(no_triangle.triangle).to eq "三角形ではありません"
      end
    end

    describe "辺が小数のとき" do
      let(:no_triangle) { Triangle.new(3, 3.3, 5) }
      it "問題の条件に当てはまらない" do
        expect(no_triangle.triangle).to eq "条件に当てはまりません"
      end
    end
  end

  describe "三角形の条件" do

    describe "2つの辺の長さが1つの辺の長さよりも長いとき" do
      let(:triangle) { Triangle.new(5, 6, 7) }
      it "三角形である" do
        expect(triangle.triangle).to eq "不等辺三角形"
      end

      describe "すべての辺の長さが違うとき" do
        let(:triangle) { Triangle.new(5, 6, 7) }
        it "三角形である" do
          expect(triangle.triangle).to eq "不等辺三角形"
        end
      end
    end

    describe "二等辺三角形の条件" do
      let(:iso_sceles_triangle) { Triangle.new(5, 5, 7) }
      describe "2つの辺が等しいとき" do
        it "二等辺三角形である" do
          expect(iso_sceles_triangle.triangle).to eq "二等辺三角形"
        end
      end
    end

    describe "正三角形の条件" do
      let(:equilateral_triangle) { Triangle.new(5, 5, 5) }
      describe "3つの辺が等しいとき" do
        it "正三角形である" do
          expect(equilateral_triangle.triangle).to eq "正三角形"
        end
      end
    end
  end
end