# Open Control Compliance-Masonry Test Project

[![Circle CI](https://circleci.com/gh/cleanerbot/compliance.png?style=shield&circletoken=f426e413f206dc447eea29b759fd65c4c40a7904)](https://circleci.com/gh/cleanerbot/compliance/tree/master 'View CI builds')

[![Download size](https://images.microbadger.com/badges/image/sometheycallme/compliance.svg)](http://microbadger.com/images/sometheycallme/compliance "View on microbadger.com")


### Structure

The project structure is setup like this:

```
.
└── dockerfiles/ # the images for the project
    └──dockerfile-compliance # compliance-masonry from opencontrol.org
├── Makefile  # Makefile for CircleCI
├── README.md 
├── circle.yml # CircleCI Config file
└── mock-project
    └── compliance101/ # the standards/certs from opencontrol mockups
        ├── mock_standard.yml # the NIST800-53 mock
        └── mock_certification.yml # the low risk mock control reqs   
    └── markdowns/ # The stuff for all the gitbook magic
        ├── README.md # mandatory
        └── SUMMARY.md # optional 
	    └── docs/ # contains all the SSP stuff
	        ├── about-the-ssp.md # you summary stuff
                └── *.png # the images for the SSP
        └── node_modules/ # custom plugins for gitbook (WIP)
            └──  *node_plugins* # such as JS Sequence diagrams - diagrams as code 
    └── opencontrol.yaml # The root file for Compliance-Masonry to pull in materials
└── script/ # CircleCI make scripts & Unit tests
    ├── build
    ├── clean
    ├── options.bash
    ├── publish
    └── bats_compliance.bats 
```


### Compliance Test Project

This repository mocks [Opencontrols/freedonia-compliance](https://github.com/opencontrol)  The reason for creating a new repository that mocks the freedonia effort, is to customize a few things.

1) The documentation output

- Appending gap analysis (via Makefile)

2) The standards

- Customize a standard (that mocks NIST and endpoint is local rather than github.)

3) The certification

- Customize a low-risk certification (that mocks the AU policy and endpoint is local rather than github.)

4) Use a single repo

- Remove the dependency on github links, keep it self contained

5) Add Dockerfile, Add BATS tests, Add CI

- Add some test cases for make sure Compiance-Masonry does it's thing inside the container


### To Do

1) Add gitbook dependencies to the image

2) create self contained execution of compliance-masonry with gitbook-serve and serve the page from the image

3) create self contained execution of gitbook pdf creation and get the pdf out
