class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.references :pic
    	t.string :message
      t.timestamps null: false
    end
  end
end
