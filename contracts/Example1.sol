//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;

/// @title A contract to show gas optimization by packing variables
/// @author Ashwin Rachakonda 💯💯😎💯💯
/// @notice A contract to show gas optimization by packing variables and changing datatypes

//Contract deployment gas estimates
//223801 - original
//201951 - packed
//184444 - uint16 for 1000

contract Example1 {
    uint8 public day = 10;
    address public ownerAddr = 0x4e653b730367e303D30d8FB39d7350D07a60dfD6;
    uint256 public amount = 1000;
}