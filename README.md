# MultiSigWallet

## Introduction
This Solidity contract implements a multi-signature wallet on the Ethereum blockchain. It allows multiple owners to collectively manage and control funds through a secure approval process. The contract is designed to be flexible, allowing owners to dynamically add or remove signers.

## Features
- Multi-signature functionality: Transactions require approval from a predefined number of signers.
- Dynamic signer management: Owners can add or revoke signer status for increased flexibility.
- Ether deposits: The contract allows for Ether deposits.
- Events: Events are emitted for key actions, providing transparency.

## Getting Started

### Prerequisites
- Knowledge on Solidity : [https://docs.soliditylang.org/en/v0.8.24/]
- Remix IDE : [http://remix.ethereum.org/]

### Installation
1. Navigate to the Remix IDE: Copy and paste the code from (https://github.com/albertisaac12/MultiSigWallet/blob/main/multisigwallet.sol) (Note: A message might pop up, Read And allow the code to be Pasted)
2. Install MetaMask from (https://chromewebstore.google.com/detail/metamask/nkbihfbeogaeaoehlefnkodbefgpgknn)
3. Set Up MetaMask (Its a relatively simple task just go through the installation procees and you will be good to go 😁)
4. Enabe the Test Networks on MetaMask. [Follow The Steps Below 👇] (**Note: Make Sure to Click on all The boxes Highlighted in Red**)

<div style="text-align:center">
    <img src="https://github.com/albertisaac12/MultiSigWallet/assets/91803132/84328b42-4f93-43b2-b03b-b4cc65e29668" alt="Step 1">
</div>

<div style="text-align:center">
    <img src="https://github.com/albertisaac12/MultiSigWallet/assets/91803132/28d40e40-5f9b-479a-b995-54b217f09b0b" alt="Step 2">
</div>

<div style="text-align:center">
    <img src="https://github.com/albertisaac12/MultiSigWallet/assets/91803132/f6e2b3e4-4167-412a-ae83-3653fe45b358" alt="Step 3">
</div>

<div style="text-align:center">
    <img src="https://github.com/albertisaac12/MultiSigWallet/assets/91803132/a094fd70-f1f8-48b6-ba29-f63fecc48f76" alt="Step 4">
</div>

<div style="text-align:center">
    <img src="https://github.com/albertisaac12/MultiSigWallet/assets/91803132/43c6ae43-7e02-4c11-be88-9d252c11c1dc" alt="Step 5">
</div>

<div style="text-align:center">
    <img src="https://github.com/albertisaac12/MultiSigWallet/assets/91803132/ed64bb93-80fc-46ab-83f1-9b167778fd8f" alt="Step 6">
</div>


6. Now make sure to Create at least **4 to 5** accounts on MetaMask
  
7. Time to get some Test Sepolia Ether into our Wallet, we will be using Alchemy to get some test ether
   (Go to This Link : https://sepoliafaucet.com/ )
8. Click on **Alchemy Login** on the **Top-Right** 

### Usage
