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

    @pdf.text "PREFEITURA MUNICIPAL DE AQUIRAZ", size: 12, style: :bold, align: :right
    @pdf.text "SECRETARIA MUNICIPAL DE SAÚDE", size: 12, style: :normal, align: :right
    @pdf.text "HOSPITAL GERAL MANOEL ASSUNÇÃO PIRES", size: 12, style: :normal, align: :right
    @pdf.move_down 40

    @pdf.text "COMPROVANTE DE AGENDAMENTO DE CIRURGIA", size: 14, style: :bold, align: :center
    @pdf.move_down 25
    @pdf.table data, position: :center
  end
end