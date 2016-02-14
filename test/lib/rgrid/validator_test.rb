# frozen_string_literal: true

require 'test_helper'

module RGrid

  describe Validator do

    let(:described) { RGrid::Validator }
    let(:instance)  { described.new(x: x, xn: xn, y: y, yn: yn) }
    let(:x)         { 1 }
    let(:xn)        { 5 }
    let(:y)         { 2 }
    let(:yn)        { 4 }

    describe '.valid?' do
      subject { described.valid?(x: x, xn: xn, y: y, yn: yn) }

      context 'when y and yn are given' do
        context 'when y > yn' do
          let(:y) { 6 }

          it { proc { subject }.must_raise(RGrid::InvalidGrid) }
        end

        context 'when y <= yn' do
          it { subject.must_equal(true) }
        end
      end

      context 'when y and yn are not given' do
        let(:y)  {}
        let(:yn) {}

        it { proc { subject }.must_raise(RGrid::InvalidGrid) }
      end

      context 'when x and xn are given' do
        context 'when x > xn' do
          let(:x) { 7 }

          it { proc { subject }.must_raise(RGrid::InvalidGrid) }
        end

        context 'when x <= xn' do
          it { subject.must_equal(true) }
        end
      end

      context 'when x and xn are not given' do
        let(:x)  {}
        let(:xn) {}

        it { proc { subject }.must_raise(RGrid::InvalidGrid) }
      end

      context 'when only x and y are given' do
        let(:xn) {}
        let(:yn) {}

        context 'when x is valid' do
          it { subject.must_equal(true) }
        end

        context 'when y is valid' do
          it { subject.must_equal(true) }
        end

        context 'when x is invalid' do
          let(:x) { -1 }

          it { proc { subject }.must_raise(RGrid::InvalidGrid) }
        end

        context 'when y is invalid' do
          let(:y) { -2 }

          it { proc { subject }.must_raise(RGrid::InvalidGrid) }
        end
      end
    end

    describe '#initialize' do
      it { instance.instance_variable_get('@x').must_equal(x) }
      it { instance.instance_variable_get('@xn').must_equal(xn) }
      it { instance.instance_variable_get('@y').must_equal(y) }
      it { instance.instance_variable_get('@yn').must_equal(yn) }
    end

    describe '#valid?' do
      it { instance.must_respond_to(:valid?) }
    end

  end # Grid

end # RGrid
