# frozen_string_literal: true

module RGrid

  # Raised when {RGrid::Validator}
  #
  # @api private
  #
  class InvalidGrid < StandardError

    # Returns the default error message unless a message was given
    # when raising.
    #
    # @return [String]
    def message
      'Grid cannot be created as parameters are invalid.'
    end

  end # InvalidGrid

end # RGrid
