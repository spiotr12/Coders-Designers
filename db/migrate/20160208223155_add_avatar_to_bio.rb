class AddAvatarToBio < ActiveRecord::Migration
  def change
    add_attachment :bios, :avatar
  end
end
