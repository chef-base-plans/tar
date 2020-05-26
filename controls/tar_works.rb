tar_test = input('tar_test', value: '/bin/tar -cvf run.tar /hab/svc/tar/hooks/run')

describe bash(tar_test) do
  its('stdout') { should match /run/ }
  its('exit_status') { should eq 0 }
end

describe file('run.tar') do
  it { should exist }
end
