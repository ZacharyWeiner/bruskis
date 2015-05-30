require 'rails_helper'

RSpec.describe "Roasts", type: :request do
  describe "GET /roasts" do
    it "works! (now write some real specs)" do
      get roasts_path
      expect(response).to have_http_status(200)
    end
  end
end
