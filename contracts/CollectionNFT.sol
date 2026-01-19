// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract CollectionNFT is ERC721 {
    uint256 public nextTokenId;
    address public admin;

    constructor() ERC721("Builder Genesis", "BG") {
        admin = msg.sender;
    }

    function mint(address to) external {
        _safeMint(to, nextTokenId);
        nextTokenId++;
    }
}
