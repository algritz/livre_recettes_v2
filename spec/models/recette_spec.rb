require 'spec_helper'

describe Recette do

# Recette.new(:title => "Une Recette", :author_id => 1, :category_id => 1, :ingredient => "test ingredients", :instruction => "test instruction")

  it "should not allow null title" do
    la_recette = Recette.new(:author_id => 1, :category_id => 1, :ingredient => "test ingredients", :instruction => "test instruction")
    la_recette.title = nil
    la_recette.should_not be_valid
  end

  it "should have a title defined" do
    la_recette = Recette.new(:title => "Une Recette", :author_id => 1, :category_id => 1, :ingredient => "test ingredients", :instruction => "test instruction")
    la_recette.should be_valid
  end

  it "should not allow short title" do
    la_recette = Recette.new(:title => "Une", :author_id => 1, :category_id => 1, :ingredient => "test ingredients", :instruction => "test instruction")
    la_recette.should_not be_valid
  end
  
  it "should not allow long title" do
    la_recette = Recette.new(:title => "a"*256, :author_id => 1, :category_id => 1, :ingredient => "test ingredients", :instruction => "test instruction")
    la_recette.should_not be_valid
  end
  
  it "should have an author defined" do
    la_recette = Recette.new(:title => "Une Recette", :author_id => nil, :category_id => 1, :ingredient => "test ingredients", :instruction => "test instruction")
    la_recette.should_not be_valid
  end
  
  it "should have a category defined" do
    la_recette = Recette.new(:title => "Une Recette", :author_id => 1, :category_id => nil, :ingredient => "test ingredients", :instruction => "test instruction")
    la_recette.should_not be_valid
  end
  
  it "should have an ingredient defined" do
    la_recette = Recette.new(:title => "Une Recette", :author_id => 1, :category_id => 1, :ingredient => nil, :instruction => "test instruction")
    la_recette.should_not be_valid
  end
  
  it "should have an instruction defined" do
    la_recette = Recette.new(:title => "Une Recette", :author_id => 1, :category_id => 1, :ingredient => "test instruction", :instruction => nil)
    la_recette.should_not be_valid
  end
  
end
