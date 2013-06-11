class CaballoXCarrerasController < ApplicationController
  # GET /caballo_x_carreras
  # GET /caballo_x_carreras.json
  def index
    @caballo_x_carreras = CaballoXCarrera.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @caballo_x_carreras }
    end
  end

  # GET /caballo_x_carreras/1
  # GET /caballo_x_carreras/1.json
  def show
    @caballo_x_carrera = CaballoXCarrera.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @caballo_x_carrera }
    end
  end

  # GET /caballo_x_carreras/new
  # GET /caballo_x_carreras/new.json
  def new
    @caballo_x_carrera = CaballoXCarrera.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @caballo_x_carrera }
    end
  end

  # GET /caballo_x_carreras/1/edit
  def edit
    @caballo_x_carrera = CaballoXCarrera.find(params[:id])
  end

  # POST /caballo_x_carreras
  # POST /caballo_x_carreras.json
  def create
    @caballo_x_carrera = CaballoXCarrera.new(params[:caballo_x_carrera])

    respond_to do |format|
      if @caballo_x_carrera.save
        format.html { redirect_to @caballo_x_carrera, notice: 'Caballo x carrera was successfully created.' }
        format.json { render json: @caballo_x_carrera, status: :created, location: @caballo_x_carrera }
      else
        format.html { render action: "new" }
        format.json { render json: @caballo_x_carrera.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /caballo_x_carreras/1
  # PUT /caballo_x_carreras/1.json
  def update
    @caballo_x_carrera = CaballoXCarrera.find(params[:id])

    respond_to do |format|
      if @caballo_x_carrera.update_attributes(params[:caballo_x_carrera])
        format.html { redirect_to @caballo_x_carrera, notice: 'Caballo x carrera was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @caballo_x_carrera.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caballo_x_carreras/1
  # DELETE /caballo_x_carreras/1.json
  def destroy
    @caballo_x_carrera = CaballoXCarrera.find(params[:id])
    @caballo_x_carrera.destroy

    respond_to do |format|
      format.html { redirect_to caballo_x_carreras_url }
      format.json { head :no_content }
    end
  end
end
