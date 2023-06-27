pragma solidity ^0.8.0;

contract Compliments {
    address owner;
    uint256 complimentPrice = 0.015 ether;
    
    constructor() {
        owner = msg.sender;
    }
    
    function sendCompliment() public payable {
        require(msg.value >= complimentPrice, "Insufficient funds");
        string[] memory compliments = [            "You're more fun than bubble wrap!",            "I appreciate you more than a good pun.",            "You have a great sense of humor.",            "You light up the room.",            "Your smile is contagious."        ];
        uint256 index = uint256(block.timestamp) % compliments.length;
        payable(msg.sender).transfer(msg.value);
        emit ComplimentSent(msg.sender, compliments[index]);
    }
    
    function setComplimentPrice(uint256 _price) public {
        require(msg.sender == owner, "Only the owner can update the compliment price");
        complimentPrice = _price;
    }
    
    event ComplimentSent(address indexed recipient, string compliment);
}
