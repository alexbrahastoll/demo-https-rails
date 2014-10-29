require 'rails_helper'

RSpec.describe DemoHttpsController do
  render_views

  describe 'GET insecure_area' do
    context 'with HTTP' do
      before { get :insecure_area }

      it { expect(response).to be_success }
    end

    context 'with HTTPS' do
      before do
        request.env['rack.url_scheme'] = 'https'
        get :insecure_area
      end

      it { expect(response.code).to eq('301') }
    end
  end

  describe 'GET secure_area' do
    context 'with HTTP' do
      before { get :secure_area }

      it { expect(response.code).to eq('301') }
    end

    context 'with HTTPS' do
      before do
        request.env['rack.url_scheme'] = 'https'
        get :secure_area
      end

      it { expect(response).to be_success }
    end
  end
end
