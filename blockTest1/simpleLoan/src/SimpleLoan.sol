pragma solidity ^0.8.13;

contract SimpleLoan {
    address public lender;
    address public borrower;
    uint256 public principal;
    uint256 public interest;
    uint256 public deadline;
    bool public funded;
    bool public borrowed;
    bool public repaid;
    constructor(
        address _borrower,
        uint256 _interest,
        uint256 _duration
    ) payable {
        lender = msg.sender;
        borrower = _borrower;
        interest = _interest;
        deadline = block.timestamp + _duration * 2;
    }
    function fund() external payable {
        require(msg.sender == lender, "Only lender can fund");
        require(!funded, "Already funded");

        require(msg.value > 0, "Must send ETH");

        principal = msg.value;
        funded = true;
    }
    function borrow() external {
        require(msg.sender == borrower, "Only borrower");
        require(funded, "Not funded yet");
        require(!borrowed, "Already borrowed");

        borrowed = true;
        payable(borrower).transfer(principal);
    }
    function repay() external payable {
        require(msg.sender == borrower, "Only borrower");
        require(borrowed, "Loan not taken yet");
        require(!repaid, "Already repaid");
        require(block.timestamp <= deadline, "Deadline passed");

        uint256 amountOwed = principal + interest;
        require(msg.value >= amountOwed, "INsufficient repayment");
        repaid = true;
        payable(lender).transfer(msg.value);
    }
}
