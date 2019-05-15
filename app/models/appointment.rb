# frozen_string_literal: true
class Appointment < ApplicationRecord
  belongs_to :appointment_type
  belongs_to :doctor
  belongs_to :pacient
  belongs_to :prontuario, required: false

  mount_uploader :receipt, AppointmentReceiptUploader

  acts_as_paranoid
  has_paper_trail

  def pdf_data=(data)
    self.receipt = CarrierStringIO.new(data)
  end
end
