
require 'spec_helper'

describe file('/vagrant/fmw-12cR1-12.1.3.0.0-1.el6.x86_64.rpm'), :if => os[:family] == 'redhat' do
  it { should be_file }
end

