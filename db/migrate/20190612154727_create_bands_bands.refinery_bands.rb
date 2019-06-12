# This migration comes from refinery_bands (originally 1)
class CreateBandsBands < ActiveRecord::Migration[5.1]

  def up
    create_table :refinery_bands do |t|
      t.text :name
      t.text :style
      t.integer :base_fee
      t.integer :band_image_id
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-bands"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/bands/bands"})
    end

    drop_table :refinery_bands

  end

end
