class Constituent < ActiveRecord::Base
  has_many :comments, :as => :author
  has_many :comments, :as => :target

end