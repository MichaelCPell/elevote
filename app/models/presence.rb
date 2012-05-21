class Presence < ActiveRecord::Base
  belongs_to :candidate
  belongs_to :site
end
