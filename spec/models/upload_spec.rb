require 'rails_helper'

describe Upload do
  context "validations" do
    context "names" do
      it "ensures uniqueness of names" do
        expect { create(:upload, :name => "#{upload.name}") }.to raise_error(ActiveRecord::RecordInvalid, "Validation failed: Name has already been taken")
      end

      it "ensures presence of names" do
        expect { create(:upload, :name => nil) }.to raise_error(ActiveRecord::RecordInvalid, "Validation failed: Name can't be blank")
      end
    end
  end
end