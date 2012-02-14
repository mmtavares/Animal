require "spec_helper"

describe InstituicaosController do
  describe "routing" do

    it "routes to #index" do
      get("/instituicaos").should route_to("instituicaos#index")
    end

    it "routes to #new" do
      get("/instituicaos/new").should route_to("instituicaos#new")
    end

    it "routes to #show" do
      get("/instituicaos/1").should route_to("instituicaos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/instituicaos/1/edit").should route_to("instituicaos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/instituicaos").should route_to("instituicaos#create")
    end

    it "routes to #update" do
      put("/instituicaos/1").should route_to("instituicaos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/instituicaos/1").should route_to("instituicaos#destroy", :id => "1")
    end

  end
end
