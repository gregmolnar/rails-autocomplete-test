class WelcomeController < ApplicationController
  def index
  end

  def suggestions
    render json: [{name: 'Test'}]
  end
end
