// SPDX-License-Identifier: MIT

pragma solidity ^0.8.30;

// 1️⃣ Create a Twitter Contract 
// 2️⃣ Create a mapping between user and tweet 
// 3️⃣ Add function to create a tweet and save it in mapping
// 4️⃣ Create a function to get Tweet 
// 5️⃣ Add array of tweets 

contract Twitter {

    mapping(address => string []) public tweets; 

    function createTweet(string memory _tweet) public { //storge _tweet in tem memory
        tweets[msg.sender].push (_tweet); //msg.sender from blockchain, user adds/metadata store in msg(object), sender: wallet address
    }

    function getTweet(address _owner, uint _i) public view returns (string memory) {
        return tweets[_owner] [_i];
    }

    function getAllTweets(address _owner) public view returns (string[] memory) {
        return tweets[_owner]; //return all value in string[] array
            }

}