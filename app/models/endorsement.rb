class Endorsement < ActiveRecord::Base
  belongs_to :endorsementable, :polymorphic => true  #,  :counter_cache => true
  belongs_to :endorsementer, :polymorphic => true

end
