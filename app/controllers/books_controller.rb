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
        @books = Books.all
    end
    
    def show
        @books = Books.show
    end

    def edit
        @books = Books.edit
    end
    
    def destroy
        @books = Books.find(params[:id])
        books.destroy
        redirect_to '/books'
    end
    
    private
    
    def book_params
        params.require(:book).permit(:title, :body, :image, :user_id)
    end
    
end
