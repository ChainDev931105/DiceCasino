// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IWolframOracle} from "./interface/IWolframOracle.sol";

contract DiceCasino is IERC20, ERC20 {
    event DiceRolled (
        address player,
        uint256 score
    );

    uint256 public constant AWARD_AMOUNT = 10;

    address private wolframOracle;

    constructor(
        address _wolframOracle
    ) ERC20("Dice Token", "DCT") {
        wolframOracle = _wolframOracle;
    }

    function rollDice() external {
        uint256 score = IWolframOracle(wolframOracle).rollDice();
        emit DiceRolled(msg.sender, score);
        if (score > 5) {
            _mint(msg.sender, AWARD_AMOUNT);
        }
    }
}
