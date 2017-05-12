class ArticlesController < ApplicationController
  before_action :load_article, except: %i[index new create update]

  def index
    @articles = Article.all.order(created_at: :desc)
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    lab = Lab.find(params[:lab_id])
    if params[:publish]
      article = lab.articles.create(article_params)
      redirect_to article_path(article)
    else
      render text: 'not implemented'
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @article.destroy!
  end

  private

  def load_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :body)
  end
end
