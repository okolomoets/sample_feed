class KeywordsController < ApplicationController
  before_action :_set_keyword, only: [:destroy]
  def index
    @keywords = Keyword.all
  end

  def new
    @keyword = Keyword.new
  end

  def create
    @keyword = Keyword.new(keyword_params)
    if @keyword.save
      redirect_to keywords_path
    else
      render :new
    end
  end

  def destroy
    @keyword.destroy
    redirect_to keywords_path
  end

  private

  def _set_keyword
    @keyword = Keyword.where(id: params[:id]).first
  end

  def keyword_params
    params.require(:keyword).permit(:title, :word_type)
  end
end