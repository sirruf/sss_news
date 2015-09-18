module News
  module WidgetsHelper
    def timepad_widget(s)
      s.gsub!(/timepad_event_id=([0-9]*)?/) do |match|
        render('static_pages/timepad', event_id: $1)
      end
      s.html_safe
    end
  end
end
