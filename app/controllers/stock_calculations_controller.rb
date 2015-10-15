# StockCalculationsController
class StockCalculationsController < ApplicationController
  before_action :set_stock_calculation, only: [:show, :edit, :update, :destroy]

  # GET /stock_calculations
  # GET /stock_calculations.json
  def index
    @stock_calculations = StockCalculation.all
  end

  # GET /stock_calculations/1
  # GET /stock_calculations/1.json
  def show
  end

  # GET /stock_calculations/new
  def new
    @stock_calculation = StockCalculation.new
  end

  # GET /stock_calculations/1/edit
  def edit
  end

  # POST /stock_calculations
  # POST /stock_calculations.json
  def create
    @stock_calculation = StockCalculation.new(stock_calculation_params)

    respond_to do |format|
      if @stock_calculation.save
        format.html do
          redirect_to @stock_calculation,
                      notice: "Stock calculation was successfully created."
        end
        format.json do
          render :show,
                 status: :created,
                 location: @stock_calculation
        end
      else
        format.html { render :new }
        format.json do
          render json: @stock_calculation.errors,
                 status: :unprocessable_entity
        end
      end
    end
  end

  # PATCH/PUT /stock_calculations/1
  # PATCH/PUT /stock_calculations/1.json
  def update
    respond_to do |format|
      if @stock_calculation.update(stock_calculation_params)
        format.html do
          redirect_to @stock_calculation,
                      notice: "Stock calculation was successfully updated."
        end
        format.json { render :show, status: :ok, location: @stock_calculation }
      else
        format.html { render :edit }
        format.json do
          render json: @stock_calculation.errors,
                 status: :unprocessable_entity
        end
      end
    end
  end

  # DELETE /stock_calculations/1
  # DELETE /stock_calculations/1.json
  def destroy
    @stock_calculation.destroy
    respond_to do |format|
      format.html do
        redirect_to stock_calculations_url,
                    notice: "Stock calculation was successfully destroyed."
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_stock_calculation
    @stock_calculation = StockCalculation.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the
  # white list through.
  def stock_calculation_params
    params.require(:stock_calculation).permit(
      :name, :price, :quantity, :percentage, :years)
  end
end
