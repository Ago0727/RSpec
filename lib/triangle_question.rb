class Triangle
  def initialize(line1=0, line2=0, line3=0)
    @line1 = line1
    @line2 = line2
    @line3 = line3
  end

  def triangle
    return "三角形ではありません" if valid_edge?
    return "条件に当てはまりません" if decimal_triangle?
    return "正三角形" if equilateral_triangle?
    return "二等辺三角形" if isosceles_triangle?
    return "不等辺三角形"
  end

  private
  def valid_edge?
    if ( @line1.is_a?(String) || @line2.is_a?(String) || @line3.is_a?(String) )                  ||
        ( @line1.nil? || @line2.nil? || @line3.nil? )                                            ||
        ( @line1 <= 0 || @line2 <= 0 || @line3 <= 0 )                                            ||
        ( @line1 + @line2 < @line3) || (@line2 + @line3 < @line1 ) || (@line1 + @line3 < @line3 )
      true
    end
  end

  # 不等辺三角形のとき
  def scalene_triangle?
    if ( @line1 + @line2 > @line3 ) || ( @line2 + @line3 > @line1 ) || ( @line1 + @line3 > @line2 )
      true
    end
  end

  def decimal_triangle?
    ( @line1.is_a?(Float) || @line2.is_a?(Float) || @line3.is_a?(Float) )
  end

  def equilateral_triangle?
    ( @line1 == @line2 ) && ( @line2 == @line3 )
  end

  def isosceles_triangle?
    ( @line1 == @line2 || @line2 == @line3 || @line1 == @line3 )
  end
end