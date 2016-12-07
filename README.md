# Open Control Compliance-Masonry Test Project


### Structure

The project structure is setup like this:


-rwxrwxrwx  1 TimKropp  staff     638 Dec  7 07:20 Dockerfile
-rwxrwxrwx  1 TimKropp  staff     215 Dec  7 07:26 Makefile
-rwxrwxrwx  1 TimKropp  staff    1355 Dec  7 07:40 README.md
-rwxrwxrwx  1 TimKropp  staff     343 Dec  6 21:13 book.json
-rwxrwxrwx  1 TimKropp  staff     777 Dec  7 07:24 circle.yml
drwxrwxrwx  1 TimKropp  staff  262144 Nov 30 08:20 compliance101
drwxrwxrwx  1 TimKropp  staff  262144 Nov 30 07:42 markdowns
drwxrwxrwx  1 TimKropp  staff  262144 Dec  6 07:25 node_modules
-rwxrwxrwx  1 TimKropp  staff     248 Dec  1 07:36 opencontrol.yaml
drwxrwxrwx  1 TimKropp  staff  262144 Dec  7 07:26 script
drwxrwxrwx  1 TimKropp  staff  262144 Nov 30 07:52 testcomponent

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
├── markdowns/ # The stuff for all the gitbook magic
    ├── README.md # mandatory
    └── SUMMARY.md # optional 
	└── docs/ # contains all the SSP stuff
	    ├── about-the-ssp.md # you summary stuff
            └── *.png # the images for the SSP
├── node_modules/ # custom plugins for gitbook (WIP)
    ├── *nodes 
├── opencontrol.yaml # The root file for Compliance-Masonry to pull in materials
├── script/ # the source for tests (BATS)
    ├── bats_compliance.bats # the tests for Compliance-Masonry & Docker image
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
