# github-actions-playground

Just a few things I'd like to try:

- [ ] github actions in general
- [ ] use an archlinux container
- [x] play with `git-lfs`
- [ ] deployment with rsync

## Notes

### Git LFS

https://www.atlassian.com/git/tutorials/git-lfs

- `git lfs track images/*.webp` needs to be called for new files again
- they will appear in `.gitattributes` once they are tracked
- no need to add them to `.gitignore` just commit them as usual
- while untracking works, it is a little bit tricky to delete the files from the storage itself,
you also have to take [some additional steps](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/removing-sensitive-data-from-a-repository)
to remove all sensitive data or just delete the repository itself
