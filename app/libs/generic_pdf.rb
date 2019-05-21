require 'prawn'

class GenericPdf
  PDF_OPTIONS = {
    page_size:   "A5",
    page_layout: :portrait,
    margin:      [20, 20]
  }

  def initialize
    @pdf = Prawn::Document.new(PDF_OPTIONS)
  end
end