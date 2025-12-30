pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/SimpleStorage.sol";

contract SimpleStorageTest is Test {
    SimpleStorage public store;

    function setUp() public {
        store = new SimpleStorage();
    }

    function testSetAndGet() public {
        store.set(42);
        assertEq(store.get(), 42);
    }

    function testDefaultIsZero() public view {
        assertEq(store.get(), 0);
    }
}
