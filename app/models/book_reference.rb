class BookReference < ActiveRecord::Base
  attr_accessible :anno, :autor, :ciudad, :editorial, :paginas, :titulo
  belongs_to :user
end
