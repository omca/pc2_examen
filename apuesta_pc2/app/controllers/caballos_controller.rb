class CaballosController < ApplicationController
  # GET /caballos
  # GET /caballos.json
  def index
    @caballos = Caballo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @caballos }
    end
  end

  # GET /caballos/1
  # GET /caballos/1.json
  def show
    @caballo = Caballo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @caballo }
    end
  end

  # GET /caballos/new
  # GET /caballos/new.json
  def new
    @caballo = Caballo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @caballo }
    end
  end

  # GET /caballos/1/edit
  def edit
    @caballo = Caballo.find(params[:id])
  end

  # POST /caballos
  # POST /caballos.json
  def create
    @caballo = Caballo.new(params[:caballo])

    respond_to do |format|
      if @caballo.save
        format.html { redirect_to @caballo, notice: 'Caballo was successfully created.' }
        format.json { render json: @caballo, status: :created, location: @caballo }
      else
        format.html { render action: "new" }
        format.json { render json: @caballo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /caballos/1
  # PUT /caballos/1.json
  def update
    @caballo = Caballo.find(params[:id])

    respond_to do |format|
      if @caballo.update_attributes(params[:caballo])
        format.html { redirect_to @caballo, notice: 'Caballo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @caballo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caballos/1
  # DELETE /caballos/1.json
  def destroy
    @caballo = Caballo.find(params[:id])
    @caballo.destroy

    respond_to do |format|
      format.html { redirect_to caballos_url }
      format.json { head :no_content }
    end
  end
end
