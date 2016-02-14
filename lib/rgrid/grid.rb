# frozen_string_literal: true

module RGrid

  # The grid data structure class.
  #
  # @api public
  #
  class Grid

    # @param x [Fixnum]
    # @param xn [Fixnum]
    # @param y [Fixnum]
    # @param yn [Fixnum]
    # @return [RGrid::Grid]
    def initialize(x: 0, xn: 0, y: 0, yn: 0)
      @x  = x
      @xn = xn
      @y  = y
      @yn = yn

      validate!
    end

    # @return [Hash<Symbol => Fixnum>]
    def attributes
      {
        x:  @x,
        xn: @xn,
        y:  @y,
        yn: @yn,
      }
    end

    private

    # @raise [RGrid::InvalidGrid] When the atttributes are not sane.
    # @return [RGrid::Grid]
    def validate!
      raise RGrid::InvalidGrid unless RGrid::Validator.valid?(attributes)

      self
    end

  end # Grid

end # RGrid
