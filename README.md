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

### Installation and Usage
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
   (Go to This Link: https://sepoliafaucet.com/ )


8. Click on **Alchemy Login** on the **Top-Right** if you do not have an account make sure to create one (Relatively easy task 😁).
<div align="center">
  <img src="https://github.com/albertisaac12/MultiSigWallet/assets/91803132/3478e462-9525-48c6-b77d-4cb4b3d0c8d8" alt="Step 7" />
</div>


9. Now copy any of your account addresses from MetaMask and Paste it in the Box just like below 👇
<div align="center">
  <img src="https://github.com/albertisaac12/MultiSigWallet/assets/91803132/08a3b792-7fe9-4fd5-a2ee-75ebbf627c79" alt="Step 8" />
</div>


10. Hit on Send ETH and Voila there will be 0.5 Sepolia ETH deposited in your wallet within 2 minutes. (Note: You can only claim ETH once every **24 hours** and this Sepolia ETH **doesn't hold any real-world Value. **) 

11. Now head over to Remix IDE, Time to set our ETH provider, just follow the images below 👇
<div align="center">
  <img src="https://github.com/albertisaac12/MultiSigWallet/assets/91803132/d3edcb43-7000-4a61-939b-d3468fa9b395" alt="Step 9" />
</div>

<div style="text-align:center;">
  <img src="https://github.com/albertisaac12/MultiSigWallet/assets/91803132/6eaa5dcf-c707-4dc0-9c8e-d0fee13ad31f" alt="Step 10" />
</div>

12. Now time to Deploy the Smart Contract and Test out its Functioning.
13. Head over to the Deploy & run transactions tab in the Remix IDE (the tab has a symbol similar to ETH])
14. Now Select your contract from contract section and make sure that you are still on injected provider and then check the deploy section. The Deploy section must be expecting 2 arguments an _owners[] array and _required uint.
15. Remember we made multiple accounts During the setup process, open a notepad and copy alteast 4 account addresses like this => ["address 1" , "address 2" , "address 3" ,"address 4"] also make sure to give _required value greater than the number of addresses in _owners[].
16. Finally head down and hit on "transact" (its a box highlighted in yellow just below DEPLOY section).
<div align="center">
  <img src="https://github.com/albertisaac12/MultiSigWallet/assets/91803132/e17ac1d6-206c-4257-b3a6-a402aabc72e2" alt="Step 11" />
</div>


18. Now MetaMask will pop for transaction Approval. Hit on Confirm.
    <div align= "center">
        <img src="https://github.com/albertisaac12/MultiSigWallet/assets/91803132/9e0adb08-0a65-4113-be77-1fd948756f56" alt ="step 12">
    </div>

19. Once Your Transaction is Sucessful you will recieve the confirmation on the "Console"
    <div align = "center">
        <img src="https://github.com/albertisaac12/MultiSigWallet/assets/91803132/2d60dca3-7a46-44fe-a718-593d4f70f637" alt = "step 13">
    </div>

20. Voila You have finally Deployed Your Contract Sucessfully now you can play around with the contract as you like. 

### Contact
If you have any troubles completing the steps or have any quries feel free to ping me LinkedIn (https://www.linkedin.com/in/abhigadipalli/)
