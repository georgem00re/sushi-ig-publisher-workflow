
generate-fhir-resources:
	NVM_DIR="$${HOME}/.nvm" && . "$${NVM_DIR}/nvm.sh" && cd ExampleIG && nvm use 20 && sushi .

install-ig-publisher:
	curl -L https://github.com/HL7/fhir-ig-publisher/releases/latest/download/publisher.jar -o ig-publisher.jar

# Ruby is needed to install and run Jekyll and Bundler.
install-ruby:
	brew install ruby

# Note: Bundler requires Ruby version >= 3.2.0.
verify-ruby-installation:
	ruby --version

# The IG Publisher uses Jekyll and Bundler to render the final static website.
install-jekyll-and-bundler:
	sudo gem install jekyll bundler

verify-bundler-installation:
	bundler -v

verify-jekyll-installation:
	jekyll -v

run-ig-publisher:
	java -jar ig-publisher.jar -ig ExampleIG -no-sushi
