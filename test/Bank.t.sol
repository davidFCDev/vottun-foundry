// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/Bank.sol";

contract BankTest is Test {
    Bank bank;

    function setUp() public {
        bank = new Bank();
    }

    function testDeposit() public {
        bank.deposit{value: 1 ether}();
        assertEq(bank.getBalance(), 1 ether);
    }

    function testWithdraw() public {
        bank.deposit{value: 2 ether}();
        bank.withdraw(1 ether);
        assertEq(bank.getBalance(), 1 ether);
    }

    function testWithdrawFail() public {
        vm.expectRevert("Insufficient balance");
        bank.withdraw(1 ether);
    }

    function testFuzzDeposit(uint256 amount) public {
        // Limitamos la cantidad a un rango razonable
        amount = bound(amount, 1, 1000 ether);
        vm.deal(address(this), amount);
        bank.deposit{value: amount}();
        assertEq(bank.getBalance(), amount);
    }
}
