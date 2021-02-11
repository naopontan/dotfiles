### エイリアス
Pry.commands.alias_command 'c', 'continue'
Pry.commands.alias_command 'n', 'next'
Pry.commands.alias_command 's', 'step'
Pry.commands.alias_command 'f', 'finish'

#
Pry.commands.alias_command 'ss', 'show-stack'

def my_caller
  caller.reject {|x| x["vendor/bundle"] || x["/.rbenv/versions/"] }.map {|s| s.sub(Dir.pwd + File::SEPARATOR, '')}
end
