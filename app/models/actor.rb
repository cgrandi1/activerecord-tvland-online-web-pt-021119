require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    name = "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    array = []
    role = self.characters.collect{|c|c.name}
    show = self.shows.collect {|s|s.name}
    array = role.concat show
    combine.join(" - ")
    # binding.pry
  end
end
