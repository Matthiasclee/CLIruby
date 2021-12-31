# CLIruby
With CLIruby, you can run ruby code in one command. This can be used for simply testing a line, or executing ruby code in a bash script. 

## How To Install:

Run these commands to install CLIruby:

```
wget https://raw.githubusercontent.com/Matthiasclee/CLIruby/CLIruby/CLIruby -O ./CLIruby
chmod +x ./CLIruby
sudo mkdir /usr/local/CLIruby
sudo mv ./CLIruby /usr/local/CLIruby
export PATH=$PATH:/usr/local/CLIruby
```

## How To Use

CLIruby can be run like this: ```CLIruby puts 1+1``` or ```CLIruby 'puts "1+1=#{(1+1).to_s}"'```.
If you want to use CLIruby for a longer/more complex program, you can run ```CLIruby '``` and be able to input something like this:
Note: You may need to escape special bash characters ("'()$#|), etc.

```
% CLIruby '
quote> def my_function(parameter)
quote> puts "You ran the function with #{parameter} as input."
quote> end
quote> my_function("Hello World!")
'
You ran the function with Hello World! as input.
```

CLIruby can be used in bash scripts the same as in a terminal window:

```
#script.sh
out=$(CLIruby "(1+1).to_s")
echo $out
```
```
% script.sh
2
```

You can also use the ```command``` variable to get the line(s) of code that were passed as input:

```
% CLIruby "puts command"
puts command
```

The ```command``` variable can still be defined in your program and used like any other variable:

```
% CLIruby '
quote> command = "Hello World!"
quote> puts command
quote> '
Hello World!
```
