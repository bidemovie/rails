class HomeController < ApplicationController
  def top
    @tasks = Task.all
  end
end
