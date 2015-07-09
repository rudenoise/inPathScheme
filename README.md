inPathScheme
============

A scheme implementation of a command line file path search tool.

## Build

Install Gambit Scheme (if you see compiler errors you may have issues between the [compiler that built gambit and the default on your system](https://github.com/Homebrew/homebrew/issues/17099)), then:

  ```sh
  $ ./build.sh 
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
