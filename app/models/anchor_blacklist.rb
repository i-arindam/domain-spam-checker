class AnchorBlacklist < ActiveRecord::Base
end

# == Schema Information
#
# Table name: anchor_blacklists
#
#  created_at :datetime
#  id         :integer          not null, primary key
#  updated_at :datetime
#  word       :string(255)
#
# Indexes
#
#  index_anchor_blacklists_on_word  (word)
#
