pragma solidity ^0.4.0;

contract PuppiesList {

    struct Dog {
        string name;
        uint age;
    }

    Dog[] pups;

    mapping (address => uint) ownerOfPuppies;

    function addPuppy(string _name, uint _age) internal {  /*"internal" allows access to the function from within original contracts
                                                             and contracts that inherit from it.*/
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
