class Vote < ActiveRecord::Base
  belongs_to :voteable, :polymorphic => true, :counter_cache => true
  belongs_to :constituent
end
