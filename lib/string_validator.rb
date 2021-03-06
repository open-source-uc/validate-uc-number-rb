# frozen_string_literal: true

# Extends the String class in order to validate UC Student Numbers.
class String
  # Validation method.
  #
  # Example:
  #   >> '11533513'.valid_uc_number?
  #   => false
  def valid_uc_number?
    last_num = self[-1, 1].upcase
    rest_num = reverse[1..-1].split('').map(&:to_i)

    sum = 0
    rest_num.each_with_index { |digit, index| sum += digit * ((index + 2) % 9) }

    verification_digit = (11 - sum % 11 != 10 ? (11 - sum % 11).to_s : 'J')
    verification_digit = verification_digit == '11' ? '0' : verification_digit
    last_num == verification_digit
  end
end
