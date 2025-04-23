// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Level4} from "../src/Level4.sol";

contract Level4Script is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        Level4 l4 = new Level4();
        l4.attack();
        vm.stopBroadcast();
    }
}
