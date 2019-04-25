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

For doing example 7.3 if you do not get the gasestimates , you will need to rerun the migrate command before running the exec gas_estimates.js, so as below i.e.

```
$ truffle develop
truffle(develop)> migrate
Compiling ./contracts/Faucet.sol...
Writing artifacts to ./build/contracts
Using network 'develop'.
Running migration: 1_initial_migration.js
  Deploying Migrations...
  ... 0x3c78933e70a8c88dba13a35b17b556585682f83e9027a7c7a86cd5eeab383973
  Migrations: 0x8cdaf0cd259887258bc13a92c0a6da92698644c0
Saving artifacts...
Running migration: 2_deploy_contracts.js
  Replacing Faucet...
  ... 0x526342a98c90bfa38dfe18fab3324930a34f5c37b4a88907e579bcd38515c722
  Faucet: 0xf12b5dd4ead5f743c6baa640b0216200e89b60da
Saving artifacts...
truffle(develop)> exec gas_estimates.js
truffle(develop)> Gas Price is 2000000000 wei
gas estimation = 31397 units
gas cost estimation = 62794000000000 wei
gas cost estimation = 0.000062794 ether
```


