class DemoHttpsController < ApplicationController
  before_action :force_http
  force_ssl only: [:secure_area]

  def insecure_area
  end

  def secure_area
  end

  private

  def force_http_actions
    ['insecure_area']
  end
end
