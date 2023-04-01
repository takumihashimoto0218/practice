class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show, :edit, :update, :destroy]
  
  def index
  end
end
