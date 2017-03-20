# VigoJUG Page

## How to create a new page version

- bake a new version: `jbake -b`
- serve the current version (can be combined with -b): `jbake -s` 

## How to publish

- make sure you generate a new version: `rm -fr output/*` 
- bake a new version: `jbake -b` 
- publish web in master: `git subtree push --prefix=output git@github.com:vigojug/vigojug.github.io.git master` 

If you've rebased some commits in source, to foce the publication in master:

```
git push origin `git subtree split --prefix output source`:master --force
```
