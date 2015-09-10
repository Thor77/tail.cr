module Tail
  def self.tail target_path: String, delay=1: Number, &block
    last_line_count = File.read_lines(target_path).length
    loop do
      content = File.read_lines(target_path)
      line_count = content.length
      if line_count > last_line_count
        new_lines = content[last_line_count..-1]
        yield new_lines
      end
      last_line_count = line_count
      sleep delay
    end
  end
end
