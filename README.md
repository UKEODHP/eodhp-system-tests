# eodhp-system-tests


# Creating First Test
  https://docs.testkube.io/articles/creating-first-test
  
> - CLI - manual test execution
   [https://httpbin.test.k6.io/](https://docs.testkube.io/articles/creating-first-test#cli)
   
> - Changing output format
   https://docs.testkube.io/articles/creating-first-test#changing-the-output-format

# Creating Test
* https://docs.testkube.io/articles/creating-tests

``` testkube create test --name <testname> --type curl/test --file <testjsonfilepath> ```

Once above command is run the following output will be displayed

``` Test created testkube / <testname> 🥇 ```

# Updating test
 testnames are unique, no two test can be created with same name, but the test content can be updated using bellow command

``` testkube update test --name <testname> ```

# adding timeout

``` testkube update test --name <testname> --timeout 10 ```

where the timeout value is seconds.



# Running a test
* https://docs.testkube.io/articles/running-tests

Execute the test using the command below

``` testkube run test <testname> ```

optionally add ``` -f ``` option to wait until the execution complete

``` testkube run test <testname> -f ```


# Getting Test Results
https://docs.testkube.io/articles/getting-tests-results

Get the test results using:

``` kubectl testkube get execution <execution name> ```


# Testsuite
Test Suites stands for the orchestration of different test steps, which can run sequentially and/or in parallel. On each batch step you can define either one or multiple steps such as test execution, delay, or other (future) steps.

Create testsuite
```bash
 echo '
{
    "name": "testkube-suite",
    "description": "Testkube test suite for eodhp",
    "steps": [
        {"execute": [{"test": "stac-test1"}]},
        {"execute": [{"delay": "10s"}]},
        {"execute": [{"test": "apphub-test1"}]}
    ]
}' | kubectl testkube create testsuite
```
all tests in the above scripts should be created before running the testsuite script, please refer to "# Creating Test" section.

Run testsuite

``` testkube run testsuite <testsuite name> -f ```

Delete testsuite

``` kubectl delete testsuites <testsuite name> -ntestkube ```

Result of testsuite executions

``` testkube get tse```

# Test Schedule
``` kubectl testkube create test --file <filename json> --name scheduled-test --schedule="*/1 * * * *" ```

# Test triggers

Test triggers are created as Custom Resources, they needs to be defined in yaml file

``` kubectl apply -f <yamlfilepath> ```


# Supported test types/executors within Testkube
- Artillery.io: The artillery executor allows you to run Artillery tests with Testkube.
- Cypress: Our dedicated Cypress executor allows running Cypress tests with Testkube - directly from Git repository.
- cURL: Testkube is able to run cURL commands as tests
- Ginkgo: Dedicated Ginkgo executor allows running Ginkgo tests with Testkube - directly from your Git repository.
- Gradle: Testkube allows running Gradle based tasks that could also be tests. For example, we can easily run JUnit tests in Testkube.
- JMeter: is an integral part of Testkube. The Testkube JMeter executor is installed by default during the Testkube installation.
- K6: Testkube's k6 executor provides a convenient way of running k6 tests.
- KubePug: is a kubectl plugin checking for deprecated Kubernetes clusters or deprecated versions of Kubernetes manifests. It can connect to both your cluster directly and it can run on input files. For security, Testkube only supports scanning input files via the KubePug executor.
- Kube no trouble (kubent): is a simple tool to check whether you're using any of these API versions in your cluster and therefore should upgrade your workloads first, before upgrading your Kubernetes cluster.
- Maven: Testkube allows you to run Maven-based tasks which could be also tests. For example, we can easily run JUnit tests in Testkube now.
- Playwright: Starting from the Testkube Helm chart version 1.9.5, it is possible to use Testkube to manage your Playwright tests inside your Kubernetes cluster.
- Postman: Testkube is able to run Postman collections inside your Kubernetes cluster so it can be used to test internal or external services.
- Pytest: This is a simple python based executor for pytest framework https://docs.pytest.org/ You can run pytest with Testkube to use it in your automated tests for your Kubernetes clusters.
- SoapUI: SoapUI is an open-source tool used for the end-to-end testing of REST, SOAP and GraphQL APIs, as well as JMS, JDBC and other web services. Testkube supports the SoapUI executor implementation.
- Tracetest:  is a OpenTelemetry based tool that helps you develop and test your distributed applications. It assists you in the development process by enabling you to trigger your code and see the trace as you add OTel instrumentation.
- 
