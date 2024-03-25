#!/usr/bin/env bash

testkube create test --name apphub-test1 --type curl/test --file apphub-test1.json

testkube run test apphub-test1 -f

# kubectl testkube get execution apphub-test1























