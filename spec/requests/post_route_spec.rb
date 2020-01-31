require 'rails_helper'

describe "post a animal route", :type => :request do

  before do
    post '/animals', params: { :name => 'test_name', :species => 'test_species', :breed => 'test_breed', :comment => 'test_comment' }
  end

  it 'returns the name' do
    expect(JSON.parse(response.body)['name']).to eq('test_name')
  end

  it 'returns the breed' do
    expect(JSON.parse(response.body)['breed']).to eq('test_breed')
  end

  it 'returns the name' do
    expect(JSON.parse(response.body)['species']).to eq('test_species')
  end

  it 'returns the animal content' do
    expect(JSON.parse(response.body)['comment']).to eq('test_comment')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
