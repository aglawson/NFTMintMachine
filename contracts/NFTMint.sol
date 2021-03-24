pragma solidity 0.7.2;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract NFTMint is ERC721 {
    //uint public tokenId;

    constructor(string memory tokenName, string memory tokenSymbol) ERC721(tokenName, tokenSymbol){
        _mint(msg.sender, 1);
    }
}