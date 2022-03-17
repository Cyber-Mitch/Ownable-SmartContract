//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

//state variables
//global variable
//function modifier
//function 
//error handling

contract Ownable{
    address public owner;

    constructor() {
        owner = msg.sender;
    } 

    modifier OnlyOwner {
        require(msg.sender == owner, "not owner");
        _;
    }

    function setOwner(address _newOwner) external {
        require(_newOwner != address(0), "invalid address");
        owner = _newOwner;
    }

    function OnlyOwnerCanCallThisFunction() external OnlyOwner{
        //code
    }

    function anyOneCanCall() external{
        //code
    }
}
