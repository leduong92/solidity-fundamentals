// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract SimpleStorageFunction {
    uint256 public favoriteNumber; //public, private, internal, external
    
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    //view: reading state, canot modify
    //pure: can't read state or modify
    function retrive() public view returns(uint256) {
        return favoriteNumber;
    }
}