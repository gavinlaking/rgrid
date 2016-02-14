# frozen_string_literal: true

require 'test_helper'

module RGrid

  describe InvalidGrid do

    let(:described) { RGrid::InvalidGrid }
    let(:instance)  { described.new }

    describe '#message' do
      subject { instance.message }

      it { subject.must_be_instance_of(String) }
    end

  end # InvalidGrid

end # RGrid
