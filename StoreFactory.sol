// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "./SimpleStorageFunction.sol";

contract StoreFactory {
    SimpleStorageFunction[] public listOfSimplateStorage;

    function createSimpleStorageFunction() public {
        SimpleStorageFunction simpleStorage = new SimpleStorageFunction();
        listOfSimplateStorage.push(simpleStorage);
    }
}