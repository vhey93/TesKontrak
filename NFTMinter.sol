// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract NFTMinter {
    mapping(address => bool) public minted;
    event Minted(address indexed minter);

    function mint() public {
        require(!minted[msg.sender], "Already minted");
        minted[msg.sender] = true;
        emit Minted(msg.sender);
    }
}
