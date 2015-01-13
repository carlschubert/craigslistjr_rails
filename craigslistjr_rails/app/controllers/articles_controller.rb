class ArticlesController < ApplicationController

  def new
  end

  def create
    category = Category.find(params[:category_id])
    params[:article][:user_id] = session[:user_id]
    @article = category.articles.new(article_params)
    if @article.save
      redirect_to category_path(params[:category_id])
    else
      render 'new'
    end
  end

  def show
    @category = Category.find(params[:category_id])
    @article = Article.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
    article = Article.find(params[:id])
    article.destroy
    redirect_to category_path(params[:category_id])
  end

  private

  def article_params
    params.require(:article).permit(:title, :price, :email, :description, :user_id)
  end
end
