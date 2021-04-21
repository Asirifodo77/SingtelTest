$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("features_files/ToDoMVCUser.feature");
formatter.feature({
  "line": 1,
  "name": "In order to remember the things as an ToDo MVC user want to manage the todo list",
  "description": "",
  "id": "in-order-to-remember-the-things-as-an-todo-mvc-user-want-to-manage-the-todo-list",
  "keyword": "Feature"
});
formatter.before({
  "duration": 4524185462,
  "status": "passed"
});
formatter.scenario({
  "line": 4,
  "name": "Verify a Todo MVC user can create a todo item",
  "description": "",
  "id": "in-order-to-remember-the-things-as-an-todo-mvc-user-want-to-manage-the-todo-list;verify-a-todo-mvc-user-can-create-a-todo-item",
  "type": "scenario",
  "keyword": "Scenario",
  "tags": [
    {
      "line": 3,
      "name": "@TODOMVCUserToDoListManageCom"
    }
  ]
});
formatter.step({
  "line": 5,
  "name": "Todo MVC user launch the url to add todo items",
  "keyword": "Given "
});
formatter.step({
  "line": 6,
  "name": "Todo MVC user enter \"Adding first\" item into the todo list",
  "keyword": "When "
});
formatter.step({
  "line": 7,
  "name": "Todo MVC user verify \"1\" item added into the \"All\" todo list",
  "keyword": "Then "
});
formatter.step({
  "line": 8,
  "name": "Todo MVC user verify \"1\" item added into the \"Active\" todo list",
  "keyword": "And "
});
formatter.step({
  "line": 9,
  "name": "Todo MVC user enter \"Adding second\" item into the todo list",
  "keyword": "When "
});
formatter.step({
  "line": 10,
  "name": "Todo MVC user verify \"2\" item added into the \"All\" todo list",
  "keyword": "Then "
});
formatter.step({
  "line": 11,
  "name": "Todo MVC user verify \"2\" item added into the \"Active\" todo list",
  "keyword": "And "
});
formatter.match({
  "location": "Stepdefinitions_Common.todoMVCUserLaunchTheUrlToAddTodoItems()"
});
formatter.result({
  "duration": 3201775997,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Adding first",
      "offset": 21
    }
  ],
  "location": "Stepdefinitions_Common.todoMVCUserEnterItemIntoTheTodoList(String)"
});
formatter.result({
  "duration": 1517518780,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "1",
      "offset": 22
    },
    {
      "val": "All",
      "offset": 46
    }
  ],
  "location": "Stepdefinitions_Common.todoMVCUserVerifyItemAddedIntoTheTodoList(int,String)"
});
formatter.result({
  "duration": 664606570,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "1",
      "offset": 22
    },
    {
      "val": "Active",
      "offset": 46
    }
  ],
  "location": "Stepdefinitions_Common.todoMVCUserVerifyItemAddedIntoTheTodoList(int,String)"
});
formatter.result({
  "duration": 665396398,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Adding second",
      "offset": 21
    }
  ],
  "location": "Stepdefinitions_Common.todoMVCUserEnterItemIntoTheTodoList(String)"
});
formatter.result({
  "duration": 1418181210,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "2",
      "offset": 22
    },
    {
      "val": "All",
      "offset": 46
    }
  ],
  "location": "Stepdefinitions_Common.todoMVCUserVerifyItemAddedIntoTheTodoList(int,String)"
});
formatter.result({
  "duration": 615409227,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "2",
      "offset": 22
    },
    {
      "val": "Active",
      "offset": 46
    }
  ],
  "location": "Stepdefinitions_Common.todoMVCUserVerifyItemAddedIntoTheTodoList(int,String)"
});
formatter.result({
  "duration": 599546183,
  "status": "passed"
});
formatter.after({
  "duration": 1799231145,
  "status": "passed"
});
formatter.before({
  "duration": 1253545858,
  "status": "passed"
});
formatter.scenario({
  "line": 14,
  "name": "Verify a Todo MVC user can mark a todo item as completed",
  "description": "",
  "id": "in-order-to-remember-the-things-as-an-todo-mvc-user-want-to-manage-the-todo-list;verify-a-todo-mvc-user-can-mark-a-todo-item-as-completed",
  "type": "scenario",
  "keyword": "Scenario",
  "tags": [
    {
      "line": 13,
      "name": "@TODOMVCUserToDoListManageCom"
    }
  ]
});
formatter.step({
  "line": 15,
  "name": "Todo MVC user launch the url to add todo items",
  "keyword": "Given "
});
formatter.step({
  "line": 16,
  "name": "Todo MVC user enter \"Adding first\" item into the todo list",
  "keyword": "When "
});
formatter.step({
  "line": 17,
  "name": "Todo MVC user enter \"Adding second\" item into the todo list",
  "keyword": "And "
});
formatter.step({
  "line": 18,
  "name": "Todo MVC user verify \"2\" item added into the \"All\" todo list",
  "keyword": "Then "
});
formatter.step({
  "line": 19,
  "name": "Todo MVC user mark \"Adding first\" item as completed",
  "keyword": "When "
});
formatter.step({
  "line": 20,
  "name": "Todo MVC user verify \"1\" item added into the \"Completed\" todo list",
  "keyword": "Then "
});
formatter.step({
  "line": 21,
  "name": "Todo MVC user verify \"1\" item added into the \"Active\" todo list",
  "keyword": "And "
});
formatter.match({
  "location": "Stepdefinitions_Common.todoMVCUserLaunchTheUrlToAddTodoItems()"
});
formatter.result({
  "duration": 4430137060,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Adding first",
      "offset": 21
    }
  ],
  "location": "Stepdefinitions_Common.todoMVCUserEnterItemIntoTheTodoList(String)"
});
formatter.result({
  "duration": 1255170136,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Adding second",
      "offset": 21
    }
  ],
  "location": "Stepdefinitions_Common.todoMVCUserEnterItemIntoTheTodoList(String)"
});
formatter.result({
  "duration": 1261340610,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "2",
      "offset": 22
    },
    {
      "val": "All",
      "offset": 46
    }
  ],
  "location": "Stepdefinitions_Common.todoMVCUserVerifyItemAddedIntoTheTodoList(int,String)"
});
formatter.result({
  "duration": 623903222,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "Adding first",
      "offset": 20
    }
  ],
  "location": "Stepdefinitions_Common.todoMVCUserMarkItemAsCompleted(String)"
});
formatter.result({
  "duration": 133431356,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "1",
      "offset": 22
    },
    {
      "val": "Completed",
      "offset": 46
    }
  ],
  "location": "Stepdefinitions_Common.todoMVCUserVerifyItemAddedIntoTheTodoList(int,String)"
});
formatter.result({
  "duration": 584061544,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "1",
      "offset": 22
    },
    {
      "val": "Active",
      "offset": 46
    }
  ],
  "location": "Stepdefinitions_Common.todoMVCUserVerifyItemAddedIntoTheTodoList(int,String)"
});
formatter.result({
  "duration": 591225773,
  "status": "passed"
});
formatter.after({
  "duration": 330126573,
  "status": "passed"
});
});