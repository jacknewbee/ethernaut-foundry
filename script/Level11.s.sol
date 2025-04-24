// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Level11} from "../src/Level11.sol";

contract Level11Script is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        Level11 l11 = new Level11();
        l11.attack();
        vm.stopBroadcast();
    }
}
