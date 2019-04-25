To ensure lab exercise commands work as described in the book , truffle needs to be at v5 as recently it has been updated to v5 which comes with solidity v0.5 

In order to do so install truffle as follows
```
npm i -g truffle@4
```
instead of 
```
npm i -g truffle
```

also if you get errors preventing you to install the following 
```
sudo npm install dotenv truffle-wallet-provider ethereumjs-wallet
```

then try the command below and retry the above.

```
node-gyp rebuild
```

if you get gas errors compiling and migrating the contracts using truffle then add the gas parameter such as below to your truffle-config.js

```
gas: 4600000,
```



