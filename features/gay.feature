#ctrl alt j to jump to step
Feature: Gay Agenda
  In order to portray or pluralize gay
  As a CLI
  I want to be as gay as possible

  Scenario: Spread gay software
    When I run `gayify rainbow`
    Then the output should contain "🌈"

  Scenario: Gay, or Gays?
    When I run `gayify pluralize --word Gay`
    Then the output should contain "Gays"
