class KeyWordsController < ApplicationController
  before_action :set_key_word, only: [:show, :edit, :update, :destroy]

  def index
    @key_words = KeyWord.all
  end

  def show
  end

  def new
    @key_word = KeyWord.new
  end

  def create
    @key_word = KeyWord.new(key_word_params)
    if @key_word.save
      redirect_to key_word_path(@key_word)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @key_word.update(key_word_params)
      redirect_to key_word_path(@key_word)
    else
      render :edit
    end
  end

  def destroy
    @key_word.destroy
    redirect_to key_words_path
  end

  private

  def key_word_params
    params.require(:key_word).permit(:name)
  end

  def set_key_word
    @key_word = KeyWord.find(params[:id])
  end
end
