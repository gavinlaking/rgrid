# frozen_string_literal: true

if ENV['SIMPLECOV'].to_i == 1
  require 'simplecov'

  SimpleCov.start do
    command_name 'MiniTest::Spec'
    add_filter '/test/'
  end
end

require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/hell'

module MiniTest

  class Spec

    parallelize_me! # uncomment to unleash hell
    # i_suck_and_my_tests_are_order_dependent! # just incase

    class << self

      alias context describe

    end # Eigenclass

  end # Spec

end # MiniTest

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'rgrid'
