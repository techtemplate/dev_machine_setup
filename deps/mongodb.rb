dep 'mongodb' do
  met? { `brew list | grep -c mongodb`.to_i == 1 }

  meet do
    commands = ['brew install mongodb',
                'ln -sfv /usr/local/opt/mongodb/*.plist ~/Library/LaunchAgents']
    `#{commands.join ' && '}`
  end
end
