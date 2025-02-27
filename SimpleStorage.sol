// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract SimpleStorage {
    // Define variables of different types
    uint256 myUint = 123;
    bool myBool = true;
    string myString = "Hello";
    address payable myAddress = payable(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
    bytes32 myBytes = "hello";

    // Define arrays of different types
    uint256[] myUintArray = [1, 2, 3];
    bool[] myBoolArray = [true, false, true];
    string[] myStringArray = ["Apple", "Bannana", "Cherry"];
    address payable[] myAddressArray = [
        payable(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4),
        payable(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4)
    ];
}