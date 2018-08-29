class HomeController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.json { render :json => {name: '朱博泰'} }
    end
  end
end
