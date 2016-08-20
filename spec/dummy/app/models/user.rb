class User
  include ActiveModel::Model

  attr_accessor :student_id

  validates :student_id, uc_student_id: true
end
