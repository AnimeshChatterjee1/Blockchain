//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;
contract first_contract {
    uint256 public regno; //initialized to 5424
    address contract_address =0xd9145CCE52D386f254917e481eB44e9943F39138;
people public student=people({regno:5440,name:"MANAS"});
    function store(uint256 passedvariable)public {
        regno=passedvariable;
    }
    function retrieve() public view  returns(uint){
        return regno;
    }
//STRUCT AND ARRAYS 
struct people  {
    uint256 regno;
    string name;
}


//mapping part
mapping(string => uint256) public name_to_regno;
//creating array
people[] public array1 ;
function add_student(string memory _name,uint256 _regno)public {
    people memory newstudent = people({regno:_regno ,name: _name});
    array1.push(newstudent);
    name_to_regno[_name]=_regno;
    
}
//storages available in solidity : stack , memory,storage, calldata,code ,logs

//mapping is equivalent to  dictionary 

}