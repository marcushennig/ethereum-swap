pragma solidity ^0.4.2;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/SimpleStorage.sol";

contract TestSimpleStorage {
    
    function testInitialStorage() {
        
        SimpleStorage myStorage = SimpleStorage(DeployedAddresses.SimpleStorage());

        uint dataExpected = 10000;
        
        Assert.equal(myStorage.get(), dataExpected, "The storage should have initially 10000");
    }

    function testStorage() {
        
        SimpleStorage myStorage = new SimpleStorage();

        uint data = 121332;
        
        myStorage.set(data);
        Assert.equal(myStorage.get(), data, "The data must be sored");
    }
}