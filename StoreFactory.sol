// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "./SimpleStorageFunction.sol";

contract StoreFactory {
    SimpleStorageFunction public simpleStorageFunction;

    function createSimpleStorageFunction() public {
        simpleStorageFunction = new SimpleStorageFunction();
    }
}