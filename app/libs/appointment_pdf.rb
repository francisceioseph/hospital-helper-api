require_relative './generic_pdf'

class AppointmentPdf < GenericPdf
  def initialize(appointment)
    super()

    @appointment = appointment
    build
  end

  def build
    data = [
      ["Paciente", @appointment.pacient.personal_datum.full_name],
      ["Médico", @appointment.doctor.personal_datum.full_name],
      ['Data do Agendamento', @appointment.scheduled_to.strftime("%d/%m/%Y às %H:%M")]
    ]

    @pdf.text "Comprovante de Agendamento de Consulta Médica", size: 16, style: :bold, align: :center
    @pdf.move_down 25
    @pdf.table data, position: :center
  end
  
  def save
    @pdf.render_file "public/appointment_#{@appointment.id}.pdf"
  end
end