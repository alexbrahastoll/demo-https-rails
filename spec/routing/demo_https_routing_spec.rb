require 'rails_helper'

RSpec.describe DemoHttpsController do
  describe 'routing' do
    context 'routes to #insecure_area' do
      it { expect(get '/insecure_area').to route_to(controller: 'demo_https', action: 'insecure_area') }
    end

    context 'routes to #secure_area' do
      it { expect(get '/secure_area').to route_to(controller: 'demo_https', action: 'secure_area') }
    end
  end

  describe 'helpers' do
    context 'insecure_area_path' do
      it { expect(insecure_area_path).to eq('/insecure_area') }
    end

    context 'secure_area_path' do
      it { expect(secure_area_path).to eq('/secure_area') }
    end
  end

end
