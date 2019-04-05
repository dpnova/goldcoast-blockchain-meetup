CHAPTER 5
==========

Wallet - system used to store and manage a user’s keys

balancing convenience and privacy

The ether is stored on the blockchain not in the wallet.

nondeterministic wallet (AKA "Just a Bunch of Keys.”) - keys derived from different random number
deterministic wallet - keys are derived from seed (BIP-32/BIP-44)

seed often encoded as list of words - mnemonic code words

common standards:

    Mnemonic code words, based on BIP-39

    HD wallets, based on BIP-32

    Multipurpose HD wallet structure, based on BIP-43

    Multicurrency and multiaccount wallets, based on BIP-44


geth is nondeterministic. stores keystore file with private key. uses key derivation function (KDF)


BIP-39
------
The mnemonic words represent entropy with a length of 128 to 256 bits

Generating mnemonic words

    1- Create a cryptographically random sequence S of 128 to 256 bits.

    2- Create a checksum of S by taking the first length-of-S ÷ 32 bits of the SHA-256 hash of S.

    3 - Add the checksum to the end of the random sequence S.

    4 - Divide the sequence-and-checksum concatenation into sections of 11 bits.

    5 - Map each 11-bit value to a word from the predefined dictionary of 2,048 words.

    6 - Create the mnemonic code from the sequence of words, maintaining the order.


From mnemonic to seed
The mnemonic words represent entropy with a length of 128 to 256 bits. 
The entropy is then used to derive a longer (512-bit) seed through the use of the key-stretching function PBKDF2.
 The seed produced is used to build a deterministic wallet and derive its keys.
 

    7 - The first parameter to the PBKDF2 key-stretching function is the mnemonic produced in step 6.

    8 - The second parameter to the PBKDF2 key-stretching function is a salt. The salt is composed of the string constant "mnemonic" concatenated with an optional user-supplied passphrase.

    9- PBKDF2 stretches the mnemonic and salt parameters using 2,048 rounds of hashing with the HMAC-SHA512 algorithm, producing a 512-bit value as its final output. That 512-bit value is the seed.



BIP-32
------
Extending a key involves taking the key itself and appending a special chain code to it. 
A chain code is a 256-bit binary string that is mixed with each key to produce child keys.


BIP-44 
-------
specifies the structure as consisting of five predefined tree levels:

m / purpose' / coin_type' / account' / change / address_index

two Ethereum "accounts": m/44&#x27;/60&#x27;/0&#x27; and m/44&#x27;/60&#x27;/1&#x27;.

