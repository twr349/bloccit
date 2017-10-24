require 'rails_helper'

RSpec.describe AdvertisementsController, type: :controller do

let(:my_advertisment) { Advertisement.create!(title: RandomData.random_sentence, copy: RandomData.random_paragraph, price: RandomData.random_interger) }

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
    
    it "assigns [my_advertisment] to @advertisements" do
      
    end
  end

  

end
