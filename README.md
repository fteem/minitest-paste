# Minitest::Paste

Minitest::Paste is a minitest plugin/extension which takes all of your test
failures, compiles and uploads them to dpaste.com. Additionally, it copies the
dpaste.com link to your clipboard, so you can share the test issues you are
experiencing with your colleagues.

**Why Dpaste.com not Pastebin or the others?**

Because dpaste.com has a very simple and open API, which does not need any API
keys and/or authentication. Honestly, I just did not want to bother with all
that stuff.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'minitest-paste'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install minitest-paste

## Usage

In your `test_helper.rb`, after the line that requires Minitest, add this:

```ruby
require "minitest/paste"
```

Then, to use the plugin when running your tests, add the `--paste` switch. After,
the tests are run, you will have the dpaste.com link in your clipboard, ready to
share.

## Development

Nothing special, just clone the repo and off you go.

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/fteem/minitest-paste.

