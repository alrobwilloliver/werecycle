class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :trash_collector, optional: true
end
