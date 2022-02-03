class AddAuthorPriceDatePublishedToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :author, :string
    add_column :books, :price, :decimal, precision: 5, scale: 2
    add_column :books, :date_published, :date
  end
end
