pragma solidity ^0.4.0;

contract Group {

        struct Persons{
        string name;
        uint age;
        }

    Persons[] members;

    function addNewMembers(string _name, uint _age) {
        members.push(Persons(_name, _age));
    }

    function getAverageAge() view returns(uint){
        uint total;
        for (uint i=0; i < members.length; i++) {
        total += members[i].age;
        }
        return total/members.length;
    }

}
