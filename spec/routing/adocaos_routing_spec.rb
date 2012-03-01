require "spec_helper"

describe AdocaosController do
  describe "routing" do

    it "routes to #index" do
      get("/adocaos").should route_to("adocaos#index")
    end

    it "routes to #new" do
      get("/adocaos/new").should route_to("adocaos#new")
    end

    it "routes to #show" do
      get("/adocaos/1").should route_to("adocaos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/adocaos/1/edit").should route_to("adocaos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/adocaos").should route_to("adocaos#create")
    end

    it "routes to #update" do
      put("/adocaos/1").should route_to("adocaos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/adocaos/1").should route_to("adocaos#destroy", :id => "1")
    end

  end
end
