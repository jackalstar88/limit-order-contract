// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


library EIP1271Constants {
    // bytes4(keccak256("isValidSignature(bytes32,bytes)")) = 0x1626ba7e
    bytes4 constant internal MAGIC_VALUE = IEIP1271.isValidSignature.selector;
}


interface IEIP1271 {
    /**
     * @dev Should return whether the signature provided is valid for the provided data
     * @param hash      Hash of the data to be signed
     * @param signature Signature byte array associated with _data
     *
     * MUST return the bytes4 magic value 0x1626ba7e when function passes.
     * MUST NOT modify state (using STATICCALL for solc < 0.5, view modifier for solc > 0.5)
     * MUST allow external calls
     */
    function isValidSignature(bytes32 hash, bytes calldata signature) external view returns (bytes4);
}
