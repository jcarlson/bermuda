Feature: Aruba runs correctly

    Scenario: Hello world
        When I run `echo hello world`
        Then the output should contain "hello world"

    Scenario: Hello again world
        When I run `echo hello world`
        And I wait for stdout to contain "hello world"
        Then the exit status should be 0

    Scenario: Trouble in Hello Town
        When I run `echo hello town`
        And I wait for stdout to contain "hello world"
        Then the exit status should be 0