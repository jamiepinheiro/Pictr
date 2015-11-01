class CreatePics < ActiveRecord::Migration
  def change
    create_table :pics do |t|
    	t.string :image
    	t.string :title
      t.timestamps null: false
    end
  end
end
