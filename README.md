# CLIruby
With CLIruby, you can run ruby code in one command. This can be used for simply testing a line, or executing ruby code in a bash script. 

## To Install:

Download the CLIruby file from this repo and run these commands:

```
chmod +x ./CLIruby
sudo mkdir /usr/local/CLIruby
sudo mv ./CLIruby /usr/local/CLIruby
export PATH=$PATH:/usr/local/CLIruby
```

## How To Use

CLIruby can be run like this: ```CLIruby puts 1+1``` or ```CLIruby 'puts "1+1=#{(1+1).to_s}"'```.
If you want to use CLIruby for a longer/more complex program, you can run ```CLIruby '``` and be able to input something like this:

```
% CLIruby '
quote> def my_function(parameter)
quote> puts "You ran the function with #{parameter} as input."
quote> end
quote> my_function("Hello World!")
'
You ran the function with Hello World! as input.
```
