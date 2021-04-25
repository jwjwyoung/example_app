class ArticlesController < ApplicationController
  def index
    @articles = Article.all.includes(:comments)
  end
end
