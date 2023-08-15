class TodOsController < ApplicationController
  before_action :set_tod_o, only: %i[ show edit update destroy ]

  # GET /tod_os or /tod_os.json
  def index
    @tod_os = TodO.all
  end

  # GET /tod_os/1 or /tod_os/1.json
  def show
    @tod_os = TodO.find(params[:id])
  end

  # GET /tod_os/new
  def new
    @tod_o = TodO.new
  end

  # GET /tod_os/1/edit
  def edit
    @tod_o = TodO.find(params[:id])
  end

  # POST /tod_os or /tod_os.json
  def create
    @tod_o = TodO.new(tod_o_params)

    respond_to do |format|
      if @tod_o.save
        format.html { redirect_to tod_o_url(@tod_o), notice: "Tod o was successfully created." }
        format.json { render :show, status: :created, location: @tod_o }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tod_o.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tod_os/1 or /tod_os/1.json
  def update
    respond_to do |format|
      if @tod_o.update(tod_o_params)
        format.html { redirect_to tod_o_url(@tod_o), notice: "Tod o was successfully updated." }
        format.json { render :show, status: :ok, location: @tod_o }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tod_o.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tod_os/1 or /tod_os/1.json
  def destroy
    @tod_o.destroy

    respond_to do |format|
      format.html { redirect_to tod_os_url, notice: "Tod o was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tod_o
      @tod_o = TodO.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tod_o_params
      params.fetch(:tod_o, {})
    end
end
