require_relative './generic_pdf'

class SurgeryAppointmentPdf < GenericPdf
  def initialize(surgery_appointment)
    super()

    @surgery_appointment = surgery_appointment
    build
  end
  
  def render 
    @pdf.render
  end

  private

  def build
    data = [
      ["Paciente", @surgery_appointment.pacient.personal_datum.full_name],
      ["Cirurgião", @surgery_appointment.doctor.personal_datum.full_name],
      ["Tipo de Cirurgia", @surgery_appointment.surgery_type.surgery_type_name],
      ['Data do Agendamento', @surgery_appointment.scheduled_to.strftime("%d/%m/%Y às %H:%M")]
    ]

    @pdf.text "Comprovante de Agendamento de Cirurgia", size: 16, style: :bold, align: :center
    @pdf.move_down 25
    @pdf.table data, position: :center
  end
end