class Opinion < ActiveRecord::Base
  belongs_to :official
  belongs_to :legislation


  scope :support, where(:status => "support")
  scope :oppose, where(:status => "oppose")

end
