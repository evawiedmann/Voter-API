require 'rails_helper'

describe "post a state route", :type => :request do

  before do
    post '/states', params: { :name => 'test_name', :content => 'test_content' }
  end

  it 'returns the state name' do
    expect(JSON.parse(response.body)['name']).to eq('test_name')
  end

  it 'returns the state check registration information' do
    expect(JSON.parse(response.body)['check_reg']).to eq('test_check_reg')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
