//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;

/// @title A contract to show gas optimization by using temp variables and calldata
/// @author Ashwin Rachakonda 💯💯😎💯💯
/// @notice A contract to show gas optimization by using temp variables and calldata

//Function call gas estimates
//50355 - original
//48534 - after calldata
//48499 - after temp variable to keep array length
//47719 - after using temp variable to calculate sum

contract Example2 {
    uint public counter;
    
    function incrementBy(uint[] calldata arr) external {
        uint arrLength =  arr.length;
        uint tempSum = counter;
        for (uint idx = 0; idx < arrLength; idx++){
            tempSum += arr[idx];
        }
        counter = tempSum;
    }
}