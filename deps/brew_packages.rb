brew_packages = [ 'git', 'ruby-build' ]

brew_packages.each do |package|
  dep package do
    met? { `brew list | grep -c #{package}`.to_i > 0 }
    meet { `brew install #{package}` }
  end
end

dep 'brew_packages' do
  brew_packages.each do |package|
    requires package
  end
end
