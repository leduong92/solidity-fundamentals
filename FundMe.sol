// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract FunMe {
    
    uint256 public munimumUsd = 5;

    function fund() public payable {
        require(msg.value > munimumUsd, "did'nt send enough ETH");
    }

    function getPrices() public {
        //0x694AA1769357215DE4FAC081bf1f309aDC325306
        //ABI
        
    }
    function getConversionPrice(uint256 _price) public {

    }

    function getVersion() public view returns (uint256) {
        return AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306).version();
    }

}