class ApplicationController < ActionController::Base
  unless Rails.env.production?
    before_action do
      Prosopite.scan
    end

    after_action do
      Prosopite.finish
    end
  end
end
