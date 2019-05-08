class Teacher < ApplicationRecord
  has_many :courses
  has_many :enrollments, through: :courses
  has_many :students, through: :courses

  has_secure_password

  # attr_accessible :name, :password, :password_confirmation

  validates :name, presence: true, uniqueness: true
end
