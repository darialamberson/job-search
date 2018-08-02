class ListingSerializer < ActiveModel::Serializer
  attributes :id, :company_name, :description, :job_title, :company_url
  belongs_to :stage
end
