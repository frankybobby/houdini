require 'rails_helper'
require 'controllers/support/shared_user_context'

describe RolesController, :type => :controller do
  describe 'authorization' do
    include_context :shared_user_context
    describe 'rejects unauthorized users' do
      describe 'create' do
          include_context :open_to_np_admin, :post, :create, nonprofit_id: :__our_np
      end
      
      describe 'destroy' do
          include_context :open_to_np_admin, :delete, :destroy, nonprofit_id: :__our_np
      end
      
      
    end
  end
end