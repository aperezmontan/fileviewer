require 'rails_helper'

describe LinksController, type: :request do
  include_context 'setup'

  context "when viewing a link" do

    subject do
      get "/links/#{link_id}"
      response
    end

    context "when the link is recognized" do
      let(:link_id) { link.id }

      it "navigates to the page" do
        expect(subject).to render_template("links/show")
      end
    end

    context "when the link is not recognized" do
      let(:link_id) { "a" }

      it "raises an error" do
        expect{subject}.to raise_error(ActiveRecord::RecordNotFound)
      end
    end
  end
end
