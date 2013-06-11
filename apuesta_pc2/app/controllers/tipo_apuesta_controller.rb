class TipoApuestaController < ApplicationController
  # GET /tipo_apuesta
  # GET /tipo_apuesta.json
  def index
    @tipo_apuesta = TipoApuestum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tipo_apuesta }
    end
  end

  # GET /tipo_apuesta/1
  # GET /tipo_apuesta/1.json
  def show
    @tipo_apuestum = TipoApuestum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tipo_apuestum }
    end
  end

  # GET /tipo_apuesta/new
  # GET /tipo_apuesta/new.json
  def new
    @tipo_apuestum = TipoApuestum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tipo_apuestum }
    end
  end

  # GET /tipo_apuesta/1/edit
  def edit
    @tipo_apuestum = TipoApuestum.find(params[:id])
  end

  # POST /tipo_apuesta
  # POST /tipo_apuesta.json
  def create
    @tipo_apuestum = TipoApuestum.new(params[:tipo_apuestum])

    respond_to do |format|
      if @tipo_apuestum.save
        format.html { redirect_to @tipo_apuestum, notice: 'Tipo apuestum was successfully created.' }
        format.json { render json: @tipo_apuestum, status: :created, location: @tipo_apuestum }
      else
        format.html { render action: "new" }
        format.json { render json: @tipo_apuestum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_apuesta/1
  # PUT /tipo_apuesta/1.json
  def update
    @tipo_apuestum = TipoApuestum.find(params[:id])

    respond_to do |format|
      if @tipo_apuestum.update_attributes(params[:tipo_apuestum])
        format.html { redirect_to @tipo_apuestum, notice: 'Tipo apuestum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tipo_apuestum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_apuesta/1
  # DELETE /tipo_apuesta/1.json
  def destroy
    @tipo_apuestum = TipoApuestum.find(params[:id])
    @tipo_apuestum.destroy

    respond_to do |format|
      format.html { redirect_to tipo_apuesta_url }
      format.json { head :no_content }
    end
  end
end
