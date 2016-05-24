require 'spec_helper'
describe 'slurm' do

  context 'with defaults for all parameters' do
    it { should contain_class('slurm') }
  end
end
