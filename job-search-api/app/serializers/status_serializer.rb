class StatusSerializer < ActiveModel::Serializer
  attributes :id, :action_date, :is_complete
  belongs_to :stage
  belongs_to :listing
end
