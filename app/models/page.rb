class Page < ActiveRecord::Base
  validates_uniqueness_of :title
  acts_as_versioned

  def to_param
    title
  end
end
