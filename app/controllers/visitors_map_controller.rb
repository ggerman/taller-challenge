require "tempfile"
require "gd/gis"

class VisitorsMapController < ApplicationController
  WORLD_BBOX = [-180.0, -85.0, 180.0, 85.0]
  GEOJSON = Rails.root.join("public", "aerial.geojson")

  def page

  end

  def image
    visitors = Visitor.all

    map = GD::GIS::Map.new(
      width: 1920,
      height: 960,
      zoom: 3,
      bbox: WORLD_BBOX,
      basemap: :carto_light
    )

    solarized_path = Rails.root.join("public", "solarized.yml")
    map.style = GD::GIS::Style.load("solarized", from: "public")

    # icon_path = Rails.root.join("public", "icon-1.png")
    icon_path = Rails.root.join("public", "4086652.png")

    map.add_points(
      visitors,
      lon: ->(p) { p.lon },
      lat: ->(p) { p.lat },
      icon: nil,
      font: GD::GIS::FontHelper.random,
      size: 9,
      font_color: GD::Color.rgb(255, 255, 255),
      label: ->(v) { "Visitor #{v.id}" } 
    )
    
    map.render
    tmp = Tempfile.new(["map", ".png"])
    map.save(tmp.path)

    send_data File.binread(tmp.path), 
      type: "image/png",
      disposition: "inline",
      filename: "map.png",
      cache_control: "no-store, no-cache, must-revalidate, max-age=0",
      pragma: "no-cache",
      expires: "0"
  end
end
