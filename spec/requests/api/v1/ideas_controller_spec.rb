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
    scenario "successfully update title" do
      idea = create(:idea, title: "Initial Idea title", body: "initial body")
      new_title = {title: "New Title"}

      patch "/api/v1/ideas/#{idea.id}", params: {idea: new_title}

      expect(response).to be_success
      expect(response.status).to eq(204)

      updated_idea = Idea.find(idea.id)
      expect(updated_idea.title).to eq("New Title")
    end

    scenario "successfully update body" do
      idea = create(:idea, title: "Initial Idea title", body: "initial body")
      new_body = {body: "New Body"}

      patch "/api/v1/ideas/#{idea.id}", params: {idea: new_body}

      expect(response).to be_success
      expect(response.status).to eq(204)

      updated_idea = Idea.find(idea.id)
      expect(updated_idea.body).to eq("New Body")
    end

    scenario "successfully update quality" do
      idea = create(:idea, title: "Initial Idea title", body: "initial body", quality: 0)
      new_quality = {quality: 1}

      patch "/api/v1/ideas/#{idea.id}", params: {idea: new_quality}

      expect(response).to be_success
      expect(response.status).to eq(204)

      updated_idea = Idea.find(idea.id)
      expect(updated_idea.quality).to eq(1)
    end

    xscenario "with invalid params, unsuccessfully" do
      idea = create(:idea, title: "Initial Idea title", body: "initial body")
      new_title = {title: nil}

      patch "/api/v1/ideas/#{idea.id}", params: {idea: new_title}

      expect(response).to_not be_success
      expect(response.status).to eq(422)
      expect(json["errors"]).to eq({"title" => ["can't be blank"]})
    end
  end

  context "delete existing idea" do
    scenario "successfully" do
      idea = create(:idea, title: "To be", body: "deleted soon")
      expect(Idea.count).to eq(1)

      delete "/api/v1/ideas/#{idea.id}"

      expect(response).to be_success
      expect(Idea.count).to eq(0)
    end
  end
end
