// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract FunMe {
    uint256 public myValue = 1;

    function fund() public payable {
        myValue = myValue + 2;
        require(msg.value > 1e18, "did'nt send enough ETH");
    }
}