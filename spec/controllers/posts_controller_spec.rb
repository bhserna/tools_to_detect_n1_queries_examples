require "rails_helper"
require "n_plus_one_control/rspec"

RSpec.describe PostsController do
  render_views

  describe "GET index" do
    context "N+1", :n_plus_one do
      # Define `populate` callbacks which is responsible for data
      # generation (and whatever else).
      #
      # It accepts one argument – the scale factor (read below)
      populate { |n| FactoryBot.create_list(:post, n) }
    
      specify do
        expect { get :index }.to perform_constant_number_of_queries
      end
    end
  end
end