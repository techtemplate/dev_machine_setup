dep 'rbenv' do
  met? { `brew list | grep -c rbenv`.to_i == 1 }

  meet do
    commands = [ 'brew install rbenv',
                 "echo 'eval \"$(rbenv init -)\"' >> ~/.profile" ]
    `#{commands.join ' && '}`
  end

end
