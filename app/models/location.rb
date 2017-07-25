class Location < ActiveRecord::Base

  def convert_to_geojson()

    str2 = '{"type":"Feature","geometry":{"type":"Point","coordinates":' +
        '[-128.25,40.0]},"properties":{"color":"red"}}'
    feature = RGeo::GeoJSON.decode(str2, :json_parser => :json)
    feature['red']          # => 'red'
    feature.geometry.as_text  # => "POINT(2.5 4.0)"

    hash = RGeo::GeoJSON.encode(feature)



    {"id": "points",
     "type": "symbol",
     "source": {
         "type": "geojson",
         "data": {
             "type": "FeatureCollection",
             "features": [{
                              "type": "Feature",
                              "geometry": {
                                  "type": "Point",
                                  "coordinates": [-77.03238901390978, 38.913188059745586]
                              },
                              "properties": {
                                  "title": "Mapbox DC",
                                  "icon": "monument"
                              }
                          }, {
                              "type": "Feature",
                              "geometry": {
                                  "type": "Point",
                                  "coordinates": [-122.414, 37.776]
                              },
                              "properties": {
                                  "title": "Mapbox SF",
                                  "icon": "harbor"
                              }
                          }]
         }
     },
     "layout": {
         "icon-image": "{icon}-15",
         "text-field": "{title}",
         "text-font": ["Open Sans Semibold", "Arial Unicode MS Bold"],
         "text-offset": [0, 0.6],
         "text-anchor": "top"
     }
    }





  end

end
