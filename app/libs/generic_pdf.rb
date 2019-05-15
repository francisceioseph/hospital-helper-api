require 'prawn'

class GenericPdf
  PDF_OPTIONS = {
    page_size:   "A5",
    page_layout: :portrait,
    margin:      [20, 20]
  }

  def initialize
    @pdf = Prawn::Document.new(PDF_OPTIONS)
    set_fonts
  end

  def set_fonts
    @pdf.font_families.update("SegoeUI" => {
      normal: Rails.root.join("app/assets/fonts/SegoeUI.ttf"),
      italic: Rails.root.join("app/assets/fonts/SegoeUI-italic.ttf"),
      bold: Rails.root.join("app/assets/fonts/SegoeUI-bold.ttf"),
      bold_italic: Rails.root.join("app/assets/fonts/SegoeUI-bold-italic.ttf")
    })
    
    @pdf.font "SegoeUI"
  end
end