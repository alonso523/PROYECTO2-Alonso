#clase para poder desplegar en pdf crea el archivo pdf
class BookReferencePdf < Prawn::Document
 
  def initialize(book_reference, view)
  super()
  @book_reference = book_reference
  @view = view
  text "Formato APA:  #{@book_reference.autor}.(#{@book_reference.anno}).#{@book_reference.titulo}.#{@book_reference.ciudad}.#{@book_reference.editorial}"
end
end
