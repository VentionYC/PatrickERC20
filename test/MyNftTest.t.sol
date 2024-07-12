// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.25;
import {Test} from "forge-std/Test.sol";
import {DeployMFNft} from "../script/DeployMFNft.s.sol";
import {MFN} from "../src/MyNFT.sol";

contract MyNftTest is Test{
    DeployMFNft public deployMFNft;
    MFN public mfn;

    function setUp() public{
        deployMFNft = new DeployMFNft();
        mfn = new MFN();
    }
}