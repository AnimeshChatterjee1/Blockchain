//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import"./first_contract.sol";
contract contract_deployer{
    first_contract[] public storage_array ;

    function pahla_contract_shreeganesh() public { 
       first_contract  deploy_variable = new first_contract();
    storage_array.push(deploy_variable);
    } 
    //linking contracts
    function sfStore(uint256 _index , uint256 _number) public{
        first_contract deploy_variable = storage_array[_index];
        deploy_variable.store(_number);
    }
    function sfget(uint256 _index) public view returns(uint256){
        first_contract deploy_variable = storage_array[_index];
        return deploy_variable.retrieve();

    }
}