class Article < ApplicationRecord
	belongs_to :savedArticle
	has_one :rating
	validates_presence_of :rating
	validates_presence_of :title, :date, :source
	validates_date :date

    scope :rated,     -> { joins(:rating).where("id = ?", :rating_id) }
    scope :for_past_days, -> (x){ where('current_date >= date AND date >= ?',  (current_day - x.days))}

end
