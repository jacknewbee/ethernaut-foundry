// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Level10} from "../src/Level10.sol";

contract Level10Script is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        Level10 l10 = new Level10{value: 0.0002 ether}();
        l10.attack();
        vm.stopBroadcast();
    }
}
