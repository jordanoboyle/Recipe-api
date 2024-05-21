require "test_helper"

class RecipesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "create" do
    assert_difference "Recipe.count", 1 do
      post "/recipes.json", params: { 
      title: "test product", 
      ingreds: "food", 
      directions: "do stuff", 
      prep_time: 2  
    }
    end
  end
  
  test "index" do
    get "/recipes.json"
    assert_response 200
  
    data = JSON.parse(response.body)
    assert_equal Recipe.count, data.length
  end

  test "show" do
    get "/recipes/#{Recipe.first.id}.json"
    assert_response 200
  
    data = JSON.parse(response.body)
    assert_equal ["id", "title", "ingreds", "directions", "prep_time", "created_at", "updated_at"], data.keys
  end
  
  test "update" do
    recipe = Recipe.first
    patch "/recipes/#{recipe.id}.json", params: { title: "Updated name" }
    assert_response 200
  
    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
  end
  
  test "destroy" do
    assert_difference "Recipe.count", -1 do
      delete "/recipes/#{Recipe.first.id}.json"
      assert_response 200
    end
  end

end
