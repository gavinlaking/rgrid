# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'rgrid'

require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/hell'

module MiniTest

  class Spec

    # parallelize_me! # uncomment to unleash hell
    # i_suck_and_my_tests_are_order_dependent! # just incase

    class << self

      alias context describe

    end # Eigenclass

  end # Spec

end # MiniTest
