// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract SimpleStorageFunction {
    uint256 myFavoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPerson;

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrive() public view returns (uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        Person memory newPerson = Person({favoriteNumber: _favoriteNumber, name: _name});
        listOfPerson.push(newPerson);
    }

}