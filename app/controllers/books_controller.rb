class BooksController < ActionController::API
  before_action :set_book, only: [:reserve]
  def index
    books = Book.all
    render json: books
  end

  def reserve
    return render_unavailable unless @book.available?

    @book.with_lock do
      reservation = @book.reservations.create!(reservation_params)
      @book.update!(status: :reserved)

      render json: reservation, status: :created
    end
  rescue ActiveRecord::RecordInvalid => e
    render json: { error: e.record.errors.full_messages },
           status: :unprocessable_entity
  end

  private

  def reservation_params
    params.require(:reservation).permit(:email)
  end

  def set_book
    @book = Book.find(params[:id])
  end

  def render_unavailable
    render json: { error: "Book is not available" },
           status: :unprocessable_entity
  end
end
