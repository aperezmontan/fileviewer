require 'rails_helper'

describe Link do
  context "validations" do
    context "uids" do
      it "ensures uniqueness of uids" do
        expect { create(:link, :uid => "link.uid") }.to raise_error(ActiveRecord::RecordInvalid, "Validation failed: Uid has already been taken")
      end

      it "ensures presence of uids" do
        expect { create(:link, :uid => nil) }.to raise_error(ActiveRecord::RecordInvalid, "Validation failed: Uid can't be blank")
      end
    end
  end
end