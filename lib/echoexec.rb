def echo_and_exec command
  puts command
  `#{command}`
end