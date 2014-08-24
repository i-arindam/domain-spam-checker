class DomainAnchorCloud < ActiveRecord::Base
end

# == Schema Information
#
# Table name: domain_anchor_clouds
#
#  created_at :datetime
#  domain_id  :integer
#  id         :integer          not null, primary key
#  text       :string(255)
#  updated_at :datetime
#
# Indexes
#
#  index_domain_anchor_clouds_on_domain_id  (domain_id)
#
