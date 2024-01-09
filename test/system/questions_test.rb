require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "p", text: "Ask your coach anything"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"
    take_screenshot
    assert_text "I don't care, get dressed and go to work!"
  end

  test "click on Ask another question returns user to homepage" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"
    click_on "Ask another question"
    assert_selector "p", text: "Ask your coach anything"
  end
end
