Not going to dictate what frontend framework to use. Will focus more on the process to discover how certain things are done in the wallet. I expect everyone to open PR's with their notes.

So, let's look at my wallet from last dev session: https://wallet.gnosis.pm/#/wallet/0x7a1f09ec59360270e52a9bc04253f9db7b6f906c

Check out the codebase for the wallet.
https://github.com/gnosis/MultiSigWallet

Now, let's see where the `wallet` route comes from:
https://github.com/gnosis/MultiSigWallet/blob/master/dapp/routes.js

So this is the wallet detail control:
https://github.com/gnosis/MultiSigWallet/blob/1cb655b773e10a0903daa7c691ab9d3b493985db/dapp/controllers/walletDetailCtrl.js

Now if we want to add an owner to a wallet:
https://github.com/gnosis/MultiSigWallet/blob/1cb655b773e10a0903daa7c691ab9d3b493985db/dapp/controllers/addOwnerCtrl.js
https://github.com/gnosis/MultiSigWallet/blob/6f1f8fc37fd53a7c87548997cc603755b5d2cca1/dapp/services/Wallet.js#L683


https://github.com/gnosis/MultiSigWallet/blob/6f1f8fc37fd53a7c87548997cc603755b5d2cca1/dapp/services/Wallet.js

