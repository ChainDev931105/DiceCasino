// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import {IWolframOracle} from "../interface/IWolframOracle.sol";

contract WolframOracleMock is IWolframOracle {
    uint256 nonce;

    constructor () public {
        nonce = 0;
    }

    function rollDice() override external returns(uint256) {
        uint256 rnd = uint(keccak256(abi.encodePacked(block.timestamp, msg.sender, nonce))) % 6;
        return rnd + 1;
    }
}