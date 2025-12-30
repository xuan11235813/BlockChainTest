pragma solidity ^0.8.13;

contract SimpleStorage{
	uint256 private storedNumber;

	function set(uint256 _num) public{
		storedNumber = _num;
	}

	function get() public view returns (uint256){
		return storedNumber;
	}
}
