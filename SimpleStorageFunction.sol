// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract SimpleStorageFunction {
    uint256 myFavoriteNumber; //public, private, internal, external

    //uint256[] listOfFavoriteNumbers; 
    
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople; //[]

    // Person public pat = Person({favoriteNumber: 7, name: "Pat"});
    // Person public mariah = Person({favoriteNumber: 79, name: "Marial"});
    // Person public jon = Person({favoriteNumber: 5, name: "Jon"});

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    //view: reading state, canot modify
    //pure: can't read state or modify
    function retrive() public view returns(uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, name));
    }
}