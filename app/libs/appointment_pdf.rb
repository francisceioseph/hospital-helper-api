require_relative './generic_pdf'

class AppointmentPdf < GenericPdf
  def initialize(appointment)
    super()

    @appointment = appointment
    build
  end
  
  def render 
    @pdf.render
  end

  private

  def build
    data = [
      ["Paciente", @appointment.pacient.personal_datum.full_name],
      ["Médico", @appointment.doctor.personal_datum.full_name],
      ['Data do Agendamento', @appointment.scheduled_to.in_time_zone('Buenos Aires').strftime("%d/%m/%Y às %H:%M")],
      ['Hipótese Diagnóstica', @appointment.diagnostic_hypotesis]
    ]

    @pdf.text "PREFEITURA MUNICIPAL DE AQUIRAZ", size: 12, style: :bold, align: :right
    @pdf.text "SECRETARIA MUNICIPAL DE SAÚDE", size: 12, style: :normal, align: :right
    @pdf.text "HOSPITAL GERAL MANOEL ASSUNÇÃO PIRES", size: 12, style: :normal, align: :right
    @pdf.move_down 40

    @pdf.text "COMPROVANTE DE AGENDAMENTO DE CONSULTA MÉDICA", size: 14, style: :bold, align: :center, inline_format: true
    @pdf.move_down 25
    @pdf.table data, position: :center
  end
end