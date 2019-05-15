require_relative './generic_pdf'

class ExamAppointmentPdf < GenericPdf
  def initialize(exam_appointment)
    super()

    @exam_appointment = exam_appointment
    build
  end
  
  def render 
    @pdf.render
  end

  private

  def build
    data = [
      ["Paciente", @exam_appointment.pacient.personal_datum.full_name],
      ["Médico Requisitante", @exam_appointment.doctor.personal_datum.full_name],
      ["Tipo de Exame", @exam_appointment.exam_type.exam_type_name],
      ['Data do Agendamento', @exam_appointment.scheduled_to.strftime("%d/%m/%Y às %H:%M")]
    ]

    @pdf.text "Comprovante de Agendamento de Exame", size: 16, style: :bold, align: :center
    @pdf.move_down 25
    @pdf.table data, position: :center
  end
end