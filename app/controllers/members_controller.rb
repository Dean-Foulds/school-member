class MembersController < ApplicationController
def index
    @members = Member.all
  end

  def show
    @member = Member.find(params[:id])
    @partnership = Partnership.new
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)
    if @member.save
      redirect_to member_path(@member)
    else
      render :new
    end
  end

  private

  def member_params
    params.require(:member).permit(:name, :email)
  end
end

