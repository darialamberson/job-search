class ExternalLinkSerializer < ActiveModel::Serializer
  attributes :id, :url, :description
  belongs_to :listing
end
