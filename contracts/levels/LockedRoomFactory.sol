pragma solidity ^0.4.18;

import './base/Level.sol';
import './LockedRoom.sol';

contract LockedRoomFactory {

    function createInstance(address _player) public payable returns (address) {
        _player;
        uint key = 42;
        return new LockedRoom(key);
    }

    function validateInstance(address _instance, address _player) public returns (bool) {
        _player;
        LockedRoom instance = LockedRoom(_instance);
        return instance.locked();
    }
}
