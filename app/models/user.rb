
  require 'bcrypt'


class User < ActiveRecord::Base

  has_many :endorsements, :as => :endorsementer

  has_many :comments, :as => :author
  has_many :comments, :as => :target


  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_digest = @password
  end




end
