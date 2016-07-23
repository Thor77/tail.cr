module Tail
  def self.tail(target_path : String, delay : Number = 1, &block)
    last_line_count = File.read_lines(target_path).size
    loop do
      content = File.read_lines(target_path)
      line_count = content.size
      if line_count > last_line_count
        new_lines = content[last_line_count..-1][0]
        yield new_lines
      end
      last_line_count = line_count
      sleep delay
    end
  end
end
