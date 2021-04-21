Feature: In order to remember the things as an ToDo MVC user want to manage the todo list

  @TODOMVCUserToDoListManageCom
  Scenario: Verify a Todo MVC user can create a todo item
    Given Todo MVC user launch the url to add todo items
    When Todo MVC user enter "Adding first" item into the todo list
    Then Todo MVC user verify "1" item added into the "All" todo list
    And Todo MVC user verify "1" item added into the "Active" todo list
    When Todo MVC user enter "Adding second" item into the todo list
    Then Todo MVC user verify "2" item added into the "All" todo list
    And Todo MVC user verify "2" item added into the "Active" todo list

  @TODOMVCUserToDoListManageCom
  Scenario: Verify a Todo MVC user can mark a todo item as completed
    Given Todo MVC user launch the url to add todo items
    When Todo MVC user enter "Adding first" item into the todo list
    And Todo MVC user enter "Adding second" item into the todo list
    Then Todo MVC user verify "2" item added into the "All" todo list
    When Todo MVC user mark "Adding first" item as completed
    Then Todo MVC user verify "1" item added into the "Completed" todo list
    And Todo MVC user verify "1" item added into the "Active" todo list

  @TODOMVCUserToDoListManage
  Scenario: Verify a Todo MVC user can view Completed todo items
    Given Todo MVC user launch the url to add todo items
    When Todo MVC user enter "Adding first" item into the todo list
    Then Todo MVC user verify "1" item added into the "All" todo list
    When Todo MVC user mark "Adding first" item as completed
    Then Todo MVC user verify "1" item added into the "Completed" todo list
    And Todo MVC user verify "0" item added into the "Active" todo list
    And Todo MVC user verify "1" "Complete" todo item is "Adding first"

  @TODOMVCUserToDoListManage
  Scenario: Verify completed Todo items are strike through.
    Given Todo MVC user launch the url to add todo items
    When Todo MVC user enter "Adding first" item into the todo list
    Then Todo MVC user verify "1" item added into the "All" todo list
    When Todo MVC user mark "Adding first" item as completed
    Then Todo MVC user verify "1" item added into the "Completed" todo list
    And Todo MVC user verify "1" completed todo item is marked in strike through

  @TODOMVCUserToDoListManage
  Scenario: Verify completed todo items are removed from Active todo items
    Given Todo MVC user launch the url to add todo items
    When Todo MVC user enter "Adding first" item into the todo list
    Then Todo MVC user verify "1" item added into the "All" todo list
    And Todo MVC user verify "1" item added into the "Active" todo list
    When Todo MVC user enter "Adding second" item into the todo list
    Then Todo MVC user verify "2" item added into the "All" todo list
    And Todo MVC user verify "2" item added into the "Active" todo list
    When Todo MVC user mark "Adding first" item as "Complete"
    Then Todo MVC user verify "1" item added into the "Completed" todo list
    And Todo MVC user verify "1" item added into the "Active" todo list

  @TODOMVCUserToDoListManage
  Scenario: Verify incomplete todo items are displayed under Active todo items
    Given Todo MVC user launch the url to add todo items
    When Todo MVC user enter "Adding first" item into the todo list
    Then Todo MVC user verify "1" item added into the "All" todo list
    And Todo MVC user verify "1" item added into the "Active" todo list
    When Todo MVC user enter "Adding second" item into the todo list
    Then Todo MVC user verify "2" item added into the "All" todo list
    And Todo MVC user verify "2" item added into the "Active" todo list

  @TODOMVCUserToDoListManage
  Scenario: Verify a Todo MVC user can view both active and completed todo items in All tab.
    Given Todo MVC user launch the url to add todo items
    When Todo MVC user enter "Adding first" item into the todo list
    Then Todo MVC user verify "1" item added into the "All" todo list
    And Todo MVC user verify "1" item added into the "Active" todo list
    When Todo MVC user enter "Adding second" item into the todo list
    Then Todo MVC user verify "2" item added into the "All" todo list
    And Todo MVC user verify "2" item added into the "Active" todo list
    When Todo MVC user mark "Adding first" item as "Complete"
    Then Todo MVC user verify "1" item added into the "Completed" todo list
    And Todo MVC user verify "1" item added into the "Active" todo list
    And Todo MVC user verify "2" item added into the "All" todo list

  @TODOMVCUserToDoListManage
  Scenario: Verify a Todo MVC user can mark a completed todo item as incomplete
    Given Todo MVC user launch the url to add todo items
    When Todo MVC user enter "Adding first" item into the todo list
    Then Todo MVC user verify "1" item added into the "All" todo list
    And Todo MVC user verify "1" item added into the "Active" todo list
    When Todo MVC user enter "Adding second" item into the todo list
    Then Todo MVC user verify "2" item added into the "All" todo list
    And Todo MVC user verify "2" item added into the "Active" todo list
    When Todo MVC user mark "Adding first" item as "Complete"
    Then Todo MVC user verify "1" item added into the "Completed" todo list
    And Todo MVC user verify "1" item added into the "Active" todo list
    When Todo MVC user mark "Adding first" item as "Active"
    Then Todo MVC user verify "0" item added into the "Completed" todo list
    And Todo MVC user verify "2" item added into the "Active" todo list

  @TODOMVCUserToDoListManage
  Scenario: Verify a Todo MVC user can edit a incomplete todo item
    Given Todo MVC user launch the url to add todo items
    When Todo MVC user enter "Adding first" item into the todo list
    Then Todo MVC user verify "1" item added into the "All" todo list
    And Todo MVC user verify "1" item added into the "Active" todo list
    When Todo MVC user edit "Adding first" to "Editing First" in "Active" todo list
    Then Todo MVC user verify "1" "Active" todo item is "Editing First"

  @TODOMVCUserToDoListManage
  Scenario: Verify a Todo MVC user can edit a completed todo item
    Given Todo MVC user launch the url to add todo items
    When Todo MVC user enter "Adding first" item into the todo list
    Then Todo MVC user verify "1" item added into the "All" todo list
    And Todo MVC user verify "1" item added into the "Active" todo list
    When Todo MVC user mark "Adding first" item as "Complete"
    Then Todo MVC user verify "1" item added into the "Completed" todo list
    When Todo MVC user edit "Adding first" to "Editing First" in "Complete" todo list
    Then Todo MVC user verify "1" "Complete" todo item is "Editing First"

  @TODOMVCUserToDoListManage
  Scenario: Verify a Todo MVC user can add/ edit and delete an active todo item.
    Given Todo MVC user launch the url to add todo items
    When Todo MVC user enter "Adding first" item into the todo list
    Then Todo MVC user verify "1" item added into the "All" todo list
    And Todo MVC user verify "1" item added into the "Active" todo list
    When Todo MVC user edit "Adding first" to "Editing First" in "Active" todo list
    Then Todo MVC user verify "1" "Active" todo item is "Editing First"
    When Todo MVC user delete "Editing First" from the "Active" todo list
    Then Todo MVC user verify "0" item added into the "All" todo list
    And Todo MVC user verify "0" item added into the "Active" todo list
    And Todo MVC user verify "0" item added into the "Complete" todo list

  @TODOMVCUserToDoListManage
  Scenario: Verify a Todo MVC user can add/ edit and delete a completed todo item.
    Given Todo MVC user launch the url to add todo items
    When Todo MVC user enter "Adding first" item into the todo list
    Then Todo MVC user verify "1" item added into the "All" todo list
    And Todo MVC user verify "1" item added into the "Active" todo list
    When Todo MVC user mark "Adding first" item as "Complete"
    Then Todo MVC user verify "1" item added into the "Completed" todo list
    When Todo MVC user edit "Adding first" to "Editing First" in "Complete" todo list
    Then Todo MVC user verify "1" "Complete" todo item is "Editing First"
    When Todo MVC user delete "Editing First" from the "Complete" todo list
    Then Todo MVC user verify "0" item added into the "All" todo list
    And Todo MVC user verify "0" item added into the "Complete" todo list
    And Todo MVC user verify "0" item added into the "Active" todo list

  @TODOMVCUserToDoListManage
  Scenario: Verify 'Clear Completed' will be enabled for once Todo MVC user moved todo item into completed
    Given Todo MVC user launch the url to add todo items
    When Todo MVC user enter "Adding first" item into the todo list
    Then Todo MVC user verify "1" item added into the "All" todo list
    And Todo MVC user verify "1" item added into the "Active" todo list
    When Todo MVC user mark "Adding first" item as "Complete"
    Then Todo MVC user verify "1" item added into the "Completed" todo list
    And Todo MVC user verify "Clear Completed" is "Enable"
    When Todo MVC user delete "Adding first" from the "Complete" todo list
    Then Todo MVC user verify "0" item added into the "Completed" todo list
    And Todo MVC user verify "Clear Completed" is "Disabled"

  @TODOMVCUserToDoListManage
  Scenario: Verify a Todo MVC user can clear all completed todo items
    Given Todo MVC user launch the url to add todo items
    When Todo MVC user enter "Adding first" item into the todo list
    When Todo MVC user enter "Adding second" item into the todo list
    When Todo MVC user enter "Adding third" item into the todo list
    Then Todo MVC user verify "3" item added into the "All" todo list
    And Todo MVC user verify "3" item added into the "Active" todo list
    When Todo MVC user mark "Adding first" item as "Complete"
    And Todo MVC user mark "Adding second" item as "Complete"
    And Todo MVC user mark "Adding third" item as "Complete"
    Then Todo MVC user verify "3" item added into the "Completed" todo list
    And Todo MVC user verify "Clear Completed" is "Enable"
    When Todo MVC user click "Clear Completed" link
    Then Todo MVC user verify "0" item added into the "All" todo list
    And Todo MVC user verify "0" item added into the "Complete" todo list
    And Todo MVC user verify "0" item added into the "Active" todo list

  @TODOMVCUserToDoListManage
  Scenario: Verify clearing completed todo items does not delete active todo items.
    Given Todo MVC user launch the url to add todo items
    When Todo MVC user enter "Adding first" item into the todo list
    When Todo MVC user enter "Adding second" item into the todo list
    When Todo MVC user enter "Adding third" item into the todo list
    Then Todo MVC user verify "3" item added into the "All" todo list
    And Todo MVC user verify "3" item added into the "Active" todo list
    When Todo MVC user mark "Adding first" item as "Complete"
    And Todo MVC user mark "Adding third" item as "Complete"
    Then Todo MVC user verify "2" item added into the "Completed" todo list
    And Todo MVC user verify "Clear Completed" is "Enable"
    When Todo MVC user click "Clear Completed" link
    Then Todo MVC user verify "1" item added into the "All" todo list
    And Todo MVC user verify "0" item added into the "Complete" todo list
    And Todo MVC user verify "1" item added into the "Active" todo list

  @TODOMVCUserToDoListManage
  Scenario: Verify item(s) left wording changes based on the number of items left (1 item left vs. 2 items left)
    Given Todo MVC user launch the url to add todo items
    When Todo MVC user enter "Adding first" item into the todo list
    When Todo MVC user enter "Adding second" item into the todo list
    When Todo MVC user enter "Adding third" item into the todo list
    Then Todo MVC user verify "3" item added into the "All" todo list
    And Todo MVC user verify "3" item added into the "Active" todo list
    And Todo MVC user verify left wording shows "3" items left
    When Todo MVC user mark "Adding first" item as "Complete"
    Then Todo MVC user verify "3" item added into the "All" todo list
    And Todo MVC user verify "2" item added into the "Active" todo list
    And Todo MVC user verify "1" item added into the "Complete" todo list
    And Todo MVC user verify left wording shows "2" items left
    When Todo MVC user mark "Adding first" item as "Active"
    And Todo MVC user verify left wording shows "3" items left

  @TODOMVCUserToDoListManage
  Scenario: Verify a Todo MVC user can select all the todo list items by clicking on the arrow in textbox into completed todo items
    Given Todo MVC user launch the url to add todo items
    When Todo MVC user enter "Adding first" item into the todo list
    When Todo MVC user enter "Adding second" item into the todo list
    When Todo MVC user enter "Adding third" item into the todo list
    Then Todo MVC user verify "3" item added into the "All" todo list
    And Todo MVC user verify "3" item added into the "Active" todo list
    And Todo MVC user verify left wording shows "3" items left
    When Todo MVC user click down arrow in textbox
    Then Todo MVC user verify "3" item added into the "All" todo list
    And Todo MVC user verify "0" item added into the "Active" todo list
    And Todo MVC user verify "3" item added into the "Complete" todo list
    And Todo MVC user verify left wording shows "0" items left


  @TODOMVCUserToDoListManage
  Scenario: Verify a Todo MVC user cannot exceed maximum character length
    Given Todo MVC user launch the url to add todo items
    When Todo MVC user enter "Adding first" item into the todo list
    #DB datatype and length needed to complete this scenario

  @TODOMVCUserToDoListManage
  Scenario: Verify a Todo MVC user can enter same to do item multiple times
    Given Todo MVC user launch the url to add todo items
    When Todo MVC user enter "Adding first" item into the todo list
    And Todo MVC user enter "Adding first" item into the todo list
    And Todo MVC user enter "Adding first" item into the todo list
    Then Todo MVC user verify "3" item added into the "All" todo list
    And Todo MVC user verify "3" item added into the "Active" todo list
    And Todo MVC user verify left wording shows "3" items left
    When Todo MVC user delete "Adding first" from the "Active" todo list
    Then Todo MVC user verify "2" item added into the "All" todo list
    And Todo MVC user verify "2" item added into the "Active" todo list
    And Todo MVC user verify left wording shows "2" items left

  @TODOMVCUserToDoListManage
  Scenario: Verify a Todo MVC user can enter special characters and numbers as the todo item
    Given Todo MVC user launch the url to add todo items
    When Todo MVC user enter "Adding special !@#$%&*()_" item into the todo list
    And Todo MVC user enter "123245890" item into the todo list
    Then Todo MVC user verify "2" item added into the "All" todo list
    And Todo MVC user verify "2" item added into the "Active" todo list
    And Todo MVC user verify left wording shows "2" items left
    When Todo MVC user delete "123245890" from the "Active" todo list
    Then Todo MVC user verify "1" item added into the "All" todo list
    And Todo MVC user verify "1" item added into the "Active" todo list
    And Todo MVC user verify left wording shows "1" items left
