
class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all 
    #binding.pry
  end
  def show 
  end 

  def new 
  end 

  def create 
    Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
    redirect_to coupons_path
  end 
end
