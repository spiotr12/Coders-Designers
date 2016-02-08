class CreateBios < ActiveRecord::Migration
  def change
    create_table :bios do |t|
      t.string :name
      t.string :position
      t.text :description

      t.timestamps null: false
    end
  end
end
