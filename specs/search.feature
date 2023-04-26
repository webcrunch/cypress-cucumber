Feature: Search
  As a user I want to able to search for products
  using the search field.

  Background: Start from first page
    Given that I am on the start page

  Scenario: Searching for products including "s"
    Given I enter the letter "s" in the search field
    Then I should see the product "Bordslampa"
    And I should see the product "Spotlight"

  Scenario: Searching for products including "b"
    Given I enter the letter "b" in the search field
    Then I should see the product "Bordslampa"

# Scenario: Searching for products including "Lampett"
#   Given I enter the letter "t" in the search field
#   Then I should see the product "Lampett"

# Scenario: Searching for products including "Tak"
#   Given I enter the letter "tak" in the search field
#   Then I should see the product "Taklampa"

# Scenario: Searching for products including "l"
#   Given I enter the letter "l" in the search field
#   Then I should see the product "Taklampa"
#   And I should see the product "Bordslampa"
#   And I should see the product "Golvlampa"
#   And I should see the product "Lampett"
#   And I should see the product "Spotlight"

# Scenario: Searching for products including "sp"
#   Given I enter the letter "sp" in the search field
#   Then I should see the product "Spotlight"

# Scenario: Searching for products including "spo"
#   Given I enter the letter "spo" in the search field
#   Then I should see the product "Spotlight"