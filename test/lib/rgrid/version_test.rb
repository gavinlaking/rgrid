# frozen_string_literal: true

require 'test_helper'

module RGrid

  describe VERSION do

    let(:described) { RGrid::VERSION }

    it { described.must_be_instance_of(String) }

  end # VERSION

end # RGrid
