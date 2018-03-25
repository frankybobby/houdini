require 'rails_helper'
require 'controllers/support/shared_user_context'

describe AwsPresignedPostsController, :type => :controller do
  describe 'authorization' do
    include_context :shared_user_context
    describe 'rejects unauthorized users' do
      describe 'create' do
        include_context :open_to_registered, :post, :create
      end
    end
  end
end