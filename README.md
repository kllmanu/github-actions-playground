# github-actions-playground

Just a few things I'd like to try:

- [x] github actions in general
- [x] use an archlinux container
- [x] play with `git-lfs`
- [x] setup ssh
- [ ] deployment with rsync

## Notes

### Git LFS

https://www.atlassian.com/git/tutorials/git-lfs

- ~~`git lfs track images/*.webp` needs to be called for new files again~~
- they will appear in `.gitattributes` once they are tracked
- ok, it looks like I also just add a wildcard to `.gitattributes` myself and every subfolder can have its own attributes file
- no need to add them to `.gitignore` just commit them as usual
- while untracking works, it is a little bit tricky to delete the files from the storage itself,
  you also have to take [some additional steps](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)
  to remove all sensitive data or just delete the repository itself

### Github Actions

[![arch](https://github.com/kllmanu/github-actions-playground/actions/workflows/arch.yml/badge.svg)](https://github.com/kllmanu/github-actions-playground/actions/workflows/arch.yml)
[![ubuntu](https://github.com/kllmanu/github-actions-playground/actions/workflows/ubuntu.yml/badge.svg)](https://github.com/kllmanu/github-actions-playground/actions/workflows/ubuntu.yml)

- created my first action from github web, but workflow authoring from VS Code with the official extension seems to be the way to go
- just did a few commits to test it quickly, no issues whatsoever
- still not that happy using yaml files :(
- I prefer to run Arch instead of using actions from the marketplace
- checking out LFS with `lfs: true` in order to work with the real files
- had a lot of trial & errors with setting up ssh, the reason was the expansion of `~` in the container, which resulted in `Host key verification failed`, it looks like the environment of the ubuntu runner has no problems with it, but arch image is running as root in the container so I ended up with absolute paths `/root/.ssh`
- doing things in the container need an additional 30 secs of running time, maybe installing the latest hugo from releases is the better option
- and they have all kind of stuff preinstalled

https://github.com/actions/runner-images/blob/main/images/ubuntu/Ubuntu2404-Readme.md

- this is a good starting point to setup hugo https://gohugo.io/host-and-deploy/host-on-github-pages/
