class RecordsController < ApplicationController
  def index
    @records = Record.all.order("created_at DESC")
  end

  def new
    @record = Record.new
  end

  def create
    Record.create(record_params)
    redirect_to records_path
  end

  def show
    @record = Record.find(params[:id])
  end


  def edit
    @record = Record.find(params[:id])
  end

  def update
    record = Record.find(params[:id])
    record.update(record_params)
    redirect_to records_path(record.id)
  end

  def destroy
    record = Record.find(params[:id])
    record.destroy
    redirect_to records_path
  end


  private
  def record_params
    params.require(:record).permit(:content1, :content2, :content3)
  end

end
