class BooksController < ApplicationController
  def index
    books = Book.all
    render json: books, include: :users
  end

  def show
    book = Book.find(params[:id])
    render json: book, include: :users
  end

  def post
    book = Book.create(title: params[:title], author: params[:author])
    render json: book, status: :created
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    render json: book, include: :users
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    head :no_content
  end

  private

  def book_params
    params.permit(:author, :title)
  end
end
