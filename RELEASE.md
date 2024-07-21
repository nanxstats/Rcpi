# Make a new release

## Clone repos

```bash
git clone git@github.com:nanxstats/Rcpi.git
git clone -b devel git@git.bioconductor.org:packages/Rcpi.git Rcpi-devel
git clone -b RELEASE_3_19 git@git.bioconductor.org:packages/Rcpi.git Rcpi-release
```

## Merge changes

```bash
# Merge Rcpi changes to Rcpi-devel, then
cd Rcpi
cp .gitignore .Rbuildignore ~/Rcpi-devel

# Merge Rcpi changes to Rcpi-release, then edit DESCRIPTION version -0.1
cd Rcpi
cp .gitignore .Rbuildignore ~/Rcpi-release
```

## Push changes

Modify branch name, write commit message, and push

```bash
cd Rcpi-devel
git status
git add -A
git commit -m "v1.41.1"
git push origin devel
```

```bash
cd Rcpi-release
git status
git add -A
git commit -m "v1.41.1"
git push origin RELEASE_3_19
```
