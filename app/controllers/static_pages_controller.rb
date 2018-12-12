class StaticPagesController < ApplicationController

  before_action :login_required, :only => [:scan, :search, :list]

  def home
  end

  def scan
  end

  def search
  end

  def list
  end
end
