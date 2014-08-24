class DomainBlacklist < ActiveRecord::Base
end

# == Schema Information
#
# Table name: domain_blacklists
#
#  created_at :datetime
#  id         :integer          not null, primary key
#  updated_at :datetime
#  word       :string(255)
#
# Indexes
#
#  index_domain_blacklists_on_word  (word)
#
