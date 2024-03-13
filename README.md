# eodhp-system-tests

https://docs.testkube.io/articles/creating-tests
# Creating Tests
Tests are single executor oriented objects. Tests can have different types, depending on which executors are installed in your cluster.

Testkube includes ```postman/collection```, ```cypress/project```, ```curl/test```, ```k6/script``` and ```soapui/xml``` test types which are auto registered during the Testkube install by default.

As Testkube was designed with flexibility in mind, you can add your own executors to handle additional test types.

# Test Source
Tests can be currently created from multiple sources:

1. A simple ```file``` with the test content. For example, with Postman collections, we're exporting the collection as a JSON file. For cURL executors, we're passing a JSON file with the configured cURL command.
String - We can also define the content of the test as a string.
2. A Git directory - We can pass repository, path and branch where our tests are stored. This is used in the Cypress executor as Cypress tests are more like npm-based projects which can have a lot of files. We are handling sparse checkouts which are fast even in the case of huge mono-repos.
3. A Git file - Similarly to Git directories, we can use files located on Git by specifying git-uri and branch.

==NOTE
Not all executors support all input types. Please refer to the individual executors' documentation to see which options are available.==


https://docs.testkube.io/articles/running-tests


https://docs.testkube.io/articles/getting-tests-results
