// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/SimpleLoan.sol";

contract SimpleLoanTest is Test {
    SimpleLoan public loan;
    address lender = address(0xABCD);
    address borrower = address(0x1234);

    function setUp() public {
        vm.deal(lender, 10 ether); // give lender ETH
        vm.deal(borrower, 1 ether); // give borrower ETH
        vm.prank(lender);
        loan = new SimpleLoan(borrower, 0.1 ether, 7 days);
    }

    function testLoanLifecycle() public {
        // Lender funds 5 ETH
        vm.prank(lender);
        loan.fund{value: 5 ether}();

        // Borrower borrows 5 ETH
        vm.prank(borrower);
        loan.borrow();
        assertEq(borrower.balance, 6 ether);

        // Borrower repays 5.1 ETH (principal + interest)
        vm.prank(borrower);
        loan.repay{value: 5.1 ether}();

        assertEq(lender.balance, 10 ether + 0.1 ether); // got principal + interest back
    }
}
