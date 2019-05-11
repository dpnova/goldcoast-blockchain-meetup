CHAPTER 6
==========


Digital Signatures
------------------
The digital signature algorithm used in Ethereum is the Elliptic Curve Digital Signature Algorithm (ECDSA).


In Ethereum’s implementation of ECDSA, the "message" being signed is the transaction, or more accurately, the Keccak-256 hash of the RLP-encoded data from the transaction. The signing key is the EOA’s private key. 



The function Fsig produces a signature Sig that is composed of two values, commonly referred to as r and s:
S i g = ( r , s ) 

To verify the signature, one must have the signature (r and s), the serialized transaction, and the public key that corresponds to the private key used to create the signature. To verify the signature, one must have the signature (r and s), the serialized transaction, and the public key that corresponds to the private key used to create the signature. 


Transaction Signing in practise
--------------------------------

To sign a transaction in Ethereum, the originator must:

    Create a transaction data structure, containing nine fields: nonce, gasPrice, gasLimit, to, value, data, chainID, 0, 0.

    Produce an RLP-encoded serialized message of the transaction data structure.

    Compute the Keccak-256 hash of this serialized message.

    Compute the ECDSA signature, signing the hash with the originating EOA’s private key.

    Append the ECDSA signature’s computed v, r, and s values to the transaction.

