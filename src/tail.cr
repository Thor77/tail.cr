module Tail
  def self.tail(target_path : String, delay=1, &block)
    last_line_count = File.read_lines(target_path).size
    loop do
      content = File.read_lines(target_path)
      line_count = content.size
      if line_count > last_line_count
        new_lines = content[last_line_count..-1]
        yield new_lines[0]
      end
      last_line_count = line_count
      sleep delay
    end
  end
end
