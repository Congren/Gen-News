class SavedArticlesController < ApplicationController
  before_action :set_saved_article, only: [:show, :edit, :update, :destroy]

  # GET /saved_articles
  # GET /saved_articles.json
  def index
    @saved_articles = SavedArticle.all
  end

  # GET /saved_articles/1
  # GET /saved_articles/1.json
  def show
  end

  # GET /saved_articles/new
  def new
    @saved_article = SavedArticle.new
  end

  # GET /saved_articles/1/edit
  def edit
  end

  # POST /saved_articles
  # POST /saved_articles.json
  def create
    @saved_article = SavedArticle.new(saved_article_params)

    respond_to do |format|
      if @saved_article.save
        format.html { redirect_to @saved_article, notice: 'Saved article was successfully created.' }
        format.json { render :show, status: :created, location: @saved_article }
      else
        format.html { render :new }
        format.json { render json: @saved_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /saved_articles/1
  # PATCH/PUT /saved_articles/1.json
  def update
    respond_to do |format|
      if @saved_article.update(saved_article_params)
        format.html { redirect_to @saved_article, notice: 'Saved article was successfully updated.' }
        format.json { render :show, status: :ok, location: @saved_article }
      else
        format.html { render :edit }
        format.json { render json: @saved_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saved_articles/1
  # DELETE /saved_articles/1.json
  def destroy
    @saved_article.destroy
    respond_to do |format|
      format.html { redirect_to saved_articles_url, notice: 'Saved article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saved_article
      @saved_article = SavedArticle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def saved_article_params
      params.require(:saved_article).permit(:article_id, :user_id)
    end
end
