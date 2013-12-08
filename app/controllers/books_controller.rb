class BooksController < ApplicationController
	def show
	  @book = Book.find(params[:id])
	end

	def index
	  # @user = User.find(params[:user_id]) if params[:user_id]
	  # @books = @user ? @user.books.all : Book.all
	  @books = Book.all
	end

	def new
	  @book = Book.new
	end

	def create
	  @book = Book.new(book_params)
	  @book.user_id = current_user.id
	  @book.points = 10
	  if current_user.points.nil?
	  	current_user.points = 10
	  else
	  	current_user.points += 10
	  end
	  if @book.save
	    redirect_to @book
	  else
	    render 'new'
	  end
	end

	def edit
	  @book = Book.find(params[:id])
	end

	def update
	  @book = Book.find(params[:id])
	  @book.update(book_params)
	  redirect_to book_path(@book.id)
	end

	def destroy
		
	  @book = Book.find(params[:id])
	  current_user.points = current_user.points - @book.points
	  @book.destroy
	  redirect_to root_path
	end

	private

	def book_params
	  params.require(:book).permit(:title, :author, :description, :img_url, :points)
	end
end