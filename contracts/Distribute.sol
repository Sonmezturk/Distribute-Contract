// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;
contract Distribute {
    address[6] public contributors;
    uint256 public createTime;

    constructor(address[6] memory _contributors) payable {
        createTime = block.timestamp;
        contributors = _contributors;
    }
    function distribute() external {
        require(block.timestamp > createTime + 2 weeks, "cannot call distribute yet");
        uint256 amount = address(this).balance / 6;
        uint8 i = 0;
        do {
            payable(contributors[i]).transfer(amount);
            ++i;
        } while (i < 6);
    }
}