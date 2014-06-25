class ProjectItemsController < ApplicationController
  before_action :set_project_item, only: [:show, :edit, :update, :destroy]

  # GET /project_items
  # GET /project_items.json
  def index
    @project_items = ProjectItem.all
  end

  # GET /project_items/1
  # GET /project_items/1.json
  def show
  end

  # GET /project_items/new
  def new
    @project_item = ProjectItem.new
  end

  # GET /project_items/1/edit
  def edit
  end

  # POST /product_items
  # POST /product_items.json
  def create
    @product_item = ProductItem.new(product_item_params)

    respond_to do |format|
      if @product_item.save
        format.html { redirect_to @product_item, notice: 'Product item was successfully created.' }
        format.json { render :show, status: :created, location: @product_item }
      else
        format.html { render :new }
        format.json { render json: @product_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_items/1
  # PATCH/PUT /product_items/1.json
  def update
    respond_to do |format|
      if @product_item.update(product_item_params)
        format.html { redirect_to @product_item, notice: 'Product item was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_item }
      else
        format.html { render :edit }
        format.json { render json: @product_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_items/1
  # DELETE /product_items/1.json
  def destroy
    @product_item.destroy
    respond_to do |format|
      format.html { redirect_to product_items_url, notice: 'Product item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_item
      @product_item = ProductItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_item_params
      params.require(:product_item).permit(:name, :description, :quantity, :projects)
    end
end
