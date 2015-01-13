class ArticlesController < ApplicationController

  def new
  end

  def create
    category = Category.find(params[:category_id])
    params[:user_id] = session[:user_id]
    @article = category.articles.new(article_params)
    if @article.save
      render 'show'
    else
      render 'new'
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def article_params
    params.require(:article).permit(:title, :price, :email, :description, :user_id)
  end
end
