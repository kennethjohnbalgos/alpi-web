class ContentItemResidentialsController < ApplicationController
  layout 'dashboard'
  # GET /content_item_residentials
  # GET /content_item_residentials.json
  def index
    @content_item_residentials = ContentItemResidential.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @content_item_residentials }
    end
  end

  # GET /content_item_residentials/1
  # GET /content_item_residentials/1.json
  def show
    @content_item_residential = ContentItemResidential.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @content_item_residential }
    end
  end

  # GET /content_item_residentials/new
  # GET /content_item_residentials/new.json
  def new
    @content_item_residential = ContentItemResidential.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @content_item_residential }
    end
  end

  # GET /content_item_residentials/1/edit
  def edit
    @content_item_residential = ContentItemResidential.find(params[:id])
  end

  # POST /content_item_residentials
  # POST /content_item_residentials.json
  def create
    @content_item_residential = ContentItemResidential.new(params[:content_item_residential])

    respond_to do |format|
      if @content_item_residential.save
        format.html { redirect_to @content_item_residential, notice: 'Content item residential was successfully created.' }
        format.json { render json: @content_item_residential, status: :created, location: @content_item_residential }
      else
        format.html { render action: "new" }
        format.json { render json: @content_item_residential.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /content_item_residentials/1
  # PUT /content_item_residentials/1.json
  def update
    @content_item_residential = ContentItemResidential.find(params[:id])

    respond_to do |format|
      if @content_item_residential.update_attributes(params[:content_item_residential])
        format.html { render action: "edit", notice: 'Content item residential was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @content_item_residential.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /content_item_residentials/1
  # DELETE /content_item_residentials/1.json
  def destroy
    @content_item_residential = ContentItemResidential.find(params[:id])
    @content_item_residential.destroy

    respond_to do |format|
      format.html { redirect_to content_item_residentials_url }
      format.json { head :no_content }
    end
  end
end
