class ContentSuitesController < ApplicationController
  layout 'dashboard'
  # GET /content_suites
  # GET /content_suites.json
  def index
    @content_suites = ContentSuite.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @content_suites }
    end
  end

  # GET /content_suites/1
  # GET /content_suites/1.json
  def show
    @content_suite = ContentSuite.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @content_suite }
    end
  end

  # GET /content_suites/new
  # GET /content_suites/new.json
  def new
    @content_suite = ContentSuite.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @content_suite }
    end
  end

  # GET /content_suites/1/edit
  def edit
    @content_suite = ContentSuite.find(params[:id])
  end

  # POST /content_suites
  # POST /content_suites.json
  def create
    @content_suite = ContentSuite.new(params[:content_suite])

    respond_to do |format|
      if @content_suite.save
        format.html { redirect_to @content_suite, notice: 'Content suite was successfully created.' }
        format.json { render json: @content_suite, status: :created, location: @content_suite }
      else
        format.html { render action: "new" }
        format.json { render json: @content_suite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /content_suites/1
  # PUT /content_suites/1.json
  def update
    @content_suite = ContentSuite.find(params[:id])

    respond_to do |format|
      if @content_suite.update_attributes(params[:content_suite])
        format.html { render action: 'edit', notice: 'Content suite was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @content_suite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /content_suites/1
  # DELETE /content_suites/1.json
  def destroy
    @content_suite = ContentSuite.find(params[:id])
    @content_suite.destroy

    respond_to do |format|
      format.html { redirect_to content_suites_url }
      format.json { head :no_content }
    end
  end
end
