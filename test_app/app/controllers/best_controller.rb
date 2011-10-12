class BestController < ApplicationController
  def show
    block = BestInPlace::FormattingRules[params[:id]]
    render :text => block.call(params[:value])
  end
end