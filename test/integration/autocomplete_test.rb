require 'test_helper'

class AutocompleteTest < ActionDispatch::IntegrationTest

  test "autocomplete" do
    Capybara.current_driver = Capybara.javascript_driver
    visit "/"
    field = 'search_keyword'
    fill_in('search_keyword', with: 'Test')
    page.execute_script %Q{ $('##{field}').trigger("focus") }
    suggestion = page.find('div.tt-suggestion')
    assert_equal "Test", suggestion.text
  end
end
