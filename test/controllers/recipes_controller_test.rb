require "test_helper"

class RecipesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "create" do
    assert_difference "Recipe.count", 1 do
      post "/recipes.json", params: { title: "test product", ingreds: "food", directions: "do stuff", prep_time: 2  }
    end
  end
end
