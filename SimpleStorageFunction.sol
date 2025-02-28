// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract SimpleStorageFunction {
    uint256 myfavoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPerson;
    mapping (string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        myfavoriteNumber = _favoriteNumber;
    }

    function retrive() public view returns (uint256) {
        return myfavoriteNumber;
    }

    function addPerson(string calldata _name, uint256 _favoriteNumber) public {
        Person memory person = Person({favoriteNumber: _favoriteNumber, name: _name});
        listOfPerson.push(person);
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}