class HitResultsController < ApplicationController

  def new
    redirect_to root_path unless is_admin
    @result = HitResult.new
  end

  def create
    result = HitResult.new(result_params)
  end

  private

  def result_params
    params.require(:hit_result).permit(:pos_c, :pos_1b, :pos_2b, :pos_3b, :pos_ss, :pos_of1, :pos_of2, :pos_of3, :pos_dh, :total_hits)
  end

end
