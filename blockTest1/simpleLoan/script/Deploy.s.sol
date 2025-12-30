// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/SimpleLoan.sol";

contract DeployLoan is Script {
    function run() external {
        // 1. Load private key (default account #0 from Anvil in this case)
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");

        // 2. Start broadcasting transactions
        vm.startBroadcast(deployerPrivateKey);

        // 3. Deploy the contract
        SimpleLoan loan = new SimpleLoan(
            0x23618e81E3f5cdF7f54C3d65f7FBc0aBf5B21E8f, // borrower
            0.1 ether, // interest
            7 days // duration
        );

        // 4. Optionally: directly fund the loan in the same script
        loan.fund{value: 5 ether}();

        vm.stopBroadcast();
    }
}
