class ContentResidentialsController < ApplicationController
  layout 'dashboard'
  # GET /content_residentials
  # GET /content_residentials.json
  def index
    @content_residentials = ContentResidential.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @content_residentials }
    end
  end

  # GET /content_residentials/1
  # GET /content_residentials/1.json
  def show
    @content_residential = ContentResidential.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @content_residential }
    end
  end

  # GET /content_residentials/new
  # GET /content_residentials/new.json
  def new
    @content_residential = ContentResidential.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @content_residential }
    end
  end

  # GET /content_residentials/1/edit
  def edit
    @content_residential = ContentResidential.find(params[:id])
  end

  # POST /content_residentials
  # POST /content_residentials.json
  def create
    @content_residential = ContentResidential.new(params[:content_residential])

    respond_to do |format|
      if @content_residential.save
        format.html { redirect_to @content_residential, notice: 'Content residential was successfully created.' }
        format.json { render json: @content_residential, status: :created, location: @content_residential }
      else
        format.html { render action: "new" }
        format.json { render json: @content_residential.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /content_residentials/1
  # PUT /content_residentials/1.json
  def update
    @content_residential = ContentResidential.find(params[:id])

    respond_to do |format|
      if @content_residential.update_attributes(params[:content_residential])
        format.html { redirect_to @content_residential, notice: 'Content residential was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @content_residential.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /content_residentials/1
  # DELETE /content_residentials/1.json
  def destroy
    @content_residential = ContentResidential.find(params[:id])
    @content_residential.destroy

    respond_to do |format|
      format.html { redirect_to content_residentials_url }
      format.json { head :no_content }
    end
  end
end
