class CompaniesController < ApplicationController
  # GET /companies
  def index
    @companies = Company.all
  end

  # GET /companies/1
  def show
    @company = Company.find params[:id]
  end

  # GET /companies/new
  def new
    @company = Company.new
  end

  # POST /companies
  def create
    permitted_params = params.require(:company).permit(:name, :active)
    @company = Company.new(permitted_params)
    if @company.save
      redirect_to @company
    else
      render :new
    end
  end
end
