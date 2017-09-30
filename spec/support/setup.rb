RSpec.shared_context 'setup' do
  let(:link) { FactoryGirl.create(:link, upload: upload) }
  let(:upload) { FactoryGirl.create(:upload) }
end