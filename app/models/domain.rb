class Domain < ActiveRecord::Base
end

# == Schema Information
#
# Table name: domains
#
#  created_at    :datetime
#  domain_hash   :string(255)
#  domain_name   :string(255)      not null
#  hidden_reason :integer          default(0)
#  id            :integer          not null, primary key
#  pda           :float(24)
#  uda           :float(24)
#  updated_at    :datetime
#
# Indexes
#
#  index_domains_on_domain_hash    (domain_hash)
#  index_domains_on_hidden_reason  (hidden_reason)
#
