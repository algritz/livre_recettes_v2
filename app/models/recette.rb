class Recette < ActiveRecord::Base
  attr_accessible :author_id, :category_id, :cooking_time, :ingredient, :instruction, :marinade_time, :note, :portion, :preparation_time, :source, :suggested_meal, :suggested_wine, :tip, :title
  validates :title, :presence => true, :length => 6 .. 128
  validates :author_id, :presence => true
  validates :category_id, :presence => true
  validates :ingredient, :presence => true
  validates :instruction, :presence => true
end
