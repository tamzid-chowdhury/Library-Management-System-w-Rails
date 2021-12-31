class ReviewsController < ApplicationController
    def new
        @book = Book.find(params[:book_id]) 
    end

    def create
        @book = Book.find(params[:book_id])
        @review = @book.reviews.create(params.require(:review).permit(:name, :review))
        redirect_to book_path(@book)
    end
end
