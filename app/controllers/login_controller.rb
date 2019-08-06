class LoginController < ApplicationController
  skip_before_action :verify_authenticity_token

  URL = "https://api.weixin.qq.com/sns/jscode2session".freeze

  def wechat_user
    # puts "---------#{params}"
    params_new = {
      appId: ENV["appId"],
      secret: ENV["secret"],
      js_code: params[:code],
      grant_type: "authorization_code"
    }
  
    @wechat_response ||= RestClient.get(URL, params: params_new)
    @wechat_user ||= JSON.parse(@wechat_response.body)
  end

  def login
    # also for Collector.find
    @user = Customer.find_or_create_by(open_id: wechat_user.fetch("openid"))
    render json: {
      userId: @user.id
    }
  end

end
