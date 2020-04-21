# frozen_string_literal: true

require 'variable'

require 'devtools/spec_helper'

module VariableSpec
  def verify_events
    expectations = raw_expectations
      .map { |expectation| XSpec::MessageExpectation.parse(**expectation) }

    XSpec::ExpectationVerifier.verify(self, expectations) do
      yield
    end
  end

  def undefined
    double('undefined')
  end
end # XSpecHelper

RSpec.configure do |config|
  config.include(VariableSpec)
end
