// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";

contract Level18Script is Script {
    address addr = 0x30f16a94c899cc71f054c0A4a83EbA56dFE9c957;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        // 运行时字节码 (10字节)
        bytes memory runtimeCode = hex"602a60005260206000f3";

        // 初始化字节码 - 将runtimeCode放入内存并返回
        bytes memory initCode = abi.encodePacked(
            hex"69", // PUSH10
            runtimeCode, // 10字节的runtimeCode
            hex"600052", // PUSH1 0x00; MSTORE
            hex"600a", // PUSH1 0x0a (length 10)
            hex"6016", // PUSH1 0x16 (memory offset)
            hex"f3" // RETURN
        );

        address deployed;
        assembly {
            deployed := create(0, add(initCode, 0x20), mload(initCode))
        }
        (bool d,) = address(addr).call(abi.encodeWithSignature("setSolver(address)", deployed));
        require(d);
        vm.stopBroadcast();
    }
}
