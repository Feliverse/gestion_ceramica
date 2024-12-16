class Transfer < ApplicationRecord
  belongs_to :origin_warehouse
  belongs_to :destination_warehouse
end
