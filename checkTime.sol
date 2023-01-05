// SPDX-License-Identifier: MIT

pragma solidity ^0.8.15;


contract checkTime
{

    mapping(address => bool) public isCheckList;

    constructor()
    {
        isCheckList[0x4D6fa494444A69ac8b2CEF6f521A14045c3e3fd7] = true;
    }

    function add(uint256 _a, uint256 _b) public pure returns(uint256)
    {
        return (_a + _b);
    }

    function sub(uint256 _a, uint256 _b) public view returns(uint256)
    {
        require(isCheckList[msg.sender] == true, "Error: Address Is Not Valid");
        return (_a - _b);
    }

}