highest
=======

Print the highest N numbers in a sequence.

## Usage

Highest will read from `stdin` by default. You can specify a file to read input from by running with `--file /path/to/input`. The 10 highest numbers will be printed. You can specify a different number by specifying `--number` and a value (`--number 15`).
```
$ ./highest.rb --help
Options:
  --file,   -f <s>:   The file to read from (default: stdin)
  --number, -n <i>:   The number of elements to print (default: 10)
  --help,   -h    :   Show this message
```
