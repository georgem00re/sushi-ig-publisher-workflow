
generate-fhir-resources:
	NVM_DIR="$${HOME}/.nvm" && . "$${NVM_DIR}/nvm.sh" && cd ExampleIG && nvm use 20 && sushi .

install-ig-publisher:
	curl -L https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar -o ig-publisher.jar

run-ig-publisher:
	java -jar ig-publisher.jar -ig ExampleIG -no-sushi
