// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "./Voting.sol";

contract VotingFactory {
    Voting[] votingClones;

    function createVoting() external returns (Voting voting_, uint256 length_) {
        voting_ = new Voting();

        votingClones.push(voting_);

        length_ = votingClones.length;
    }

    function getVotingClones() external view returns(Voting[] memory) {
        return votingClones;
    }
}