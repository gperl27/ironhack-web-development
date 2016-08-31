class ColorCounter
  def self.count_colors(asking_color, array)
    count = 0
    array.each {|color|
      if color == asking_color
        count += 1
      end
    }
    count
  end
end