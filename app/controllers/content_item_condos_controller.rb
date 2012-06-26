class ContentItemCondosController < ApplicationController
  layout 'dashboard'
  # GET /content_item_condos
  # GET /content_item_condos.json
  def index
    @content_item_condos = ContentItemCondo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @content_item_condos }
    end
  end

  # GET /content_item_condos/1
  # GET /content_item_condos/1.json
  def show
    @content_item_condo = ContentItemCondo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @content_item_condo }
    end
  end

  # GET /content_item_condos/new
  # GET /content_item_condos/new.json
  def new
    @content_item_condo = ContentItemCondo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @content_item_condo }
    end
  end

  # GET /content_item_condos/1/edit
  def edit
    @content_item_condo = ContentItemCondo.find(params[:id])
  end

  # POST /content_item_condos
  # POST /content_item_condos.json
  def create
    @content_item_condo = ContentItemCondo.new(params[:content_item_condo])

    respond_to do |format|
      if @content_item_condo.save
        format.html { redirect_to @content_item_condo, notice: 'Content item condo was successfully created.' }
        format.json { render json: @content_item_condo, status: :created, location: @content_item_condo }
      else
        format.html { render action: "new" }
        format.json { render json: @content_item_condo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /content_item_condos/1
  # PUT /content_item_condos/1.json
  def update
    @content_item_condo = ContentItemCondo.find(params[:id])

    respond_to do |format|
      if @content_item_condo.update_attributes(params[:content_item_condo])
        format.html { redirect_to @content_item_condo, notice: 'Content item condo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @content_item_condo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /content_item_condos/1
  # DELETE /content_item_condos/1.json
  def destroy
    @content_item_condo = ContentItemCondo.find(params[:id])
    @content_item_condo.destroy

    respond_to do |format|
      format.html { redirect_to content_item_condos_url }
      format.json { head :no_content }
    end
  end
end
