// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Level21} from "../src/Level21.sol";

contract Level21Script is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        Level21 bob = new Level21();
        bob.attack(0x4F4f9D2aae43aCa0C9748599908463bBA2B2D903);
        vm.stopBroadcast();
    }
}
