require 'spec_helper'
describe 'kodi' do

  context 'with defaults for all parameters' do
    it { should contain_class('kodi') }
  end
end
