class Forum < ActiveRecord::Base
  validates :name, :uniqueness => true, :presence => true, :length => { :maximum => 30, :minimum => 4 }, :format => { :with => /^[A-Z].+/ }
end
