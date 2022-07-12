class GeojsonInfoSerializer < ActiveModel::Serializer
  attributes :country_name, :data_type, :properties, :geometry
end
