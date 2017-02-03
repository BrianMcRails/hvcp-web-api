require 'rails_helper'

RSpec.describe "Dicomseries", type: :request do
  describe "GET /dicomseries" do
    it "works! (now write some real specs)" do
      get dicomseries_index_path
      expect(response).to have_http_status(200)
    end
  end
end
