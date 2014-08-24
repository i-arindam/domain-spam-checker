class CreateDomainBlacklists < ActiveRecord::Migration
  def change
    create_table :domain_blacklists, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.string :word
      t.timestamps
    end
    add_index :domain_blacklists, :word
  end
end
