require 'spec_helper'

describe file('/opt/oracle/product/fmw-12cR1-12.1.3.0.0'), :if => os[:family] == 'redhat' do
  it { should be_directory }
end

