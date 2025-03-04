// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {PriceConverter} from "./PriceConverter.sol";

contract FundMe {

    using PriceConverter for uint256;

    uint256 public minumumFund = 5e18;

    address[] public funders;
    mapping(address funder => uint256 amountFunded) public addressToAmountFunded;

    address public owner;

    constructor() {
       owner = msg.sender;
    }

    function fund() public payable {
        require(msg.value.getConvertionRate() >= minumumFund, "Din't send enough ETH");
        funders.push(msg.sender);
        addressToAmountFunded[msg.sender] += msg.value;
    }

    function withdraw() public onlyOwner {
        for (uint256 idx = 0; idx < funders.length; idx++) {
            address funder = funders[idx];
            addressToAmountFunded[funder] = 0;
        }

        //reset the array
        funders = new address[](0);
        (bool callSuccess,) = payable(msg.sender).call{value: address(this).balance}("");
        require(callSuccess, "Call failed");
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Sender is not owner!");
        _;
    }
}