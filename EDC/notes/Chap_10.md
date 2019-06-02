CHAPTER 10 - Tokens
===================

Can be fungible or non-fungible.


Some tokens represent digital items that are intrinsic to the blockchain. Like a crypto kitty.

Many tokens are used to represent extrinsic things, such as real estate, corporate voting shares, trademarks, and gold bars. The ownership of these items, which are not "within" the blockchain, is governed by law, custom, and policy, separate from the consensus rules that govern the token. In other words, token issuers and owners may still depend on real-world non-smart contracts. As a result, these extrinsic assets carry additional counterparty risk because they are held by custodians, recorded in external registries, or controlled by laws and policies outside the blockchain environment.

Utility or Equity
-----------------


Utility tokens are those where the use of the token is required to gain access to a service, application, or resource. Examples of utility tokens include tokens that represent resources such as shared storage, or access to services such as social media networks.

Equity tokens are those that represent shares in the control or ownership of something, such as a startup.

Why use utility token?  
Adopt a token because your application cannot work without a token. Adopt it because the token lifts a fundamental market barrier or solves an access problem. Don’t introduce a utility token because it is the only way you can raise money fast and you need to pretend it’s not a public securities offering.


The ERC20 Token Standard
------------------------
```
contract ERC20 {
   function totalSupply() constant returns (uint theTotalSupply);
   function balanceOf(address _owner) constant returns (uint balance);
   function transfer(address _to, uint _value) returns (bool success);
   function transferFrom(address _from, address _to, uint _value) returns
      (bool success);
   function approve(address _spender, uint _value) returns (bool success);
   function allowance(address _owner, address _spender) constant returns
      (uint remaining);
   event Transfer(address indexed _from, address indexed _to, uint _value);
   event Approval(address indexed _owner, address indexed _spender, uint _value);
}
```

data structures:
- mapping(address => uint256) balances;
- mapping (address => mapping (address => uint256)) public allowed;


 "transfer" and "approve & transferFrom"


Launch own ERC20 Token
----------------------

Using truffle deploy and interact with contract.



ERC223: A Proposed Token Contract Interface Standard
----------------------------------------------------

attempts to solve the problem of inadvertent transfer of tokens to a contract


ERC777: A Proposed Token Contract Interface Standard
----------------------------------------------------
- allow contracts and addresses to control which tokens they send through a tokensToSend function that is called prior to sending
- enable contracts and addresses to be notified of the tokens' receipt by calling a tokensReceived function in the recipient


ERC721: Non-fungible Token (Deed) Standard
------------------------------------------