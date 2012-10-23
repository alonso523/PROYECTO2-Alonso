class WebReferencesController < ApplicationController
  # GET /web_references
  # GET /web_references.json
  def index
    @user = current_user	#usuario actual
    @userid = @user.id		#obtiene el identificador del usuario
    @web_references = WebReference.where(:user_id => @userid)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @web_references }
    end
  end

  # GET /web_references/1
  # GET /web_references/1.json
  def show
    @web_reference = WebReference.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @web_reference }
    end
  end

  # GET /web_references/new
  # GET /web_references/new.json
  def new
    @user = current_user
    @web_reference = WebReference.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @web_reference }
    end
  end

  # GET /web_references/1/edit
  def edit
    @web_reference = WebReference.find(params[:id])
  end

  # POST /web_references
  # POST /web_references.json
  def create
    @web_reference = WebReference.new(params[:web_reference])
    @web_reference.user_id = current_user.id     #asigna el usuario actual

    respond_to do |format|
      if @web_reference.save
        format.html { redirect_to @web_reference, notice: 'Web reference was successfully created.' }
        format.json { render json: @web_reference, status: :created, location: @web_reference }
      else
        format.html { render action: "new" }
        format.json { render json: @web_reference.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /web_references/1
  # PUT /web_references/1.json
  def update
    @web_reference = WebReference.find(params[:id])

    respond_to do |format|
      if @web_reference.update_attributes(params[:web_reference])
        format.html { redirect_to @web_reference, notice: 'Web reference was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @web_reference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /web_references/1
  # DELETE /web_references/1.json
  def destroy
    @web_reference = WebReference.find(params[:id])
    @web_reference.destroy

    respond_to do |format|
      format.html { redirect_to web_references_url }
      format.json { head :no_content }
    end
  end
end
