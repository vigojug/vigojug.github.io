# VigoJUG Page

## How to create a new page version

`jbake -b` - bake a new version
`jbake -s` - serve the current version (can be combined with -b)

## How to publish

`rm -fr output/*` - make sure you generate a new version
`jbake -b` - bake a new version
`git subtree push --prefix=output git@github.com:vigojug/vigojug.github.io.git master` - publish web in master

If you've rebased some commits in source, then:

```
git push origin `git subtree split --prefix output source`:master --force
```

