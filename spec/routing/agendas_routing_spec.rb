require "spec_helper"

describe AgendasController do
  describe "routing" do

    it "routes to #index" do
      get("/agendas").should route_to("agendas#index")
    end

    it "routes to #new" do
      get("/agendas/new").should route_to("agendas#new")
    end

    it "routes to #show" do
      get("/agendas/1").should route_to("agendas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/agendas/1/edit").should route_to("agendas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/agendas").should route_to("agendas#create")
    end

    it "routes to #update" do
      put("/agendas/1").should route_to("agendas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/agendas/1").should route_to("agendas#destroy", :id => "1")
    end

  end
end
