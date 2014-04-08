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

  private

  def bill_params
    params.require(:bill).permit(:name, :description, :value, :date)
  end

end
