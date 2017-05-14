pragma solidity ^0.4.4;

contract SimpleStorage {

    uint storedData;
    mapping (address => uint) balances;

    function SimpleStorage() {

		storedData = 1000;
	}

    function set(uint x) {
        storedData = x;
    }

    function get() constant returns (uint) {
        return storedData;
    }
}