class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string :title
      t.string :color
      t.text :description
      t.timestamps
    end
  end

  def self.down
    drop_table :pages
  end
end
