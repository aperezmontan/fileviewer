require 'rails_helper'

describe LinksController, type: :request do
  include_context 'setup'

  context "when viewing a link" do

    subject do
      get "links/#{link_uid}"
    end

    context "when the link is recognized" do
      let(:link_uid) { link.uid }

      it "navigates to the page" do
        binding.pry
        expect(subject).to render_template("links/show")
      end
    end

    context "when the link is not recognized" do
      let(:link_uid) { "a" }

      it "return a 404" do
        expect(subject.status).to eq(404)
        expect(subject.body).to eq("Could not find link with id=a")
        expect(subject).to_not render_template("links/show")
      end
    end
  end
end
