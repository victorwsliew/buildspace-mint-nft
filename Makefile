-include .env

deploy-local:
	npx hardhat run scripts/run.js

deploy-testnet:
	npx hardhat run scripts/deploy.js --network rinkeby

verify-testnet:
	@echo "+\n++ Verifying Contract:  $(DEPLOYED_CONTRACT_ADDRESS) ...\n+"
	npx hardhat verify $(DEPLOYED_CONTRACT_ADDRESS) --network rinkeby 
	
