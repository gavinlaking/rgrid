# frozen_string_literal: true

require 'test_helper'

module RGrid

  describe Grid do

    let(:described) { RGrid::Grid }
    let(:instance)  { described.new(x: x, xn: xn, y: y, yn: yn) }
    let(:x)         { 1 }
    let(:xn)        { 5 }
    let(:y)         { 2 }
    let(:yn)        { 4 }

    describe '#initialize' do
      context 'when the grid has invalid parameters' do
        let(:x)         {}
        let(:xn)        {}
        let(:y)         {}
        let(:yn)        {}

        it { proc { instance }.must_raise(RGrid::InvalidGrid) }
      end

      context 'when the grid has valid parameters' do
        it { instance.instance_variable_get('@x').must_equal(x) }
        it { instance.instance_variable_get('@xn').must_equal(xn) }
        it { instance.instance_variable_get('@y').must_equal(y) }
        it { instance.instance_variable_get('@yn').must_equal(yn) }
      end
    end

    describe '#attributes' do
      subject { instance.attributes }

      it { subject.must_be_instance_of(Hash) }
    end

  end # Grid

end # RGrid
