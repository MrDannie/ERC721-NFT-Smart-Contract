async function main() {
    const [deployer] = await ethers.getSigners()

    console.log("Deploying contracts with the account:", deployer.address)

    console.log("Account balance:", (await deployer.getBalance()).toString())

    const AzukiCloneToken = await ethers.getContractFactory("AzukiCloneNFT")
    const azukiCloneToken = await AzukiCloneToken.deploy()

    console.log("Token address:", azukiCloneToken.address)
}

main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error)
        process.exit(1)
    })
