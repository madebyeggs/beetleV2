class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :title
      t.string :client
      t.text :description
      t.string :vimeo
      t.timestamps null: false
    end
  end
end
