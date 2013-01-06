class SessionsController < ApplicationController
  def new
  end

  def create
  auth_hash = request.env['omniauth.auth']
  redirect_to "http://sesja.herokuapp.com/lists"
end
  def failure
  end
end
