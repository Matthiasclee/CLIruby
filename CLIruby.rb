command = ""
ARGV.each{|arg| command += arg + " "}
command = command.reverse.sub(" ", "").reverse
print eval(command)