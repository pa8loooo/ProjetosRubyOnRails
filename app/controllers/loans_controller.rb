class LoansController < ApplicationController
  def index
    @loan = Loans.all
  end

  def show
    @loan = loan.find(params[:id])
  end

  def new
    @loan = Loan.new
  end

  def create 
    @loan = Loan.new(emprestimo_params)
    if @loan.save
       @loan.book.update(available: false)
      redirect_to loan_path, notice: "Emprestimo criado"
    end
  end

  def edit
  end

  def update
    @loan = Loan.find(params[:id])
    if
      @loan.update
      redirect_to loan_params, notice: "Emprestimo atualizado com sucesso"
    else 
      render :edit
    end
  end

  def destroy
    @loan = Loan.find(params[:id])
    @loan.destroy
    redirect_to loan_params, notice: "Emprestimo excluido!"
  end

  private 

  def loan_params
    params.require(:loan).permit(:user_id, :book_id, :returned)
  end
end
