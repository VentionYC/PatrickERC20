// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyFirstToken is ERC20{
    //string public name = "MyFirstToken";
    //uint256 public totalSupply = 1000;
    // the decimals are 18 with default setting as its included in the base ERC20 contract 
    //and  it can be change by overriding the function
    //uint8 public decimals = 18;
    //account and balance
    mapping(address => uint256) private _balances;

    constructor(uint256 initialSupply) ERC20("MyFirstToken","MF"){
        _mint(msg.sender, initialSupply);
    }

    //This gignifies that having tokens in an ERC20 simply translate to some balance in a contract's mapping
    // function balanceOf(address account) public view returns (uint256){
    //     return _balances[account];
    // }

    // function transfer(address recipient, uint256 amount) public returns (bool) {
    //     uint256 senderBalance = _balances[msg.sender];
    //     require(senderBalance >= amount, "ERC20: transfer amount exceeds balance");
    //     _balances[msg.sender] = senderBalance - amount;
    //     _balances[recipient] += amount;

    //     return true;
    // }
}