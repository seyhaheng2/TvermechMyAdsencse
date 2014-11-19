class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  mount_uploader :image, ImageUploader


  include PgSearch
  
  pg_search_scope :search, against: [:name, :description],
				  using: {tsearch: {dictionary: "english"}}

  def self.text_search(query)
  	if query.present?
  		search(query)
  	end
  end

  scope :in_category, lambda{ |cate_id|
    where("category_id = ?", cate_id)
  }
end
