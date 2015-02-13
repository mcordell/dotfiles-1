class Output
  class << self
    def linebreak
      puts "------------------------------------"
    end

    def with_linebreak(text)
      puts text
      Output.linebreak
    end

    def system_with_linebreak(text)
      system text
      Output.linebreak
    end
  end
end
