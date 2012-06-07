class Recette < ActiveRecord::Base
  attr_accessible :author_id, :category_id, :cooking_time, :ingredient, :instruction, :marinade_time, :note, :portion, :preparation_time, :source, :suggested_meal, :suggested_wine, :tip, :title
end
