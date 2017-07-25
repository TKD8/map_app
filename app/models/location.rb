class Location < ActiveRecord::Base

  def convert_to_geojson(name, type, latitude, longitude)
    str2 = '{"type":"Feature","geometry":{"type":"Point","coordinates":[2.5,4.0]},"properties":{"color":"red"}}'
    feature = RGeo::GeoJSON.decode(str2, jston_parser: :json)
    feature['color']          # => 'red'
    feature.geometry.as_text  # => "POINT(2.5 4.0)"

    hash = RGeo::GeoJSON.encode(feature)
    hash.to_json == str2      # => true

  end

end
