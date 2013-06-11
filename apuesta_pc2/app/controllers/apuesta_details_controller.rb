class ApuestaDetailsController < ApplicationController
  # GET /apuesta_details
  # GET /apuesta_details.json
  def index
    @apuesta_details = ApuestaDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @apuesta_details }
    end
  end

  # GET /apuesta_details/1
  # GET /apuesta_details/1.json
  def show
    @apuesta_detail = ApuestaDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @apuesta_detail }
    end
  end

  # GET /apuesta_details/new
  # GET /apuesta_details/new.json
  def new
    @apuesta_detail = ApuestaDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @apuesta_detail }
    end
  end

  # GET /apuesta_details/1/edit
  def edit
    @apuesta_detail = ApuestaDetail.find(params[:id])
  end

  # POST /apuesta_details
  # POST /apuesta_details.json
  def create
    @apuesta_detail = ApuestaDetail.new(params[:apuesta_detail])

    respond_to do |format|
      if @apuesta_detail.save
        format.html { redirect_to @apuesta_detail, notice: 'Apuesta detail was successfully created.' }
        format.json { render json: @apuesta_detail, status: :created, location: @apuesta_detail }
      else
        format.html { render action: "new" }
        format.json { render json: @apuesta_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /apuesta_details/1
  # PUT /apuesta_details/1.json
  def update
    @apuesta_detail = ApuestaDetail.find(params[:id])

    respond_to do |format|
      if @apuesta_detail.update_attributes(params[:apuesta_detail])
        format.html { redirect_to @apuesta_detail, notice: 'Apuesta detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @apuesta_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apuesta_details/1
  # DELETE /apuesta_details/1.json
  def destroy
    @apuesta_detail = ApuestaDetail.find(params[:id])
    @apuesta_detail.destroy

    respond_to do |format|
      format.html { redirect_to apuesta_details_url }
      format.json { head :no_content }
    end
  end
end
