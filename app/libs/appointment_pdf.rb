module AppointmentPdf
  PDF_OPTIONS = {
    :page_size   => "A5",
    :page_layout => :portrait,
    :margin      => [40, 75]
  }
  
  class << self
    require 'prawn';

    def make_pdf(appointment)
      Prawn::Document.new(PDF_OPTIONS) do |pdf|
        data = [
          ["Paciente", appointment.pacient.personal_datum.full_name],
          ["Médico", appointment.doctor.personal_datum.full_name],
          ['Data do Agendamento', appointment.scheduled_to.strftime("%d/%m/%Y às %H:%M")]
        ]

        pdf.text "Comprovante de Agendamento de Consulta Médica", size: 18, style: :bold, align: :center
        pdf.move_down 25

        pdf.table(data)

        pdf.render_file("public/appointment_#{appointment.id}.pdf")
      end
    end
  end
end