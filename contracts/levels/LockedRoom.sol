pragma solidity ^0.4.18;

contract LockedRoom {
    bool public locked;
    uint private key;

    function LockedRoom(uint _key) public {
        locked = true;
        key = _key;
    }

    modifier meaningOfLife() {
        require(msg.gas % 42 == 0);
        _;
    }

    function unlock(uint _key) meaningOfLife public {
        require(_key == key);
        locked = false;
    }
}
