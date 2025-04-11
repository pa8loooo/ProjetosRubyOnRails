class LoansController < ApplicationController
  def index
    @loans = Loan.all
  end

  def show
    @loan = loan.find(params[:id])
  end

  def new
    @users = User.all
    @loan = Loan.new
    @books = Book.where(available: true)
  end

  def create 
    @loan = Loan.new(loan_params)
    if @loan.save
       @loan.book.update(available: false)
      redirect_to loans_path, notice: "Emprestimo criado"
    else
      @users = User.all
      @books = Book.where(available:true)
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @loan = Loan.find(params[:id])
    @users = User.all
    @books = Book.where(available: true).or(Book.where(id: @loan.book_id))
  end

  def update
    @loan = Loan.find(params[:id])
    if
      @loan.update(loan_params)
      redirect_to loans_user_path(@loan.user), notice: "Emprestimo atualizado com sucesso"
    else 
      @users = User.all
      @books = Book.all
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @loan = Loan.find(params[:id])
    @loan.destroy
    redirect_to loan_params, notice: "Emprestimo excluido!"
  end

  def user_loans
    @user = User.find(params[:id])
    @loans = @user.loans
  end

  private 

  def loan_params
    params.require(:loan).permit(:user_id, :book_id, :returned, :start_date, :end_date)
  end
end
