// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Level9} from "../src/Level9.sol";

contract Level9Script is Script {
    address addr = 0x7BbCD043F2Ec6D37597593D920789A93B3b43D8A;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        Level9 l9 = new Level9{value: 0.001 ether}();
        l9.attack();
        vm.stopBroadcast();
    }
}
