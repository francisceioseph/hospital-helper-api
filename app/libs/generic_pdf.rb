require 'prawn'

class GenericPdf
  PDF_OPTIONS = {
    page_size:   "A5",
    page_layout: :portrait,
    left_margin: 20,
    right_margin: 20,
    top_margin: 40,
    bottom_margin: 20
  }

  def initialize
    @pdf = Prawn::Document.new(PDF_OPTIONS)
  end
end