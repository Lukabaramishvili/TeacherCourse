class Student < ApplicationRecord
  has_many :enrollments
  has_many :courses, through: :enrollments
  has_many :teachers, through: :courses
end
