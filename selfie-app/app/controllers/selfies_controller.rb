class SelfiesController < ApplicationController
  def index
    @selfies = Selfie.all
  end
end
