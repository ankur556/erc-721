// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IERC721Receiver {
    /**
     * @dev Whenever an {ERC721} token is transferred to this contract via {safeTransferFrom}
     *   or {safeMint}, this function is called.
     *
     * It must return its Solidity selector to confirm that it can accept the token.
     *
     * @param operator The address which initiated the transfer (i.e. msg.sender)
     * @param from The address which previously owned the token
     * @param tokenId The ID of the token being transferred
     * @param data Additional data with no specified format
     * @return `bytes4(keccak256("onERC721Received(address,address,uint256,bytes)"))`
     *   unless reverting.
     */
    function onERC721Received(
        address operator,
        address from,
        uint256 tokenId,
        bytes calldata data
    ) external returns (bytes4);
}
