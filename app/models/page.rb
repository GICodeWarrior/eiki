class Page < ActiveRecord::Base
  validates_uniqueness_of :title

  def to_param
    title
  end
end
