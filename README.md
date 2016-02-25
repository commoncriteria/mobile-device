Protection Profile Template
===============

Quickstart
----------

1. To make a new protection profile create a new repo, probably through the web interface. 


2. Copy the URL to the projects git file to the clipboard. Run the following script, pasting the value copied into where you see $NEW_REPO_GIT_URL.

````
git clone --bare https://github.com/common-criteria/pp-template.git
# Make a bare clone of the repository

cd pp-template.git
git push --mirror $NEW_REPO_GIT_URL
# Mirror-push to the new repository

cd ..
rm -rf pp-template.git
# Remove our temporary local repository
````

3. Do a full clone of your new project

4. Rename the input file, currently named, input/pp-template.xml to the name
of the project with xml added to it; for example, operatingsystem and application
have operatingsystem.xml and application.xml input files respectively.

If something was the project name it would be,

````
git mv input/pp-template.xml input/something.xml
````

5. Remove this content from the readme, up to the line below and customize. 

----

Some project
===============

Protection Profile for QQQQ


## Working Draft
[Essential Security Requirements (ESR)](http://common-criteria.rhcloud.com/project/output/project-esr.html)

[Protection Profile for QQQQ ](http://common-criteria.rhcloud.com/qqq/output/qqqq-release.html)

## Release Version
[Protection Profile for QQQQ v4.0](https://www.niap-ccevs.org/) 8/14/3000

## Technical Community
[How to join the NIAP OS Technical Community (Mailing list and updates)](
https://www.niap-ccevs.org/NIAP_Evolution/tech_communities.cfm)

## Development Info
[Help working with Transforms Submodule](https://github.com/commoncriteria/transforms/wiki/Working-with-Transforms-as-a-Submodule)

## Quickstart
To clone this project along with its _transforms_ submodule run:

````
  git clone --recursive git@github.com:commoncriteria/qqqq.git
````
To pull updates from the upstream _transforms_ submodule and commit them run:
````
 git submodule update --remote transforms
 git add transforms
 git commit
````
