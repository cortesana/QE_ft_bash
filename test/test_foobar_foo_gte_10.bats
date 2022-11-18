setup_file() {
    DIR="$( cd "$( dirname "$BATS_TEST_FILENAME" )" >/dev/null 2>&1 && pwd )"
    PATH="$PATH:$DIR/../src"
    chmod u+x ./src/foobar_foo_gte_10
}

setup() {
    load 'test_helper/bats-support/load'
    load 'test_helper/bats-assert/load'
}

teardown() {
    if [[ -e /tmp/foobar ]]; then
        rm -f /tmp/foobar
    fi
}

@test "should PASS if Foo is bigger or equal to 10" {
    echo "Foo = 10" > /tmp/foobar
    run foobar_foo_gte_10
    assert_output "PASS - Option 'Foo' is greater than or equal to '10' in '/tmp/foobar'"
}

@test "should FAIL if Foo is smaller than 10" {
    echo "Foo=5" > /tmp/foobar
    run foobar_foo_gte_10
    assert_failure
    assert_output "FAIL - Option 'Foo' is greater than or equal to '10' in '/tmp/foobar'"
}

@test "should FAIL and return error message if configuration file not found" {
    run foobar_foo_gte_10
    assert_failure
    assert_output "INPUT ERROR: /tmp/foobar configuration file was not found"
}

@test "should FAIL if Foo not numeric" {
    echo "Foo="hello"" > /tmp/foobar
    run foobar_foo_gte_10
    assert_failure
    assert_output "INPUT ERROR: Foo is not numeric"
}

@test "should FAIL if Foo is empty" {
    echo "Foo=" > /tmp/foobar
    run foobar_foo_gte_10
    assert_failure
    assert_output "INPUT ERROR: Foo is empty"
}

@test "should load last occurence of Foo in multiple line configuration file" {
    echo "Foo = 1
        Foo = 0
        Foo = 134" > /tmp/foobar
    run foobar_foo_gte_10
    assert_output "PASS - Option 'Foo' is greater than or equal to '10' in '/tmp/foobar'"
}

