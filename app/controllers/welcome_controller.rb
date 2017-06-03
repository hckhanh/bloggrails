class WelcomeController < ApplicationController
  skip_before_action :authenticate

  def instruction
    @content = Kramdown::Document.new(File.read("#{Rails.root}/README.md")).to_html.html_safe
  end
end
