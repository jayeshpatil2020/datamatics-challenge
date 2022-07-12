parsed_data = JSON.parse(File.read('./public/europe.geojson'))

parsed_data['features'].each do |data|
  GeojsonInfo.create(
    data_type: data['type'],
    properties: data['properties'],
    country_name: data['properties']['NAME'],
    geometry: data['geometry']
  )
end
