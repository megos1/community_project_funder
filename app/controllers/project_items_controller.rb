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
    @project = Project.find(params[:project_id])
    @project_item = ProjectItem.new
  end

  # GET /project_items/1/edit
  def edit
    @project = Project.find(params[:project_id])
  end

  # POST /project_items
  # POST /project_items.json
  def create
    @project_item = ProjectItem.new(project_item_params)
    @project_item.project_id = params[:project_id]
    respond_to do |format|
      if @project_item.save
        format.html { redirect_to project_path(params[:project_id]), notice: 'Project item was successfully created.' }
        format.json { render :show, status: :created, location: @project_item }
      else
        format.html { render :new }
        format.json { render json: @project_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_items/1
  # PATCH/PUT /project_items/1.json
  def update
    respond_to do |format|
      if @project_item.update(project_item_params)
        format.html { redirect_to project_path(params[:project_id])  , notice: 'Project item was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_item }
      else
        format.html { render :edit }
        format.json { render json: @project_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_items/1
  # DELETE /project_items/1.json
  def destroy
    @project_item.destroy
    respond_to do |format|
      format.html { redirect_to project_path(params[:project_id]) , notice: 'Project item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_item
      @project_item = ProjectItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_item_params
      params.require(:project_item).permit(:name, :cost, :description, :quantity, :project_id)
    end
end
