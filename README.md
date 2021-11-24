# Workflows-Microservices

This single repository is used to centralize and distribute CI/CD scripts to all microservices. This enables your team to modify it in one place and distribute it with one merge on dev and another one on master when it was successful.

## Project parts
 1. The folder `.github` is used by GitHub Action for files' distribution.
 2. The folder `scripts` is all of the scripts used by this project's Action.
 3. The folder `src` is containning the GitHub Actions and Dockerfiles which are distributed in all of microservices projects.
