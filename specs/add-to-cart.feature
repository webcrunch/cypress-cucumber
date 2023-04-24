Feature: Add to cart and to verify the price
  As a user I want to be able to add products
  to the cart, so that I can buy them.


  Background: Start from first page
    Given That i need to be on the first page

  Scenario Outline: Adding "<quantity>" "<product>" to the cart
    Given that i have searched for "<product>"
    When I click the buy button "<quantity>" time
    Then "<quantity>" "<product>" should be added to the cart

    Examples:
      | product    | quantity |
      | Bordslampa | 1        |
      | Bordslampa | 2        |
      | Golvlampa  | 1        |
      | Golvlampa  | 2        |
      | Golvlampa  | 3        |

  Scenario: calculating the price for "3" "Bordslampor"
    Given That the user search for "Bordslampa"
    And Added the product to the cart "3" times
    Then the price will be correct


  Scenario: calculating the price for "8" "Golvlampa"
    Given That the user search for "Golvlampa"
    And Added the product to the cart "8" times
    Then the price will be correct


  Scenario: calculating the price for "1" "Lampett"
    Given That the user search for "Lampett"
    And Added the product to the cart "1" times
    Then the price will be correct


  Scenario: calculating the price for "600" "Spotlight"
    Given That the user search for "Spotlight"
    And Added the product to the cart "600" times
    Then the price will be correct

