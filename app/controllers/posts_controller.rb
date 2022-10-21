class PostsController < ApplicationController
  include ::HyperKittenMeow::Concerns::Controllers::PostsController

  layout "application"
end
