dep 'ruby' do
  ruby_version = '1.9.3'
  ruby_build = '327'
  ruby_install = "#{ruby_version}-p#{ruby_build}"

  requires 'rbenv'

  met? { `rbenv versions | grep -c #{ruby_install}`.to_i > 0 }

  meet do
    `eval "$(rbenv init -)" ; rbenv install #{ruby_install}`
    `eval "$(rbenv init -)" ; rbenv global #{ruby_install}`
  end
end
