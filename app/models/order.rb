class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :trash_collector, optional: true
  after_initialize :default_values

  private

  def default_values
    self.collection_status ||= "order waiting to be taken by a collector:)"
  end

end
