class GroupitemsController < ApplicationController
  before_action :set_groupitem, only: [:show, :edit, :update, :destroy]

  # GET /groupitems
  # GET /groupitems.json
  def index
    @groupitems = Groupitem.all
  end

  # GET /groupitems/1
  # GET /groupitems/1.json
  def show
  end

  # GET /groupitems/new
  def new
    @groupitem = Groupitem.new
  end

  # GET /groupitems/1/edit
  def edit
  end

  # POST /groupitems
  # POST /groupitems.json
  def create
    @groupitem = Groupitem.new(groupitem_params)

    respond_to do |format|
      if @groupitem.save
        format.html { redirect_to @groupitem, notice: 'Groupitem was successfully created.' }
        format.json { render :show, status: :created, location: @groupitem }
      else
        format.html { render :new }
        format.json { render json: @groupitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /groupitems/1
  # PATCH/PUT /groupitems/1.json
  def update
    respond_to do |format|
      if @groupitem.update(groupitem_params)
        format.html { redirect_to @groupitem, notice: 'Groupitem was successfully updated.' }
        format.json { render :show, status: :ok, location: @groupitem }
      else
        format.html { render :edit }
        format.json { render json: @groupitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groupitems/1
  # DELETE /groupitems/1.json
  def destroy
    @groupitem.destroy
    respond_to do |format|
      format.html { redirect_to groupitems_url, notice: 'Groupitem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_groupitem
      @groupitem = Groupitem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def groupitem_params
      params.require(:groupitem).permit(:item_id, :group_id)
    end
end
