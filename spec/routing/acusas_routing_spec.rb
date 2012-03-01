require "spec_helper"

describe AcusasController do
  describe "routing" do

    it "routes to #index" do
      get("/acusas").should route_to("acusas#index")
    end

    it "routes to #new" do
      get("/acusas/new").should route_to("acusas#new")
    end

    it "routes to #show" do
      get("/acusas/1").should route_to("acusas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/acusas/1/edit").should route_to("acusas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/acusas").should route_to("acusas#create")
    end

    it "routes to #update" do
      put("/acusas/1").should route_to("acusas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/acusas/1").should route_to("acusas#destroy", :id => "1")
    end

  end
end
