require application_systems_test_case

class Hometest < ApplicationSytemsTestCase
    test "visit index" do
        assert_selector "h1"
    end
end