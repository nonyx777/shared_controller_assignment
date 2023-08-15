require "rails_helper"

RSpec.describe TodOsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/tod_os").to route_to("tod_os#index")
    end

    it "routes to #new" do
      expect(get: "/tod_os/new").to route_to("tod_os#new")
    end

    it "routes to #show" do
      expect(get: "/tod_os/1").to route_to("tod_os#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/tod_os/1/edit").to route_to("tod_os#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/tod_os").to route_to("tod_os#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/tod_os/1").to route_to("tod_os#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/tod_os/1").to route_to("tod_os#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/tod_os/1").to route_to("tod_os#destroy", id: "1")
    end
  end
end
