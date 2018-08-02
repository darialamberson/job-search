class Status < ApplicationRecord
  belongs_to :stage
  belongs_to :listing
end
