Feature: Add to cart
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
      | Golvlampa  | 1        |
      | Golvlampa  | 2        |
      | Golvlampa  | 3        |

  Scenario: calculating the price for "3" "Bordslampor"
    Given That the user search for "Bordslampa"
    And Added the product to the cart "3" times
    Then the price will be correct


