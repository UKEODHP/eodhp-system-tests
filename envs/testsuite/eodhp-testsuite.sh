#!/usr/bin/env bash


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