class ContentExploresController < ApplicationController
  layout "dashboard"
  # GET /content_explores
  # GET /content_explores.json
  def index
    @content_explores = ContentExplore.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @content_explores }
    end
  end

  # GET /content_explores/1
  # GET /content_explores/1.json
  def show
    @content_explore = ContentExplore.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @content_explore }
    end
  end

  # GET /content_explores/new
  # GET /content_explores/new.json
  def new
    @content_explore = ContentExplore.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @content_explore }
    end
  end

  # GET /content_explores/1/edit
  def edit
    @content_explore = ContentExplore.find(params[:id])
  end

  # POST /content_explores
  # POST /content_explores.json
  def create
    @content_explore = ContentExplore.new(params[:content_explore])

    respond_to do |format|
      if @content_explore.save
        format.html { redirect_to @content_explore, notice: 'Content explore was successfully created.' }
        format.json { render json: @content_explore, status: :created, location: @content_explore }
      else
        format.html { render action: "new" }
        format.json { render json: @content_explore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /content_explores/1
  # PUT /content_explores/1.json
  def update
    @content_explore = ContentExplore.find(params[:id])

    respond_to do |format|
      if @content_explore.update_attributes(params[:content_explore])
        format.html { redirect_to @content_explore, notice: 'Content explore was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @content_explore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /content_explores/1
  # DELETE /content_explores/1.json
  def destroy
    @content_explore = ContentExplore.find(params[:id])
    @content_explore.destroy

    respond_to do |format|
      format.html { redirect_to content_explores_url }
      format.json { head :no_content }
    end
  end
end
