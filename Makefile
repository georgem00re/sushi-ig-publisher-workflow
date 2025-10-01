
generate-fhir-resources:
	NVM_DIR="$${HOME}/.nvm" && . "$${NVM_DIR}/nvm.sh" && cd ExampleIG && nvm use 20 && sushi .
