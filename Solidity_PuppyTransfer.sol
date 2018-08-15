pragma solidity^0.4.0;

import './Puppies.sol';      //Import file to inherit from.

contract PupTransfer is PuppiesList {        //Inherit everything from PuppiesList contract.

    function transferDog(address _newOwner) returns (uint) {     //Transfer dog to the address of the new owner.
        address owner = msg.sender;
        require (owner != _newOwner);      //Error handling to prevent owner from making a transaction to themselves.
        uint dogId = ownerOfPuppies[owner];
        delete(ownerOfPuppies[owner]);        //Delete previous ownership.
        ownerOfPuppies[_newOwner] = dogId;    //Assign new ownership.
        assert(ownerOfPuppies[owner] == 0);   //Error check that asserts that the transfer was successful. 
    }

    function addKennelDog(string _name, uint _age) {
        addPuppy(_name, _age);
    }

}
