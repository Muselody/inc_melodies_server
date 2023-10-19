require 'rails_helper'

RSpec.describe "Articles API", type: :request do
  describe "GET v1/articles" do
  it "valid model for article" do
    article = Article.new(title: "test title", body: "test body")
    expect(article).to be_valid
  end
  end
end
