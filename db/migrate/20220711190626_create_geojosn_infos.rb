class CreateGeojosnInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :geojosn_infos do |t|
      t.string :tpye
      t.json :properties
      t.string :country_name
      t.json :geometry

      t.timestamps
    end
  end
end
