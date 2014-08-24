class CreateDomainBlacklists < ActiveRecord::Migration
  def change
    create_table :domain_blacklists do |t|

      t.timestamps
    end
  end
end
