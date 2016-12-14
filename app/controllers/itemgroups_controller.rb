class ItemgroupsController < ApplicationController
  before_action :set_itemgroup, only: [:show, :edit, :update, :destroy]

  # GET /itemgroups
  # GET /itemgroups.json
  def index
    @itemgroups = Itemgroup.all
  end

  # GET /itemgroups/1
  # GET /itemgroups/1.json
  def show
  end

  # GET /itemgroups/new
  def new
    @itemgroup = Itemgroup.new
  end

  # GET /itemgroups/1/edit
  def edit
  end

  # POST /itemgroups
  # POST /itemgroups.json
  def create
    @itemgroup = Itemgroup.new(itemgroup_params)

    respond_to do |format|
      if @itemgroup.save
        format.html { redirect_to @itemgroup, notice: 'Itemgroup was successfully created.' }
        format.json { render :show, status: :created, location: @itemgroup }
      else
        format.html { render :new }
        format.json { render json: @itemgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /itemgroups/1
  # PATCH/PUT /itemgroups/1.json
  def update
    respond_to do |format|
      if @itemgroup.update(itemgroup_params)
        format.html { redirect_to @itemgroup, notice: 'Itemgroup was successfully updated.' }
        format.json { render :show, status: :ok, location: @itemgroup }
      else
        format.html { render :edit }
        format.json { render json: @itemgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /itemgroups/1
  # DELETE /itemgroups/1.json
  def destroy
    @itemgroup.destroy
    respond_to do |format|
      format.html { redirect_to itemgroups_url, notice: 'Itemgroup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_itemgroup
      @itemgroup = Itemgroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def itemgroup_params
      params.require(:itemgroup).permit(:item_id, :group_id, :grouptype_id)
    end
end
