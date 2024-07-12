// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;
import {Script} from "forge-std/Script.sol";
import {MFN} from "../src/MyNFT.sol";
contract DeployMFNft is Script {

    function run() external returns (MFN){
        vm.startBroadcast();
        MFN mfn = new MFN();
        vm.stopBroadcast();

        return mfn;
    }
    constructor() {
        
    }
}