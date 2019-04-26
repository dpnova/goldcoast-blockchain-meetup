Q. Arrange in the correct sequence the steps an originator of a Transaction must do to sign it.<br>
Produce an RLP Encoded Serialized message of TX Data Structure<br> 
Compute the Keccak 256 hash of Serialized message<br>
Append the ECDSA signatures computed v,r & s values to the transaction<br>
Create a TX Data Structure<br>
Sign the hash with the EOA's private key<br> 
<br>
Q. It is not possible to disccen the origin of a transaction from the perspective of a node.<br>
True<br>
False<br>
<br>
Q. An isolated host signing messages via a queue has a much higher attack surface than signing on an online system.<br>
True<br>
False<br>
<br>
Q. Select all possible answers. If there is value but no data in your transaction to a valid contract address, the EVM will
1. Call the fallback function<br>
2. Increase the ether balance of the contract where none exists<br>
3. Reject the transaction<br>
4. Call the constructor<br>
<br>
Q. If you transmit a transaction with nonce 0 and then transmit a transaction with nonce 2. The second transaction will be <br>
1. it will not be included in the block<br>
2. It will be stored in the mempool<br>
3. It will be rejected<br>
4. It will be mined after the next block<br> 
<br>
Q. Nonce is computed as (pick 2):<br>
1. number of contracts created by an contract<br>
2. number of contracts created by an EOA<br>
3. number of transactions sent and confirmed from a contract<br>
4. number of transactions sent and confirmed from an EOA<br>
<br>
Q. The following process can result in a wrong nonce being assigned:<br>
1. a single bottle-neck machine handling all nonce assignments<br>
2. multiple machines generating transactions, which are all signed on a single node<br>
3. multiple independent servers create and sign transactions and channel them via independent nodes<br>
4. multiple hot wallets, which rebalance at predetermined points in time<br>
<br>
Q. The following transaction cannot be added to the blockchain:<br>
1. Empty payload<br>
2. Send 0 data<br>
3. Transaction containing multiple signatures<br>
4. Send 0 gas<br>
5. Sending to a 0x0 address<br>
