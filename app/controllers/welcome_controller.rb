class WelcomeController < ApplicationController
  skip_before_action :authenticate

  def instruction
  end
end
