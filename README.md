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

After completing the installation guide you can get started by running the following commands in the project root.

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

https://user-images.githubusercontent.com/60617712/202599026-994f1cce-122f-4688-ab0c-ce934f0e1fe3.mov

<a name="unit-tests-demo"/>

### ...for the tests

https://user-images.githubusercontent.com/60617712/202599049-83238bef-3e02-4d0a-81ff-83c6e30bff37.mov

<a name="resources"/>


## Resources

- [The bats-core library docs](https://bats-core.readthedocs.io/en/stable/index.html)

<a name="authors"/>

## Authors

[cortesana](https://twitter.com/cortesana_dev)
