# frozen_string_literal: true

class Pacient < Profile
  has_one :family_datum
  has_one :demographic
  has_one :prontuario
  has_one :next_of_kin

  has_many :appointments, inverse_of: :pacient
  has_many :exams, class_name: 'ExamAppointment', inverse_of: :pacient

  accepts_nested_attributes_for :family_datum, allow_destroy: true
  accepts_nested_attributes_for :demographic, allow_destroy: true
  accepts_nested_attributes_for :next_of_kin, allow_destroy: true
end
