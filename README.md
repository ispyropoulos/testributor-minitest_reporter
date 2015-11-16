# Testributor Minitest Reporter

This is the reporter used by [Testributor.com](http://www.testributor.com) to
get structured output from Minitest tests. When required in the project's
tests (e.g. in the test_helper.rb file) it allows the testributor workers to
send structured output to Testributor app.

## Installation
1. Add a line in your Gemfile:

```
  gem minitest-testributor
```

2. Require the reporter in your tests.
   E.g. Somewhere in the test/test_helper.rb file:

```
  require 'minitest/testributor/reporter'
```

The reporter only works when TESTRIBUTOR_REPORTERS environment variable is
present so it does not change the output of the tests in your development
machine. If you want to test that the installation actually works you can set
this environment variable. E.g.


```
  TESTRIBUTOR_REPORTERS=1 bin/rake test test/models/user.rb
```
