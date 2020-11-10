# == Schema Information
#
# Table name: contabil_patterns
#
#  id         :bigint           not null, primary key
#  cloned_of  :integer
#  deleted_at :datetime
#  label      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  company_id :bigint
#  segment_id :bigint
#
# Indexes
#
#  index_contabil_patterns_on_company_id  (company_id)
#  index_contabil_patterns_on_segment_id  (segment_id)
#
# Foreign Keys
#
#  fk_rails_...  (company_id => companies.id)
#  fk_rails_...  (segment_id => segments.id)
#

class ContabilPatternSerializer
  include FastJsonapi::ObjectSerializer
  attributes :label, :segment_id
  
  
  attribute :contabil_pattern_params do |resource, params|
    ContabilPatternParamSerializer.new(resource.contabil_pattern_params)
  end
end
