class ArticlesController < ApplicationController
    def index
      @articles = Article.all
      @articles = @articles.where(author: params)
    end
    def edit
      @article.title = title
      @article.author = params
      @article.updated_at = Time.now
      @article.save
    end
  end
  