// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;

contract TodoList {
  uint public taskCount = 0;
  struct Task{
    uint id;
    string content;
    bool complited;
  }
  
  mapping(uint => Task) public tasks;

  function createTask(string memory _content) public {
    taskCount++;
    tasks[taskCount] = Task(taskCount, _content, false);
  }
}