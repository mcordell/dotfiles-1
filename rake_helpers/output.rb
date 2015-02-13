class Output
  class << self
    def linebreak
      puts "------------------------------------"
    end

    def with_linebreak(text)
      puts text
      Output.linebreak
    end
  end
end
