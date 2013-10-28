require 'test_helper'

class AutocompleteTest < ActionDispatch::IntegrationTest

  test "autocomplete" do
    Capybara.current_driver = Capybara.javascript_driver
    visit "/"
    fill_in('search_keyword', with: 'Test')
  end
end
