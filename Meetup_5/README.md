# Introduction

We are going to build on the last meetup and interact with our Gnosis MultiSig Wallet.

We will be deploying an ERC20 Token contract and then transferring tokens to/from our MulitSig Wallet.

We will be starting fresh in this meetup. You don't need to have done the last one.

## Prerequisites

- Browser with metamask plugin installed.

# Ganache

1. Go to https://truffleframework.com/ganache and download latest version for your platform

2. Start Ganache.

Once running you should see a screen similar to the one below.

You will have a local Ethereum blockchain running and 10 accounts loaded with 100 ETH each.

![ganache_running](images/ganache_running.png)

# Deploy MultiSig Wallet Contract

3. In your browser go to https://remix.ethereum.org

4. Ensure your MetaMask is pointed at the local Ganache instance. It should be http://localhost:7545. If not add it in by select Custom RPC, enter the New RPC URL and click Save.

![metamask_pointed_at_ganache](images/metamask_pointed_at_ganache.png)

5. Click on the folder symbol and then open all the contracts under the contracts folder for this Meetup (Meetup_5).

![remix_init](images/remix_init.png)

6. Click on the Start to Compile button while MultiSigFactory is selected. You should see a bunch of output below. 

![remix_compile_multisigfactory](images/remix_compile_multisigfactory.png)

7. On the Run tab click the Deploy button while MultiSigFactory is selected. This will trigger a confirmation in MetaMask, indicated by the small 1 that shows on the MetaMask icon.

![remix_deploy_multisigfactory](images/remix_deploy_multisigfactory.png)

8. Click on the MetaMask icon and submit the transaction to deploy the contract.

![remix_metamask_submit](images/remix_metamask_submit.png)

9. You should now have a deployed MultiSigFactory contact. It will be visible from Remix under Deployed Contracts.

![remix_deployed_multisigfactory](images/remix_deployed_multisigfactory.png)

# Deploy ERC20 Contract

 
# Transfer Tokens to MultiSig Wallet

# Withdraw Tokens from MultiSig Wallet

