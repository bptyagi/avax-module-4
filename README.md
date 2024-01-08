# PrinceOfPersia Token Contract

## Overview

PrinceOfPersia is an ERC-20 token written in Solidity, representing the Prince's journey with sands and a sword. The contract includes features such as collecting sand, fighting demons, and buying swords.

## Features

- **Name**: PrinceOfPersia
- **Symbol**: POP
- **Decimals**: 18

## Prerequisites

- Solidity ^0.8.0
- OpenZeppelin Contracts

## Contract Details

### Constructor

The constructor initializes the token with an initial supply of 10 tokens, minted to the contract deployer (`msg.sender`). Additionally, it sets the initial sands to 10.

### Functions

- **collectSand**: Allows the owner to mint additional sand tokens.

- **fightDemons**: Simulates the Prince fighting demons, consuming 2 sands, and decreasing the sword strength. Checks for enough strength and sand.

- **buySword**: Allows users to forge a sword by burning 5 sand tokens, increasing the sword strength.

