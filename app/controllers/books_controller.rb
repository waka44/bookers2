class BooksController < ApplicationController
    
    def new
        @books = Books.new
    end
    
    def create
        book = Book.new(book_params)
        book.save
        redirect_to '/top'
    end
    
    def index
        @books = Books.index
    end
    
    def show
        @books = Books.show
    end

    def edit
        @books = Books.edit
    end
    
    private
    
    def book_params
        params.require(:book).permit(:title, :body, :image)
    end
    
end
