require "clipboard"
require "dpaste/api"

module Minitest
  class PasteReporter < StatisticsReporter

    def initialize io = $stdout, options = {}
      super

      @failures = []
    end

    def record result
      super

      if result.failures.size > 0
        result.failures.each {|f| @failures << f.message }
      end
    end

    def report
      delimiter = "\n\n" + '-' * 80 + "\n\n"
      link = DPaste::API.save(@failures.join(delimiter))
      Clipboard.copy(link)
    end
  end
end
