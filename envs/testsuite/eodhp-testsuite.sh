#!/usr/bin/env bash

# echo '
# {
#     "name": "testkube-suite",
#     "description": "Testkube test suite for eodhp",
#     "steps": [
#         {"execute": [{"test": "testkube-api"}, {""test": "testkube-dashboard"}]},
#         {"execute": [{"delay": "1s"}]},
#         {"downloadArtifacts": {"previousTestNames": ["testkube-api"]}, "execute": [{"test": "testkube-dashboard"}, {"delay": "1s"}, {""test": "testkube-homepage"}]},
#         {"execute": [{"delay": "1s"}]},
#         {"downloadArtifacts": {"previousStepNumbers": [1, 3]}, "execute": [{"test": "testkube-api-performance"}]},
#         {"execute": [{"delay": "1s"}]},
 #        {"downloadArtifacts": {"allPreviousSteps": true}, "execute": [{"test": "testkube-homepage-performance"}]}
 #    ]
 #}' | kubectl testkube create testsuite


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
