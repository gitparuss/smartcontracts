# smartcontracts
This code uses the web3 crate to interact with the Ethereum blockchain and the ethereum_types crate for working with Ethereum-specific data types. 
The exchange_tokens function takes in a smart contract instance, the address of the token holder sending the tokens,
the address of the token holder receiving the tokens, and the value of tokens being exchanged. 
The function then calls the transfer function on the smart contract using the execute method provided by the web3 crate.
