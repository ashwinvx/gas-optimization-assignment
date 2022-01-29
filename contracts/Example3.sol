//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;

/// @title A contract to show gas optimization by limiting number fo operations
/// @author Ashwin Rachakonda 💯💯😎💯💯
/// @notice Instead of calculating amounts separately we calculate one and assign the remaining value to the other.

//Function call gas estimates
//25065 - before
//24574 - after

contract Example3 {
    uint256 marginPercentage = 30;
    function getOwnerMargin(uint256 amount)
        public
        view
        returns (uint256 amountForSender, uint256 amountForOwner)
    {
        amountForOwner = (amount * marginPercentage) / 100;
        amountForSender = amount - amountForOwner;
    }
}