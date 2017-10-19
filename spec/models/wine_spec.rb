require "rails_helper"

describe Wine do
  describe ".filtered_with_params" do
    before do
      @riesling = Wine.create!(name: "riesling", color: "white")
      @malbec = Wine.create!(name: "malbec", color: "red")
    end

    it "can return all" do
      result = Wine.filtered_with_params({})

      expect(result).to match_array([@riesling, @malbec])
    end

    it "can filter by name" do
      result = Wine.filtered_with_params({ name: "iesL" })

      expect(result).to match_array([@riesling])
    end

    it "can filter by color" do
      result = Wine.filtered_with_params({ color: "red" })

      expect(result).to match_array([@malbec])
    end
  end
end