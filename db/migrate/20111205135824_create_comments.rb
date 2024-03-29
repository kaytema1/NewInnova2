class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.text :text
      t.string :author
      t.belongs_to :article # creates a new integer column named book_id  
      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
