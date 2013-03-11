class AddDetailsToZombies < ActiveRecord::Migration
  def change
    add_column :zombies, :craving, :string
    add_column :zombies, :vegetarian, :boolean
  end
end
