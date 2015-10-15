require "test_helper"

# StockCalculationsControllerTest
class StockCalculationsControllerTest < ActionController::TestCase
  setup do
    @stock_calculation = stock_calculations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stock_calculations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stock_calculation" do
    assert_difference("StockCalculation.count") do
      post :create, stock_calculation: {
        name: @stock_calculation.name,
        percentage: @stock_calculation.percentage,
        price: @stock_calculation.price,
        quantity: @stock_calculation.quantity,
        years: @stock_calculation.years
      }
    end

    assert_redirected_to stock_calculation_path(assigns(:stock_calculation))
  end

  test "should show stock_calculation" do
    get :show, id: @stock_calculation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stock_calculation
    assert_response :success
  end

  test "should update stock_calculation" do
    patch :update, id: @stock_calculation, stock_calculation: {
      name: @stock_calculation.name,
      percentage: @stock_calculation.percentage,
      price: @stock_calculation.price,
      quantity: @stock_calculation.quantity,
      years: @stock_calculation.years
    }
    assert_redirected_to stock_calculation_path(assigns(:stock_calculation))
  end

  test "should destroy stock_calculation" do
    assert_difference("StockCalculation.count", -1) do
      delete :destroy, id: @stock_calculation
    end

    assert_redirected_to stock_calculations_path
  end
end
