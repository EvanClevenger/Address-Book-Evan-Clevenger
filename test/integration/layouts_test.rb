require "test_helper"

class LayoutsTest < ActionDispatch::IntegrationTest
  test "Root has header" do
    get root_path
end
end