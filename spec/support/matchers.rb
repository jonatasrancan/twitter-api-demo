module Matchers
  extend RSpec::Matchers::DSL

  matcher :have_notice do |notice|
    match do |page|
      expect(page).to have_css("#flash_notice", text: notice)
    end

    failure_message do |page|
      "expected #{page.text.inspect} to have notice #{notice.inspect}"
    end

    failure_message_when_negated do |page|
      "expected #{page.text.inspect} not to have notice #{notice.inspect}"
    end
  end
end

RSpec.configure do |config|
  config.include Matchers
end
