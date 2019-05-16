# frozen_string_literal: true

class SurgeryAppointment < ApplicationRecord
  acts_as_paranoid
  has_paper_trail

  belongs_to :prontuario, required: false
  belongs_to :surgery_type
  belongs_to :doctor
  belongs_to :pacient

  mount_uploader :receipt, ReceiptUploader

  before_save :generate_pdf, on: [ :create, :update ]

  def generate_pdf
    document = SurgeryAppointmentPdf.new self
    self.receipt = CarrierStringIO.new(document.render)
  end
end
