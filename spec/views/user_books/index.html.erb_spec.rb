require 'rails_helper'

RSpec.describe "user_books/index", type: :view do
  before(:each) do
    assign(:user_books, [
      UserBook.create!(
        user: nil,
        book: nil
      ),
      UserBook.create!(
        user: nil,
        book: nil
      )
    ])
  end

  it "renders a list of user_books" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
