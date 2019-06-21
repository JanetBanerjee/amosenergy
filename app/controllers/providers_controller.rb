class ProvidersController < ApplicationController

  def index
    @provider = Provider.all
  end

  def business
    @provider = Provider.all
  end

  def residential
    @provider = Provider.all
  end

  def create
    @provider = Provider.create(params.required(:provider).permit(:name, :user_id, :price, :e_plan,
                                                                   :energy_price, :average_rate, :average_e_rate,
                                                                   :low_rate, :med_rate, :high_rate,
                                                                   :base_charge, :term, :term_fee))

    @provider.user_id = current_user.id

    if @provider.save!
      redirect_to @provider
    else
      render :new
    end
  end

  def new
   @provider = Provider.new
  end

  def show
    @provider = Provider.find(params[:id])

    @plan = Plan.new
    @payment = Payment.new
  end

end

