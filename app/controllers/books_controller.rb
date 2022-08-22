class BooksController < ApplicationController
    
    def new
        @books = Books.new
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
    
end
