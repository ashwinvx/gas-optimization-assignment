//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;

/// @title A contract to show gas optimization by using pure function and limiting number of operations
/// @author Ashwin Rachakonda 💯💯😎💯💯
/// @notice Change function from view to pure and also limit number of operations


//Function call gas estimates
//25065 - before
//24574 - after reducing number of operations
//22487 - after changing function from view to pure and moving state variable inside the function

contract Example3 {
    function getOwnerMargin(uint256 amount)
        public
        pure
        returns (uint256 amountForSender, uint256 amountForOwner)
    {
        uint256 marginPercentage = 30;
        amountForOwner = (amount * marginPercentage) / 100;
        amountForSender = amount - amountForOwner;
    }
}