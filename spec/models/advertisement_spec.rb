require 'rails_helper'

RSpec.describe Advertisement, type: :model do
  let(:advertisement) { Advertisement.create!(title: "Advertisement Title", copy: "Advertisement text", price: 1) }
  
  describe "attributes" do
      it "has title, copy, and price attributes" do
          expect(advertisement).to have_attributes(title: "Advertisement Title", copy: "Advertisement text", price: 1)
        end
    end


end