// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Level14} from "../src/Level14.sol";

contract Level14Script is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        new Level14();
        vm.stopBroadcast();
    }
}
