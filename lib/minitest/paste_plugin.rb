require "minitest/paste_reporter"

module Minitest
  def self.plugin_paste_options(opts, options)
    opts.on "--paste", "Upload failures to (a service like) Pastebin.com" do
      options[:paste] = true
    end
  end

  def self.plugin_paste_init(options)
    self.reporter << PasteReporter.new(options) if options[:paste]
  end
end
