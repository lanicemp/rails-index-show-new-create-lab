
class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all 
    #binding.pry
  end

  def show 
    @coupon = Coupon.find(params[:id])
  end 

  def new 
    @coupon = Coupon.new
  end 

  def create 
    @coupon= Coupon.create(coupons_params)
    redirect_to coupon_path(@coupon)
  end 
end

# strong 
private 
def coupons_params 
params.require(:coupon).permit(:coupon_code, :store)
end 
#this is a way to sanitize the params and need to be put in a priviate