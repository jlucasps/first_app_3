class BillsController < ApplicationController

  def create
    @bill = Bill.new(bill_params)
    @bill.user_id = params[:user_id]
    @bill.save
  end


  def destroy
    @bill = Bill.find(params[:id])
    @bill.destroy
  end


  def edit
    @bill = Bill.find(params[:id])
  end

  def update
    @bill = Bill.find(params[:id])
    @bill.update bill_params
  end


  def new_bill
    @bill = Bill.new
    @users = User.all
  end

  def create_bill
    @bill = Bill.create create_bill_params
    @users = User.all
  end

  private

  def create_bill_params
    params.permit(:user_id, :name, :description, :value, :date)
  end

  def bill_params
    params.require(:bill).permit(:name, :description, :value, :date)
  end

end
