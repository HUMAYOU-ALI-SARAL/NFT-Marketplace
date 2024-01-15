// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.18;
import {ERC721URIStorage} from "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
contract Nft is ERC721URIStorage {
    uint private TokenId;
    address contractMarket;
    constructor(address marketplace) ERC721("My Token","Hum"){
        contractMarket=marketplace;
    }
    function createToken(string memory tokenUri) public  returns (uint) {
        TokenId++;
        _mint(msg.sender,_tokenId);
        _setTokenURI(TokenId,tokenUri);
        setApprovalForAll(contractMarket,true)
        return tokenId;
    }
}