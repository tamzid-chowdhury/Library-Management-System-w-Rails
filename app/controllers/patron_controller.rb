class PatronController < ApplicationController
  def index
  end

  def search_results
    if params[:title] != '' && params[:author] != '' && params[:ISBN] != ''
      @books = Book.where(title: params[:title], author: params[:author], ISBN: params[:ISBN])
    elsif params[:title] != '' && params[:author] != ''
      @books = Book.where(title: params[:title], author: params[:author])
    elsif params[:title] != '' && params[:ISBN] != ''
      @books = Book.where(title: params[:title], ISBN: params[:ISBN])
    elsif params[:author] != '' && params[:ISBN] != ''
      @books = Book.where(author: params[:author], ISBN: params[:ISBN])
    elsif params[:title] != ''
      @books = Book.where(title: params[:title])
    elsif params[:author] != ''
      @books = Book.where(author: params[:author]) 
    elsif params[:ISBN] != ''
      @books = Book.where(ISBN: params[:ISBN]) 
    else 
      @books = Book.where(ISBN: params[:ISBN]) 
    end
  end

end
