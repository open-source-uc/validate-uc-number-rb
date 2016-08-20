# Provides AR validations for UC Student IDs.
class UcStudentIdValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value.is_a?(String) && value.valid_uc_id?
      record.errors[attribute] << options[:message] || 'is not a valid uc id'
    end
  end
end
