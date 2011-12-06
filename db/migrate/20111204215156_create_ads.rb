class CreateAds < ActiveRecord::Migration
  def self.up
    create_table :ads do |t|
      t.string :image
      t.string :link
      t.timestamps
    end
  end

  def self.down
    drop_table :ads
  end
end
