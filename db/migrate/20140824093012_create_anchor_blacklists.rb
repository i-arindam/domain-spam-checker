class CreateAnchorBlacklists < ActiveRecord::Migration
  def change
    create_table :anchor_blacklists, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.string :word
      t.timestamps
    end
    add_index :anchor_blacklists, :word
  end
end
