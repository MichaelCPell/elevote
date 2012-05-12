class Statement < ActiveRecord::Base
  belongs_to :candidate
    attr_accessible :content, :category
end
