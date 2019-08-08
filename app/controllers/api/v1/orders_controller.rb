class Api::V1::OrdersController < Api::V1::BaseController

  skip_before_action :verify_authenticity_token, only: %i[create update destroy]
  before_action :get_order, only: %i[update destroy show]

  def index
    @orders = Order.all
  end

  def create
    @order = Order.new(order_params)
    @order.save
  end

  def show
    @order
  end

  def update
    @order.update(order_params)
  end

  def destroy
    @order.destroy
    render json: {message: "Dear customer, your order is succesfully deleted"}
  end


  private

  def get_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:trash_collector_id, :time, :address, :collection_status, :customer_phone_number)
  end

end
