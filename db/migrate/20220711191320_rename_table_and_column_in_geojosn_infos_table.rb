class RenameTableAndColumnInGeojosnInfosTable < ActiveRecord::Migration[6.1]
  def change
    rename_table :geojosn_infos, :geojson_infos
    rename_column :geojson_infos, :tpye, :data_type
  end
end
