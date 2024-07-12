// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.25;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract MFN is ERC721{
    uint256 private s_tokenCounter;
    mapping(uint256 => string) private s_tokenIdToUri;
    constructor() ERC721("My First NFT", "MFN"){
        s_tokenCounter = 0;
    }


    //link the uri to the order number of the nft
    //SETTER?
    function mintNft(string memory tokenUri) public{
        s_tokenIdToUri[s_tokenCounter] = tokenUri;
        //but in order to mint, we have to get or set the balance stuff right, right?
        _safeMint(msg.sender,s_tokenCounter);
        s_tokenCounter++;
    }

    //GETTER?
    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        return s_tokenIdToUri[tokenId];
    }
}