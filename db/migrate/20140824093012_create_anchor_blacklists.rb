class CreateAnchorBlacklists < ActiveRecord::Migration
  def change
    create_table :anchor_blacklists do |t|

      t.timestamps
    end
  end
end
