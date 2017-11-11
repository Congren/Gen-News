class Rating < ApplicationRecord
	belongs_to :article
	validates_presence_of :reliability_score
	validates_numericality_of :reliability_score, only_float: true

end
