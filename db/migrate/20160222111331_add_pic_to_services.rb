class AddPicToServices < ActiveRecord::Migration
  def self.up
    change_table :services do |t|
      t.attachment :pic
    end
  end

  def self.down
    drop_attached_file :services, :pic
  end
end
