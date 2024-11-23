# Semantic Versioning Automation Example with GitHub Actions

https://img.shields.io/github/v/tag/suguis/automatic-versioning-example?label=version

This repository is a practical example of how to automate semantic versioning of a project using GitHub Actions. The goal is to demonstrate how to use the tool to calculate and update the version of a project automatically, based on the commits made.

## Introduction

Semantic versioning is a convention for assigning version numbers to software projects in a way that reflects the magnitude of changes made. In this example, the `ietf-tools/semver-action` tool is used to calculate the next version of the project, based on the commits made.

## How it works

The workflow runs on every push to the `main` branch and performs the following actions:

1. Calculates the next version of the project, based on the commits made.
2. Updates the `VERSION.txt` file with the calculated version.
3. Commits the changes from the previous step.
4. Creates a tag with the calculated version.
5. Builds and pushes the generated Docker image, tagged with the version, to the image repository.

## Usage

To use this example, simply fork this repository and modify the `.github/workflows/version-bump.yml` file to put your username and repository name, in lowercase.

You can try running the latest version of the corresponding Docker image like this:

```sh
docker run ghcr.io/your-username/your-repo-name:latest
```

## Experimentation

You can experiment with your own fork and make commits to see how the version changes. You can create a separate file within the repository to make changes, or create empty commits like this:

```sh
git commit --allow-empty -m "feat: empty commit"
```

When you push to `main`, either by committing directly or through a PR, the action will run and generate a new Docker image, which will print the new version calculated from your commits.

## License

This project is under the [MIT](https://opensource.org/licenses/MIT) license.
