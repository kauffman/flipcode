class FlipsController < ApplicationController

  before_filter :find_flip

  def show
  end

  def solve
  end

  def find_flip
    @flip = Flip.find(params[:id])
  end
end
