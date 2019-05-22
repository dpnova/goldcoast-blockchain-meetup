const ethTX = require('ethereumjs-tx');

const txData = {
    none: '0x0',
    gasPrice: '0x09184e72a000',
    gasLimit: '0x30000',
    to: '0xa03783510256f318ad666354c39db15d8b2f516a',
    value: '0x00',
    data: '', 
};

tx = new ethTX(txData);
console.log('RLP-Encoded TX:0x' + tx.serialize().toString('hex'))

txHash = tx.hash(); //
console.log('TX Hash: 0x' + txHash.toString('hex'))

// Sign transaction
const privKey =  Buffer.from(
    'INSERT PRIV KEY HERE', 'hex');
tx.sign(privKey);

serializedTx = tx.serialize();
rawTx = 'Signed Raw Transaction: 0x' + serializedTx.toString('hex');
tx.sign(privKey);

serializedTx = tx.serialize();
rawTx = 'Signed Raw Transaction: 0x' + serializedTx.toString('hex');
console.log(rawTx)
