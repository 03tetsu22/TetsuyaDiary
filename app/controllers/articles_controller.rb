class ArticlesController < ApplicationController
  def index
  	@articles = Article.all
  end

  def new
  	@article = Article.new
  	#水色はモデル名を@のところに入れておく
  	#ダミーのようなもの
  end
 
 def create
 	@article = Article.new(article_params)
 	#データを入れる空のもの
 	#データを受け取る
 	@article.save
 	redirect_to '/articles'
  end

def show
	@article = Article.find(params[:id])
  end
  private 

  def article_params
  	params.require(:article).permit(:title, :body, :author)
  end
  #書き換えるなら紫色を
  #書き方を省略できる

  

end
