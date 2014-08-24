class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.string :name
      t.string :email, null: false
      t.string :password_digest
      t.string :password_reset_token
      t.datetime :password_reset_sent_at

      t.timestamps
    end

    add_index :users, :email
    add_index :users, :password_reset_token
  end
end
