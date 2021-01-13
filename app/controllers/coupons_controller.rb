class CouponsController < ApplicationController
  
  def index
    @all_coupons = Coupon.all
  end

  def show
    @this_coupon = Coupon.find( params[ :id ] )
  end

  def new
  end

  def create
    new_coupon = Coupon.create( coupon_code: params[ :coupon ][ :coupon_code ], store: params[ :coupon ][ :store ] )
    redirect_to coupon_path( new_coupon.id )
  end

end
