module News
  class ApplicationController < ActionController::Base
    layout 'layouts/application'
    helper Menu::ApplicationHelper
  end
end
