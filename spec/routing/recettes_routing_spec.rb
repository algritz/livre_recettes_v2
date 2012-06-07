require "spec_helper"

describe RecettesController do
  describe "routing" do

    it "routes to #index" do
      get("/recettes").should route_to("recettes#index")
    end

    it "routes to #new" do
      get("/recettes/new").should route_to("recettes#new")
    end

    it "routes to #show" do
      get("/recettes/1").should route_to("recettes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/recettes/1/edit").should route_to("recettes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/recettes").should route_to("recettes#create")
    end

    it "routes to #update" do
      put("/recettes/1").should route_to("recettes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/recettes/1").should route_to("recettes#destroy", :id => "1")
    end

  end
end
