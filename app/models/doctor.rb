# frozen_string_literal: true

class Doctor < Profile
  has_many :appointments
  has_many :exams, class_name: 'ExamAppointment'

  has_many :doctor_specialties
  has_many :specialties, through: :doctor_specialties

  accepts_nested_attributes_for :doctor_specialties
end
