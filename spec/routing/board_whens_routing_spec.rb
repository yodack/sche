require "spec_helper"

describe BoardWhensController do
  describe "routing" do

    it "routes to #index" do
      get("/board_whens").should route_to("board_whens#index")
    end

    it "routes to #new" do
      get("/board_whens/new").should route_to("board_whens#new")
    end

    it "routes to #show" do
      get("/board_whens/1").should route_to("board_whens#show", :id => "1")
    end

    it "routes to #edit" do
      get("/board_whens/1/edit").should route_to("board_whens#edit", :id => "1")
    end

    it "routes to #create" do
      post("/board_whens").should route_to("board_whens#create")
    end

    it "routes to #update" do
      put("/board_whens/1").should route_to("board_whens#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/board_whens/1").should route_to("board_whens#destroy", :id => "1")
    end

  end
end
