class ApuestaController < ApplicationController
  # GET /apuesta
  # GET /apuesta.json
  def index
    @apuesta = Apuestum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @apuesta }
    end
  end

  # GET /apuesta/1
  # GET /apuesta/1.json
  def show
    @apuestum = Apuestum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @apuestum }
    end
  end

  # GET /apuesta/new
  # GET /apuesta/new.json
  def new
    @apuestum = Apuestum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @apuestum }
    end
  end

  # GET /apuesta/1/edit
  def edit
    @apuestum = Apuestum.find(params[:id])
  end

  # POST /apuesta
  # POST /apuesta.json
  def create
    @apuestum = Apuestum.new(params[:apuestum])

    respond_to do |format|
      if @apuestum.save
        format.html { redirect_to @apuestum, notice: 'Apuestum was successfully created.' }
        format.json { render json: @apuestum, status: :created, location: @apuestum }
      else
        format.html { render action: "new" }
        format.json { render json: @apuestum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /apuesta/1
  # PUT /apuesta/1.json
  def update
    @apuestum = Apuestum.find(params[:id])

    respond_to do |format|
      if @apuestum.update_attributes(params[:apuestum])
        format.html { redirect_to @apuestum, notice: 'Apuestum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @apuestum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apuesta/1
  # DELETE /apuesta/1.json
  def destroy
    @apuestum = Apuestum.find(params[:id])
    @apuestum.destroy

    respond_to do |format|
      format.html { redirect_to apuesta_url }
      format.json { head :no_content }
    end
  end
end
