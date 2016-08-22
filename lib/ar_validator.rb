# Provides AR validations for UC Student Numbers.
class UcNumberValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value.is_a?(String) && value.valid_uc_number?
      record.errors[attribute] << options[:message] || 'is not a valid uc number'
    end
  end
end
