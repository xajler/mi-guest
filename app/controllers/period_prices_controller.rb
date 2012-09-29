class PeriodPricesController < ApplicationController

  autocomplete :apartment_type, :name, full: true

  def index
    @period_prices = PeriodPrice.all
  end

  def new
    @period_price = PeriodPrice.new
  end

  def edit
    @period_price = PeriodPrice.find(params[:id])
    @apartment_type_name = @period_price.apartment_type.name
  end

  def create
    @period_price = PeriodPrice.new(params[:period_price])

    if @period_price.save
      flash[:notice] = t(:period_prices_create_notice)
      redirect_to action: "index"
    else
      render action: "new"
    end
  end

  def update
    @period_price = PeriodPrice.find(params[:id])

    if @period_price.update_attributes(params[:period_price])
      flash[:notice] = t(:period_prices_update_notice)
      redirect_to action: "index"
    else
      render action: "edit"
    end
  end

  def destroy
    @period_price = PeriodPrice.find(params[:id])
    @period_price.destroy

    redirect_to period_prices_url
  end
end
