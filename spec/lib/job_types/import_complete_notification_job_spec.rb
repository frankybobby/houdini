require 'rails_helper.rb'

describe JobTypes::ImportCompleteNotificationJob do
  describe '.perform' do
    it 'calls the correct active mailer' do
      expect(ImportMailer).to receive(:import_completed_notification).with(1).and_wrap_original{|m, *args|  mailer = double('object'); expect(mailer).to receive(:deliver).and_return(nil); mailer}

      job = JobTypes::ImportCompleteNotificationJob.new(1)
      job.perform
    end
  end
end