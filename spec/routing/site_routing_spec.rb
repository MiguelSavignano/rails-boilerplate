require "rails_helper"

RSpec.describe SiteController, type: :routing do
  describe "routing" do

    it "routes to #contact" do
      expect(:post => "/contact").to route_to("site#contact")
    end

  end
end
