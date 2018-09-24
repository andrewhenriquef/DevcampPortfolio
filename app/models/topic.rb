class Topic < ApplicationRecord
  validates_presence_of :title
  has_many :blogs

  def self.with_blogs
    #return only topics with blogs included
    includes(:blogs).where.not(blogs: {id: nil})
  end
end
