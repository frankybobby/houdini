require 'rails_helper'
require 'controllers/support/shared_user_context'

describe RecurringDonationsController, :type => :controller do
  describe 'authorization' do
    include_context :shared_user_context
    describe 'open to all (note: edit token is checked inside methods)' do
      describe 'edit' do
        include_context :open_to_all, :get, :edit, nonprofit_id: :__our_np
      end

      describe 'destroy' do
        include_context :open_to_all, :delete, :destroy, nonprofit_id: :__our_np
      end

      describe 'update' do
        include_context :open_to_all, :put, :update, nonprofit_id: :__our_np
      end

      describe 'update_amount' do
        include_context :open_to_all, :put, :update_amount, nonprofit_id: :__our_np
      end


    end
  end
end