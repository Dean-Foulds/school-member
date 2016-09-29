class PartnershipsController < ApplicationController
   before_action :set_member
  def create
    @partnership = Partnership.new(partnership_params)
    @partnership.member = @member
    if @partnership.save
      redirect_to member_path(@member)
    else
      render "members/show"
    end
  end

  private
  def set_member
    @member = Member.find(params[:member_id])
  end
  def partnership_params
    params.require(:partnership).permit(:description, :school_id)
  end
end
