inPathScheme
============

A scheme implementation of a command line file path search tool.

## Build

Install [Gambit Scheme](http://gambitscheme.org/wiki/index.php/Documentation) (gsc, gsi...).

```sh
make 
```

## Run

Help/usage instructions
```sh
$ inPath
```

List all file paths in child directories.
```sh
$ inPath ../some/path/
```

Filter file paths with a string.
```sh
$ inPath .scm ./
```
