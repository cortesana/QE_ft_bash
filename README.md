# QE_ft_bash

>  Foobar is a (imaginary) program... :speech_balloon:

## Table of contents
- [Installation Guide](#installation)
- [Get Started](#get-started)
	- [Program](#program)
	- [Unit tests](#unit-tests)
- [Check the demos!](#demos)
	- [Program](#program-demo)
	- [Unit tests](#unit-tests-demo)
- [Resources](#resources)
- [Authors](#authors)

<a name="installation"/>

## Installation Guide

1. Clone or download the repository:
```bash
git clone https://github.com/cortesana/QE_ft_bash.git
```
2. Add the src directory to your `PATH`:
```bash
  export PATH=$PATH:<SRC-DIR-PATH>/src/
```
3. Install `bats-core`in the project root:
```bash
git submodule add https://github.com/bats-core/bats-core.git test/bats
git submodule add https://github.com/bats-core/bats-support.git test/test_helper/bats-support
git submodule add https://github.com/bats-core/bats-assert.git test/test_helper/bats-assert
```

<a name="get-started"/>

After completing the installation guide and following every step you can get started...

<a name="program"/>

## ...running the program
```bash
echo "Foo=10" > /tmp/foobar
foobar_foo_gte_10
echo $?
```

<a name="unit-tests"/>

## ...running the tests
```bash
./test/bats/bin/bats test/test_foobar_foo_gte_10.bats 
```

<a name="demos"/>

## Check the demos!

<a name="program-demo"/>

### ...for the program


<a name="unit-tests-demo"/>

### ...for the tests

## Resources

- [The bats-core library docs](https://bats-core.readthedocs.io/en/stable/index.html)

<a name="authors"/>

## Authors

[cortesana](https://twitter.com/cortesana_dev)
