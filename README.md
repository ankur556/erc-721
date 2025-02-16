this is esentaillly just a project which works on ethireum to do calculations and is bassically a nft transfer and autherising contranct which can be straight forwardly be deployed to third web which i coudnt do as i coundnt figure out how to run it on third web using a test eth and how to connect it to a test eth account as i did find a option to connect it to the test eth chain but coudnt find the way to deploy it on thare so i decided to run it on remix  for which i ran accross some error regarding which file to deploy which could be fixed by adding another file to it named nftreciver.sol with the code
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./IERC721Receiver.sol";

contract NFTReceiver is IERC721Receiver {
    event Received(address operator, address from, uint256 tokenId, bytes data, uint256 gas);

    function onERC721Received(
        address operator,
        address from,
        uint256 tokenId,
        bytes calldata data
    ) external override returns (bytes4) {
        emit Received(operator, from, tokenId, data, gasleft());
        return this.onERC721Received.selector;
    }
}
and baically adding a line on top of the main code which basiically runs that code first as the ide has problem figureing that out
/// @custom:dev-run-script deploy_script.js
this basically what it looks like deployed
![image](https://github.com/user-attachments/assets/020a666b-e2c9-40b1-a9e7-f88c6278cfae)
https://remix.ethereum.org/#lang=en&optimize=false&runs=200&evmVersion=null&version=soljson-v0.8.26+commit.8a97fa7a.js=>dployment link
