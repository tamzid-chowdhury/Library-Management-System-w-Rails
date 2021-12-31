class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(params.require(:book).permit(:title,:author,:ISBN,:copies))
      if @book.save
        redirect_to administrator_index_path
      else
        render 'new'
      end
  end

  def show
    @book = Book.find(params[:id])
  end 

  def edit
    @book = Book.find(params[:id])
  end 
  
  def update
    @book = Book.find(params[:id])
    if @book.update(params.require(:book).permit(:title,:author,:ISBN,:copies))
      redirect_to administrator_search_path 
    else
      render 'edit'
    end
  end

  def checkout
    @book = Book.find(params[:book_id])
    @copies = @book.copies
    @copies = @copies - 1
    @book.update(copies: @copies)
    redirect_to administrator_search_path 
  end 
  
end
