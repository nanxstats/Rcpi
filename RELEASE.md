Clone

```bash
git clone git@github.com:road2stat/Rcpi.git
git clone -b master git@git.bioconductor.org:packages/Rcpi.git Rcpi-devel
git clone -b RELEASE_3_9 git@git.bioconductor.org:packages/Rcpi.git Rcpi-release
```

Merge

```bash
# Merge Rcpi changes to Rcpi-devel, then
cd Rcpi
cp .gitignore .Rbuildignore ~/Rcpi-devel

# Merge Rcpi changes to Rcpi-release, then edit DESCRIPTION version -0.1
cd Rcpi
cp .gitignore .Rbuildignore ~/Rcpi-release
```

Modify branch name, commit message, and push

```bash
cd Rcpi-devel
git status
git add -A
git commit -m 'v1.19.1 release'
git push origin master
```

```bash
cd Rcpi-release
git status
git add -A
git commit -m 'v1.19.1 release'
git push origin RELEASE_3_8
```
