require 'rails_helper'

describe "Ideas Controller" do
  context "see all ideas" do
    scenario "successful return of all ideas" do
      idea1, idea2, idea3 = create_list(:idea, 3)

      get '/api/v1/ideas'
      expect(response).to be_success
      expect(json.count).to eq(3)
      expect(json.first["title"]).to eq(idea1.title)
    end
  end

  context "create a new idea" do
    scenario "successfully" do
      params = {title: "Idea Title", body: "Idea body"}

      post '/api/v1/ideas', params: {idea: params}

      expect(response).to be_success
      expect(response.status).to eq(201)
      expect(json["title"]).to eq("Idea Title")
      expect(json["body"]).to eq("Idea body")
      expect(json["quality"]).to eq(0)
    end

    scenario "without a body, successfully" do
      params = {title: "Idea Title"}

      post '/api/v1/ideas', params: {idea: params}

      expect(response).to be_success
      expect(response.status).to eq(201)
      expect(json["title"]).to eq("Idea Title")
    end

    scenario "without a title, unsuccessfully" do
      params = {body: "Idea body"}

      post '/api/v1/ideas', params: {idea: params}

      expect(response).to_not be_success
      expect(response.status).to eq(422)
      expect(json["errors"]).to eq({"title" => ["can't be blank"]})
    end
  end

  context "edit existing idea" do

  end

  context "delete existing idea" do

  end
end
