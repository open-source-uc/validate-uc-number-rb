# frozen_string_literal: true

class User
  include ActiveModel::Model

  attr_accessor :student_code

  validates :student_code, uc_number: true
end
