class CreateTags < ActiveRecord::Migration
   def up
    create_table :tags do |t|
      t.string :tg_name
      t.integer :tg_category

      t.timestamps
    end
  end
  
  def down
  	drop_table :tags 
  end

end
