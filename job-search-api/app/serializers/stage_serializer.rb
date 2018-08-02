class StageSerializer < ActiveModel::Serializer
  attributes :id, :name, :rank, :is_active, :is_deleted
end
