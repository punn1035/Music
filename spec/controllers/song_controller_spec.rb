require 'rails_helper'

describe "songs controller spec", :type => :request do
  it 'check have 3 songs? ' do
    get '/song/html'
    expect(assigns[:songs].length).to eq(3)
  end
  
  it 'check songs is instance of Song' do
    get '/song/html'
    expect(assigns[:songs].instance_of?(Song.all.class))
  end
end