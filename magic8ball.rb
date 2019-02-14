equire "colorize"

def puts_git(cmd)
  puts `git #{cmd} -h`
  menu
end