# github-actions-playground

Just a few things I'd like to try:

- [x] github actions in general
- [x] use an archlinux container
- [x] play with `git-lfs`
- [ ] setup ssh
- [ ] deployment with rsync
- [x] cache action to speed up pacman

## Notes

### Git LFS

https://www.atlassian.com/git/tutorials/git-lfs

- `git lfs track images/*.webp` needs to be called for new files again
- they will appear in `.gitattributes` once they are tracked
- no need to add them to `.gitignore` just commit them as usual
- while untracking works, it is a little bit tricky to delete the files from the storage itself,
  you also have to take [some additional steps](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)
  to remove all sensitive data or just delete the repository itself

### Github Actions

[![I use Arch, btw](https://github.com/kllmanu/github-actions-playground/actions/workflows/arch.yml/badge.svg)](https://github.com/kllmanu/github-actions-playground/actions/workflows/arch.yml)

- created my first action from github web, but workflow authoring from VS Code with the official extension seems to be the way to go
- just did a few commits to test it quickly, no issues whatsoever
- still not that happy using yaml files :(
- I prefer to run Arch instead of using actions from the marketplace
- checking out LFS with `lfs: true` in order to work with the real files
