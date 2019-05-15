# frozen_string_literal: true
class Appointment < ApplicationRecord
  acts_as_paranoid
  has_paper_trail

  belongs_to :appointment_type
  belongs_to :doctor
  belongs_to :pacient
  belongs_to :prontuario, required: false

  mount_uploader :receipt, AppointmentReceiptUploader

  before_save :generate_pdf, on: [ :create, :update ]

  def generate_pdf
    document = AppointmentPdf.new self
    self.receipt = CarrierStringIO.new(document.render)
  end
end
