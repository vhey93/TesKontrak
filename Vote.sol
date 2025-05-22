// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Vote {
    mapping(address => uint256) public votes;
    event Voted(address indexed voter, uint256 option);

    function vote(uint256 option) public {
        require(option <= 3, "Invalid option");
        votes[msg.sender] = option;
        emit Voted(msg.sender, option);
    }
}
