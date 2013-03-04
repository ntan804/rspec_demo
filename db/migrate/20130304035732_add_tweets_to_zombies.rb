class AddTweetsToZombies < ActiveRecord::Migration
  def change
    add_column :zombies, :tweets, :string
  end
end
