// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";



contract AzukiCloneNFT is ERC721URIStorage{
using Counters for Counters.Counter;
Counters.Counter private _tokenIds;
	constructor() ERC721("Azuki", "AZK"){}

	function createNFT(address player, string memory tokenURI) public returns(uint256) {
		uint256 newItemId = _tokenIds.current();
		_mint(player, newItemId);
		_setTokenURI(newItemId, tokenURI);

		_tokenIds.increment();
		return newItemId;
	}
}