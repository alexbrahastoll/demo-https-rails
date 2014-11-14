module ForceHTTP
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def force_http(actions)
      before_action :force_http_redirect, only: actions
    end
  end

  def force_http_redirect
    if request.ssl?
      options = {
        protocol: 'http://',
        host: request.host,
        path: request.fullpath
      }

      flash.keep
      insecure_url = ActionDispatch::Http::URL.url_for(options)
      redirect_to insecure_url, status: :moved_permanently
    end
  end
end
