class FormatController < ApplicationController
  def show
    block = BestInPlace::FormattingRules[params[:id]]
    unless block
    	render :text => BestInPlace::FormattingRules.inspect
    	return
    end
    render :text => block.call(params[:value])
  end
end