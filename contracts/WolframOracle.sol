// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import {IWolframOracle} from "./interface/IWolframOracle.sol";

contract WolframOracle is IWolframOracle {

    constructor () public {
    }

    function rollDice() override external returns(uint256) {
        return uint256(0);
    }
}