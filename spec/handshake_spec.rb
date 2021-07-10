# frozen_string_literal: true

require 'rspec'
require './app/handshake'

describe Handshake do
  it 'Return wink-doubleblink' do
    expected = ['wink', 'double blink']
    expect(Handshake.new(3).comms).to eq(expected)
  end

  it 'Return wink-doubleblink reversed' do
    expected = ['double blink', 'wink']
    expect(Handshake.new(19).comms).to eq(expected)
  end

  it 'Return all secrets' do
    expected = ['wink', 'double blink', 'close your eyes', 'jump']
    expect(Handshake.new(15).comms).to eq(expected)
  end

  it 'Return all secrets reversed' do
    expected = ['jump', 'close your eyes', 'double blink', 'wink']
    expect(Handshake.new(31).comms).to eq(expected)
  end
end
