class BindsController < ApplicationController
  before_action :set_bind, only: [:show, :edit, :update, :destroy]

  # GET /binds
  # GET /binds.json
  def index
    @binds = Bind.all
  end

  # GET /binds/1
  # GET /binds/1.json
  def show
  end

  # GET /binds/new
  def new
    @bind = Bind.new
  end

  # GET /binds/1/edit
  def edit
  end

  # POST /binds
  # POST /binds.json
  def create
    @bind = Bind.new(bind_params)

    respond_to do |format|
      if @bind.save
        format.html { redirect_to @bind, notice: 'Bind was successfully created.' }
        format.json { render :show, status: :created, location: @bind }
      else
        format.html { render :new }
        format.json { render json: @bind.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /binds/1
  # PATCH/PUT /binds/1.json
  def update
    respond_to do |format|
      if @bind.update(bind_params)
        format.html { redirect_to @bind, notice: 'Bind was successfully updated.' }
        format.json { render :show, status: :ok, location: @bind }
      else
        format.html { render :edit }
        format.json { render json: @bind.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /binds/1
  # DELETE /binds/1.json
  def destroy
    @bind.destroy
    respond_to do |format|
      format.html { redirect_to binds_url, notice: 'Bind was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bind
      @bind = Bind.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bind_params
      params.require(:bind).permit(:segment_id, :con_action_id, :feedback_id)
    end
end
