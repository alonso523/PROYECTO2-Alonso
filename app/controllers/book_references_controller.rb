class BookReferencesController < ApplicationController
  # GET /book_references
  # GET /book_references.json
  def index
    @user = current_user	#usuario actual
    @userid = @user.id		#obtiene el identificador del usuario.
    @book_references = BookReference.where(:user_id => @userid)
    @web_references = WebReference.where(:user_id => @userid)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @book_references }
    end
  end

  # GET /book_references/1
  # GET /book_references/1.json
  def show   
    @book_reference = BookReference.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @book_reference }

      format.pdf do
        pdf = BookReferencePdf.new(@book_reference, view_context)
        send_data pdf.render, filename:
        "book_reference_#{@book_reference.created_at.strftime("%d/%m/%Y")}.pdf",
        type: "application/pdf"
     end
    end
  end

  # GET /book_references/new
  # GET /book_references/new.json
  def new
    @user = current_user
    @book_reference = BookReference.new 
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @book_reference }
    end
  end

  # GET /book_references/1/edit
  def edit
    @book_reference = BookReference.find(params[:id])
  end

  # POST /book_references
  # POST /book_references.json
  def create
    @book_reference = BookReference.new(params[:book_reference])
    @book_reference.user_id = current_user.id
    respond_to do |format|
      if @book_reference.save
        format.html { redirect_to @book_reference, notice: 'La referencia fue exitosamente creada.' }
        format.json { render json: @book_reference, status: :created, location: @book_reference }
      else
        format.html { render action: "new" }
        format.json { render json: @book_reference.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /book_references/1
  # PUT /book_references/1.json
  def update
    @book_reference = BookReference.find(params[:id])

    respond_to do |format|
      if @book_reference.update_attributes(params[:book_reference])
        format.html { redirect_to @book_reference, notice: 'La referencia fue actualizada exitosamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @book_reference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_references/1
  # DELETE /book_references/1.json
  def destroy
    @book_reference = BookReference.find(params[:id])
    @book_reference.destroy

    respond_to do |format|
      format.html { redirect_to book_references_url }
      format.json { head :no_content }
    end
  end
end
