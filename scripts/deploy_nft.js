async function main() {
  const NFT = await ethers.getContractFactory("CollectionNFT");
  const nft = await NFT.deploy();
  console.log("NFT Contract deployed to:", nft.address);
}
main();
