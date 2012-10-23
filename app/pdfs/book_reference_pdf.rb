#clase para poder desplegar en pdf
class BookReferencePdf < Prawn::Document
 
  def initialize(book_reference, view)
  super()
  @book_reference = book_reference
  @view = view
  text "book_reference #{@book_reference.id}"
end
end
