class V1::ArticlesController < ApplicationController
  before_action :set_article, only: %i[ show update destroy ]

  def index
    @articles = Article.all
    render json: @articles.map { |article| {id: article.hashid, title: article.title}}
  end

  def show
    render json: @article
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      render json: @article, status: :created, location: api_v1_article_url(@article)
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
  end

  private

  def set_article
    @article = Article.find(params[:hashid])
  end

  def article_params
    params.require(:article).permit(:title, :body)
  end
end
