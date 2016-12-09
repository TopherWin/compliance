# Open Control Compliance-Masonry Test Project

[![Circle CI](https://circleci.com/gh/cleanerbot/compliance.png?sytle=shield&circle-token=f426e413f206dc447eea29b759fd65c4c40a7904)](https://circleci.com/gh/cleanerbot/compliance/tree/master 'View CI builds')

### Structure

The project structure is setup like this:

```
.
├── Dockerfile # Compliance-Masonry in a Docker image 
├── Makefile  # Makefile for CircleCI
├── README.md # This project README# 
├── book.json # where you point gitbook to go (WIP)
├── circle.yml # the circleCI hook
├── compliance101/ # the standards/certs from opencontrol mockups
    ├── mock_standard.yml # the NIST800-53 mock
    └── mock_certification.yml # the low risk mock control reqs   
├── dockerfiles/ # the images for the project
    ├── dockerfile-compliance # compliance-masonry from opencontrol.org
├── markdowns/ # The stuff for all the gitbook magic
    ├── README.md # mandatory
    └── SUMMARY.md # optional 
	└── docs/ # contains all the SSP stuff
	    ├── about-the-ssp.md # you summary stuff
            └── *.png # the images for the SSP
├── node_modules/ # custom plugins for gitbook (WIP)
    └──  *node_plugins* # such as JS Sequence diagrams - diagrams as code 
├── opencontrol.yaml # The root file for Compliance-Masonry to pull in materials
├── script/ # the source for tests (BATS)
    └── bats_compliance.bats # the tests for Compliance-Masonry & Docker image
```


### Compliance Test Project

This repository mocks [Opencontrols/freedonia-compliance](https://github.com/opencontrol)  The reason for creating a new repository that mocks the freedonia effort, is to customize a few things.

1) The documentation output

- Appending gap analysis

2) The standards

- Customize a standard (that mocks NIST and is local)

3) The certification

- Customize a low-risk policy (that mocks the AU policy)

4) Use a single repo

- Remove the dependency on github links, keep it self contained

5) Add Dockerfile, Add BATS tests, Add CI

- Add some test cases for make sure Compiance-Masonry does it's thing
