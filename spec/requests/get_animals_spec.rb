require 'rails_helper'

describe "get all animals route", :type => :request do

  before { get '/animals'}

  it 'returns all animals' do
    expect(JSON.parse(response.body).size).to be(220)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
