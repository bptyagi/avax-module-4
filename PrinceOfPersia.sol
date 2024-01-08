// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract PrinceOfPersia is ERC20, Ownable(msg.sender) {

    uint256 public sands = 0;
    uint256 public swordStrength = 1;

    constructor() ERC20("PrinceOfPersia", "POP") {
        _mint(msg.sender, 10);
        sands = 10;
    }

    function collectSand(uint sandAmt) public onlyOwner {
        _mint(msg.sender, sandAmt);
    }

    function fightDemons() public {

        require(sands>=2 && swordStrength>0,"not enough strength to fight demons");
        sands -= 2;
        swordStrength--;
    }

   function buySword() public {
        require(sands>=5,"not enough sand to forge sword");
        _burn(msg.sender, 5);

        swordStrength += 5;
    }

}
