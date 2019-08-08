class Api::V1::TrashCollectorsController < Api::V1::BaseController

  def my_orders
    @trash_collector = TrashCollector.find(params[:trash_collector_id])
    @orders = @trash_collector.orders
  end

  def mark_as_done
    # @trash_collector = TrashCollector.find(params[:id])
    # orders = @trash_collector.orders
    @order = Order.find(params[:id])
    @order.update(params[:collection_status])
    render json: {message: "Good job, your have contributed a lot to planet earth!"}
  end

end
