class CreateDomains < ActiveRecord::Migration
  def change
    create_table :domains, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.string :domain_name, null: false
      t.float :uda
      t.float :pda
      t.string :domain_hash
      t.integer :hidden_reason, default: 0

      t.timestamps
    end

    add_index :domains, :domain_hash
    add_index :domains, :hidden_reason
  end
end
