# frozen_string_literal: true

module RGrid

  # Validates the RGrid::Grid parameters to ensure sanity.
  #
  # @api private
  #
  class Validator

    # @param (see #initialize)
    # @return (see #valid?)
    def self.valid?(x: nil, xn: nil, y: nil, yn: nil)
      new(x: x, xn: xn, y: y, yn: yn).valid?
    end

    # @param x [Fixnum]
    # @param xn [Fixnum]
    # @param y [Fixnum]
    # @param yn [Fixnum]
    # @return [RGrid::Validator]
    def initialize(x: nil, xn: nil, y: nil, yn: nil)
      @x  = x
      @xn = xn
      @y  = y
      @yn = yn
    end

    # @return [Boolean]
    def valid?
      return true if valid_height? && valid_width?

      raise RGrid::InvalidGrid,
            'Grid cannot be created as parameters are invalid.'
    end

    protected

    # @!attribute [r] x
    # @return [Fixnum]
    attr_reader :x
    alias x? x

    # @!attribute [r] xn
    # @return [Fixnum]
    attr_reader :xn
    alias xn? xn

    # @!attribute [r] y
    # @return [Fixnum]
    attr_reader :y
    alias y? y

    # @!attribute [r] yn
    # @return [Fixnum]
    attr_reader :yn
    alias yn? yn

    private

    # @return [Boolean]
    def columns?
      x? && !xn?
    end

    # @return [Boolean]
    def height?
      y? && yn?
    end

    # @return [Boolean]
    def rows?
      y? && !yn?
    end

    # @return [Boolean]
    def valid_height?
      if height?
        yn >= y

      elsif rows?
        y > 0

      else
        false

      end
    end

    # @return [Boolean]
    def valid_width?
      if width?
        xn >= x

      elsif columns?
        x > 0

      else
        false

      end
    end

    # @return [Boolean]
    def width?
      x? && xn?
    end

  end # Validator

end # RGrid
