#clase para poder desplegar en pdf crea el archivo pdf
class WebReferencePdf < Prawn::Document
 
  def initialize(web_reference, view)
  super()
  @web_reference = web_reference
  @view = view
  text "Formato APA:  #{@web_reference.autor}.(#{@web_reference.dia} del #{@web_reference.mes} de #{@web_reference.anno}).#{@web_reference.sitio}.Recuperado el #{@web_reference.diaconsulta} del #{@web_reference.mesconsulta} del #{@web_reference.annoconsulta}, de #{@web_reference.url}"
end
end
