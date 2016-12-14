class GrouptypesController < ApplicationController
  before_action :set_grouptype, only: [:show, :edit, :update, :destroy]

  # GET /grouptypes
  # GET /grouptypes.json
  def index
    @grouptypes = Grouptype.all
  end

  # GET /grouptypes/1
  # GET /grouptypes/1.json
  def show
  end

  # GET /grouptypes/new
  def new
    @grouptype = Grouptype.new
  end

  # GET /grouptypes/1/edit
  def edit
  end

  # POST /grouptypes
  # POST /grouptypes.json
  def create
    @grouptype = Grouptype.new(grouptype_params)

    respond_to do |format|
      if @grouptype.save
        format.html { redirect_to @grouptype, notice: 'Grouptype was successfully created.' }
        format.json { render :show, status: :created, location: @grouptype }
      else
        format.html { render :new }
        format.json { render json: @grouptype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grouptypes/1
  # PATCH/PUT /grouptypes/1.json
  def update
    respond_to do |format|
      if @grouptype.update(grouptype_params)
        format.html { redirect_to @grouptype, notice: 'Grouptype was successfully updated.' }
        format.json { render :show, status: :ok, location: @grouptype }
      else
        format.html { render :edit }
        format.json { render json: @grouptype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grouptypes/1
  # DELETE /grouptypes/1.json
  def destroy
    @grouptype.destroy
    respond_to do |format|
      format.html { redirect_to grouptypes_url, notice: 'Grouptype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grouptype
      @grouptype = Grouptype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grouptype_params
      params.require(:grouptype).permit(:name)
    end
end
