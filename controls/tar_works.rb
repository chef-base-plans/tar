tar_test = attribute('tar_test', default: '/bin/tar -cvf run.tar /hab/svc/tar/hooks/run')

describe bash(tar_test) do
  its('stdout') { should match /hooks/ }
  its('stderr') { should eq '' }
  its('exit_status') { should eq 0 }
end

describe file(/hab/svc/tar/run.tar) do
  it { should exist }
end
