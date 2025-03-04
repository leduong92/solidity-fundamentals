// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract FunMe {
    
    uint256 public munimumUsd = 5e18; //USD

    function fund() public payable {
        require(getConversionRate(msg.value) > munimumUsd, "did'nt send enough ETH");
    }

    function getPrices() public view returns (uint256) {
        //0x694AA1769357215DE4FAC081bf1f309aDC325306
        //ABI
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        (,int256 price,,,) = priceFeed.latestRoundData();
        //Pirce of ETH in USD
        //2000.00000000
        return uint256(price * 1e10);

    }
    function getConversionRate(uint256 _ethAmount) public view returns (uint256) {
        //1 ETH ?
        //2000_000000000000000000
        uint256 ethPirce = getPrices();
        //(2000_000000000000000000 * 1_000000000000000000) / 1e18
        //$2000 = 1ETH
        uint256 ethAmountInUsd = (ethPirce * _ethAmount) / 1e18;
        return ethAmountInUsd;
    }

    function getVersion() public view returns (uint256) {
        return AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306).version();
    }

}