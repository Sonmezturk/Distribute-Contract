const main = async () => {
  const Distribute = await hre.ethers.getContractFactory("Distribute");
  const distributeContract = await Distribute.deploy([
    "",
    "",
    "",
    "",
    "",
    "",
  ]);

  console.log(
    "Distribute contract deployed to:",
    await distributeContract.getAddress()
  );
};

const runMain = async () => {
  try {
    await main();
    process.exit(0);
  } catch (error) {
    console.log(error);
    process.exit(1);
  }
};

runMain();
