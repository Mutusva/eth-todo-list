pragma solidity ^0.5.0;

contract TodoList {
    uint public taskCount = 0; // state variable writien to the blockchain.

    struct Task {
        uint id;
        string content;
        bool completed;
    }

    mapping(uint => Task) public tasks; // this creates  a map, solidity will give us methods to see the tasks

    //  create a task at the time of bootstrapping the smart contract
    constructor() public {
       createTask("Check out solidity");
    }

    function createTask(string memory _content) public {
        taskCount ++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }
}
