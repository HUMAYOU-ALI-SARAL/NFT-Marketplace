require("@nomicfoundation/hardhat-toolbox");
const fs=require("fs")
const privateKey=fs.readFileSync(".secrets").toString()

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.19",
  defaultNetwork:'hardhat',
  networks:{
    hardhat:{
      chainId:1337
    },
    mumbai:{
      url:'https://polygon-mumbai.g.alchemy.com/v2/UnsHgxNtaQNzjgHsnctwR0Kn1DWj4ZQX',
      accounts:[privateKey]
    }
  }
};
