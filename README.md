# Open Control Compliance-Masonry Test Project


### Structure

The project structure is setup like this:


```
.
├── book.json # where you point gitbook to go (WIP)
├── circle.yml # the circleCI hook
├── Dockerfile # Compliance-Masonry in a Docker image 
├── README.md # This project README# 
├── script/ # the source gitbook files
|   ├── bats_compliance.bats # the tests for Compliance-Masonry
├── markdowns/ # The stuff for all the gitbook magic
|   ├── README.md # mandatory
|   └── SUMMARY.md # optional 
	└── docs/ # contains all the SSP stuff
	    ├── about-the-ssp.md # you summary stuff
            └── *.png # the images for the SSP
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
