pragma solidity ^0.4.0;

contract PuppiesList {

    struct Dog {
        string name;
        uint age;
    }

    Dog[] pups;

    mapping (address => uint) ownerOfPuppies;

    function addPuppy(string _name, uint _age) {
        address owner = msg.sender;
        uint id = pups.push(Dog(_name, _age));
        ownerOfPuppies[owner] = id;             //Maps the puppy ID to the address of the contract owner.
    }

    function getPuppy() returns (string) {
        address owner = msg.sender;
        uint id = ownerOfPuppies[owner];           //Only the contract owner can get the names out.
        return pups[id-1].name;
    }


}
