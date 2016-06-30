# == Schema Information
#
# Table name: systems
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class System < ActiveRecord::Base
  has_many :survey_templates, as: :surveyable
  has_many :survey_item_categories, as: :categorisable
end
