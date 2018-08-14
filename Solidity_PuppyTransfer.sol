pragma solidity^0.4.0;

import './Puppies.sol';      //Import file to inherit from.

contract PupTransfer is PuppiesList {        //Inherit everything from PuppiesList contract.

    function transferDog(address _newOwner) returns (uint) {     //Transfer dog to the address of the new owner.
        address owner = msg.sender;
        uint dogId = ownerOfPuppies[owner];
        delete(ownerOfPuppies[owner]);        //Delete previous ownership.
        ownerOfPuppies[_newOwner] = dogId;    //Assign new ownership.
    }

    function addKennelDog(string _name, uint _age) {
        addPuppy(_name, _age);
    }

}
