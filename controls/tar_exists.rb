tar_path = attribute('tar_path', default: '/bin/tar')

describe file(tar_path) do
  it { should exist }
end
