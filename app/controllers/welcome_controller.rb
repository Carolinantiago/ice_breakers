class WelcomeController < ApplicationController
  def index
    if Tip.all.any?
      @piqued_tip = Tip.all.sample.tip_description
    else
      @piqued_tip = "No tips for today!"
    end
  end
end
