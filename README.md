# eodhp-system-tests


# Creating First Test
  https://docs.testkube.io/articles/creating-first-test
  
> - CLI - manual test execution
   [https://httpbin.test.k6.io/](https://docs.testkube.io/articles/creating-first-test#cli)
   
> - Changing output format
   https://docs.testkube.io/articles/creating-first-test#changing-the-output-format

# Creating Sample Test
* https://docs.testkube.io/articles/creating-tests

# Running a test
* https://docs.testkube.io/articles/running-tests

# Getting Test Results
https://docs.testkube.io/articles/getting-tests-results

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
