require "spec_helper"

describe DoacaosController do
  describe "routing" do

    it "routes to #index" do
      get("/doacaos").should route_to("doacaos#index")
    end

    it "routes to #new" do
      get("/doacaos/new").should route_to("doacaos#new")
    end

    it "routes to #show" do
      get("/doacaos/1").should route_to("doacaos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/doacaos/1/edit").should route_to("doacaos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/doacaos").should route_to("doacaos#create")
    end

    it "routes to #update" do
      put("/doacaos/1").should route_to("doacaos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/doacaos/1").should route_to("doacaos#destroy", :id => "1")
    end

  end
end
