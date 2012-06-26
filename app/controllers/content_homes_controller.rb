class ContentHomesController < ApplicationController
  layout "dashboard"
  # GET /content_homes
  # GET /content_homes.json
  def index
    @content_homes = ContentHome.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @content_homes }
    end
  end

  # GET /content_homes/1
  # GET /content_homes/1.json
  def show
    @content_home = ContentHome.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @content_home }
    end
  end

  # GET /content_homes/new
  # GET /content_homes/new.json
  def new
    @content_home = ContentHome.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @content_home }
    end
  end

  # GET /content_homes/1/edit
  def edit
    @content_home = ContentHome.find(params[:id])
  end

  # POST /content_homes
  # POST /content_homes.json
  def create
    @content_home = ContentHome.new(params[:content_home])

    respond_to do |format|
      if @content_home.save
        format.html { redirect_to content_homes_path, notice: 'Content home was successfully created.' }
        format.json { render json: @content_home, status: :created, location: @content_home }
      else
        format.html { render action: "new" }
        format.json { render json: @content_home.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /content_homes/1
  # PUT /content_homes/1.json
  def update
    @content_home = ContentHome.find(params[:id])

    respond_to do |format|
      if @content_home.update_attributes(params[:content_home])
        format.html { redirect_to @content_home, notice: 'Content home was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @content_home.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /content_homes/1
  # DELETE /content_homes/1.json
  def destroy
    @content_home = ContentHome.find(params[:id])
    @content_home.destroy

    respond_to do |format|
      format.html { redirect_to content_homes_url }
      format.json { head :no_content }
    end
  end
end
