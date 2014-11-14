class DemoHttpsController < ApplicationController
  force_ssl only: [:secure_area]
  force_http [:insecure_area]

  def insecure_area
  end

  def secure_area
  end
end
