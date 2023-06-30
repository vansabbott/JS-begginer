const hre = require("hardhat");

async function main() {
  const test = await hre.ethers.getContractFactory("eventChallenge");
  const Test = await test.deploy();

  await Test.deployed();
  Test.on("event1", (user1, a) => {
    console.log(`Sum: ${user1} ${a}`);
  });

  Test.on("event2", (user2, b) => {
    console.log(`Difference: ${user2} ${b}`);
  });

  Test.on("event3", (user3, c) => {
    console.log(`Multiplication: ${user3} ${c}`);
  });

  Test.on("event4", (user4, d) => {
    console.log(`Division: ${user4} ${d}`);
  });
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
