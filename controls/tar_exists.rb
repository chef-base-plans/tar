tar_path = input('tar_path', value: '/bin/tar')

describe file(tar_path) do
  it { should exist }
end
