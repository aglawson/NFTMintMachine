pragma solidity 0.7.2;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract NFTMint is ERC721 {
    //uint public tokenId;
    uint256 public tokenCounter;
    constructor() ERC721("Test", "TST"){
        tokenCounter = 0;
    }

    function createCollectible(string memory tokenURI) public returns (uint256) {
        uint256 newItemId = tokenCounter;
        _safeMint(msg.sender, newItemId);
        _setTokenURI(newItemId, tokenURI);
        tokenCounter = tokenCounter + 1;
        return newItemId;
    }
}
