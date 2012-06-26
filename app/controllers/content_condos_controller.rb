class ContentCondosController < ApplicationController
  layout "dashboard"
  # GET /content_condos
  # GET /content_condos.json
  def index
    @content_condos = ContentCondo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @content_condos }
    end
  end

  # GET /content_condos/1
  # GET /content_condos/1.json
  def show
    @content_condo = ContentCondo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @content_condo }
    end
  end

  # GET /content_condos/new
  # GET /content_condos/new.json
  def new
    @content_condo = ContentCondo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @content_condo }
    end
  end

  # GET /content_condos/1/edit
  def edit
    @content_condo = ContentCondo.find(params[:id])
  end

  # POST /content_condos
  # POST /content_condos.json
  def create
    @content_condo = ContentCondo.new(params[:content_condo])

    respond_to do |format|
      if @content_condo.save
        format.html { redirect_to @content_condo, notice: 'Content condo was successfully created.' }
        format.json { render json: @content_condo, status: :created, location: @content_condo }
      else
        format.html { render action: "new" }
        format.json { render json: @content_condo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /content_condos/1
  # PUT /content_condos/1.json
  def update
    @content_condo = ContentCondo.find(params[:id])

    respond_to do |format|
      if @content_condo.update_attributes(params[:content_condo])
        format.html { redirect_to @content_condo, notice: 'Content condo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @content_condo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /content_condos/1
  # DELETE /content_condos/1.json
  def destroy
    @content_condo = ContentCondo.find(params[:id])
    @content_condo.destroy

    respond_to do |format|
      format.html { redirect_to content_condos_url }
      format.json { head :no_content }
    end
  end
end
