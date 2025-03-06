// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract IAShop is ERC20, ERC20Burnable, Ownable {
    address public wethAddress;

    constructor(
        address _wethAddress,
        uint256 _initialSupply
    ) ERC20("AI Shop ", "AIS") Ownable(msg.sender) {
        wethAddress = _wethAddress;
        _mint(msg.sender, _initialSupply);
    }

    function mint(address _to, uint _amount) public onlyOwner {
        _mint(_to, _amount);
    }

    function updateWethAddress(address _newWehtAddress) public onlyOwner {
        wethAddress = _newWehtAddress;
    }
}
