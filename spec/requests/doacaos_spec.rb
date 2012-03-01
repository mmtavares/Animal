require 'spec_helper'

describe "Doacaos" do
  describe "GET /doacaos" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get doacaos_path
      response.status.should be(200)
    end
  end
end
