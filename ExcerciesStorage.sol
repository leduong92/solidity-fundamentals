// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract ExcerciesStorage {
    //1. Create a favorite number
    uint256 favoriteNumber;

    //how about list
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public litsOfNumbers;
    mapping (string => uint256) public nameToNumbers;

    //2. storage favoritenumber, input is a number and storage to favoriteNumber
    function storageNumber(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    //3. Return favoriate number to call
    function retriveNumber() public view returns (uint256) {
        return favoriteNumber;
    }

    //4. Add person to the list
    function addPerson(string memory _name, uint256 _number) public {
        Person memory p = Person({favoriteNumber: _number, name: _name});
        litsOfNumbers.push(p);
        nameToNumbers[_name] = _number;
    }
}