// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";

contract SubmitTest is Test {
    address instanceAddr = 0x8D3FE79266fF6b750865ba01FB0de9116EE3Dd3C;
    address levelAddr = 0x2C2307bb8824a0AbBf2CC7D76d8e63374D2f8446;
    address naut = 0xa3e7317E591D5A0F1c605be1b3aC4D2ae56104d6;

    function setUp() public {}

    function test_Submit() public {
        vm.prank(0xb1Eab112a506ab057ED7c5E9aB32758521497951);
        (bool b,) = address(naut).call(abi.encodeWithSignature("submitLevelInstance(address)", instanceAddr));
        console.log(b);
    }

    function test_Valid() public {
        (bool b, bytes memory r) = address(levelAddr).call(
            abi.encodeWithSignature(
                "validateInstance(address,address)", instanceAddr, 0xb1Eab112a506ab057ED7c5E9aB32758521497951
            )
        );
        bool isValid = abi.decode(r, (bool));
        console.log(b, isValid);
    }
}
