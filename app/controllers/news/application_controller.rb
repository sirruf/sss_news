module News
  class ApplicationController < ActionController::Base
    layout 'layouts/application'

    before_filter :set_locale

    private

    def set_locale
      user_param_locale = params[:locale]
      user_cookie_locale = cookies[:himc_locale] || I18n.default_locale

      if user_param_locale.present? && I18n.available_locales.include?(user_param_locale.to_sym)
        I18n.locale = user_param_locale || I18n.default_locale
        cookies[:himc_locale] = I18n.locale
      else
        if user_cookie_locale.present? && I18n.available_locales.include?(user_cookie_locale.to_sym)
          I18n.locale = user_cookie_locale || I18n.default_locale
        end
      end
    end

  end
end
