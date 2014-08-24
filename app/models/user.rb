class User < ActiveRecord::Base
end

# == Schema Information
#
# Table name: users
#
#  created_at             :datetime
#  email                  :string(255)      not null
#  id                     :integer          not null, primary key
#  name                   :string(255)
#  password_digest        :string(255)
#  password_reset_sent_at :datetime
#  password_reset_token   :string(255)
#  updated_at             :datetime
#
# Indexes
#
#  index_users_on_email                 (email)
#  index_users_on_password_reset_token  (password_reset_token)
#
