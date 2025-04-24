// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {SubmitHelper} from "./helper/SubmitHelper.sol";

contract Level5Script is Script {
    address addr = 0x639FD11B46ff1Bf828fB5cC792d0776E38De1081;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        address alice = makeAddr("alice");
        (bool cc,) = address(addr).call(abi.encodeWithSignature("transfer(address,uint256)", alice, 21));
        console.log(cc);
        (bool s) = SubmitHelper.submit(addr);
        console.log(s);
        vm.stopBroadcast();
    }
}
