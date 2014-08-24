class CreateDomainAnchorClouds < ActiveRecord::Migration
  def change
    create_table :domain_anchor_clouds, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.references :domain
      t.string :text
      t.timestamps
    end
    add_index :domain_anchor_clouds, :domain_id
  end
end
