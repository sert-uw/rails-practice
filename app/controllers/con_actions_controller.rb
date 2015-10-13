class ConActionsController < ApplicationController
  before_action :set_con_action, only: [:show, :edit, :update, :destroy]

  # GET /con_actions
  # GET /con_actions.json
  def index
    @con_actions = ConAction.all
  end

  # GET /con_actions/1
  # GET /con_actions/1.json
  def show
  end

  # GET /con_actions/new
  def new
    @con_action = ConAction.new
  end

  # GET /con_actions/1/edit
  def edit
  end

  # POST /con_actions
  # POST /con_actions.json
  def create
    @con_action = ConAction.new(con_action_params)

    respond_to do |format|
      if @con_action.save
        format.html { redirect_to @con_action, notice: 'Con action was successfully created.' }
        format.json { render :show, status: :created, location: @con_action }
      else
        format.html { render :new }
        format.json { render json: @con_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /con_actions/1
  # PATCH/PUT /con_actions/1.json
  def update
    respond_to do |format|
      if @con_action.update(con_action_params)
        format.html { redirect_to @con_action, notice: 'Con action was successfully updated.' }
        format.json { render :show, status: :ok, location: @con_action }
      else
        format.html { render :edit }
        format.json { render json: @con_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /con_actions/1
  # DELETE /con_actions/1.json
  def destroy
    @con_action.destroy
    respond_to do |format|
      format.html { redirect_to con_actions_url, notice: 'Con action was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_con_action
      @con_action = ConAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def con_action_params
      params.require(:con_action).permit(:name, :target_page, :text, :image_path, :link)
    end
end
