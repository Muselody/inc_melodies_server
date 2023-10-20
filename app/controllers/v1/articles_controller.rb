class V1::ArticlesController < ApplicationController
  include ResponseHandler
  before_action :set_article, only: %i[ show update destroy ]

  def index
    @articles = Article.all
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      render json: { success: "article successfully created" }, status: :created
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  def update
    if @article.update(article_params)
      render json: @article
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @article.destroy
      delete_success
  end

  private

  def set_article
    @article = Article.find(params[:hashid])
  end

  def article_params
    params.require(:article).permit(:title, :body)
  end
end
