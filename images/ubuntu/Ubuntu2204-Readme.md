# Ubuntu22.04
- OS Version: 22.04.3 LTS
- Kernel Version: 6.2.0-1019-azure
- Image Version: 22.4.1
- Systemd version: 249.11-0ubuntu3.12

## Installed Software

### Language and Runtime
- Bash 5.1.16(1)-release
- Dash 0.5.11+git20210903+057cd650a4ed-3build1
- GNU C++: 11.4.0
- Kotlin 1.9.22-release-704
- Node.js 18.19.0
- Perl 5.34.0
- Python 3.10.12
- Ruby 3.0.2p107

### Package Management
- cpan 1.64
- Helm 3.14.0
- Miniconda 23.11.0
- Npm 10.2.3
- Pip 22.0.2
- Pip3 22.0.2
- Pipx 1.4.3
- RubyGems 3.3.5
- Yarn 1.22.21

#### Environment variables
| Name                    | Value                |
| ----------------------- | -------------------- |
| CONDA                   | /usr/share/miniconda |
| VCPKG_INSTALLATION_ROOT |                      |

#### Homebrew note
```
Location: /home/linuxbrew
Note: Homebrew is pre-installed on image but not added to PATH.
run the eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" command
to accomplish this.
```

### Project Management
- Lerna 8.1.2
- Maven 3.8.8

### Tools
- apt-fast 1.10.0
- AzCopy 10.23.0 - available by `azcopy` and `azcopy10` aliases
- Bicep 0.25.3
- Buildah 1.23.1
- Docker Amazon ECR Credential Helper 0.7.1
- Docker Compose v1 1.29.2
- Docker Compose v2 2.23.3
- Docker-Buildx 0.12.1
- Docker Client 24.0.7
- Docker Server 24.0.7
- Fastlane 2.219.0
- Git 2.43.0
- Git LFS 3.4.1
- Git-ftp 1.6.0
- Haveged 1.9.14
- jq 1.6
- Kind 0.21.0
- Kubectl 1.29.1
- Kustomize 5.3.0
- MediaInfo 21.09
- Mercurial 6.1.1
- Minikube 1.32.0
- n 9.2.0
- Newman 6.1.1
- OpenSSL 3.0.2-0ubuntu1.14
- Packer 1.10.1
- Podman 3.4.4
- Skopeo 1.4.1
- Sphinx Open Source Search Server 2.2.11
- SVN 1.14.1
- yamllint 1.34.0
- yq 4.40.5
- zstd 1.5.5

### CLI Tools
- AWS CLI bin
- AWS CLI Session Manager Plugin /usr/bin/bash: line 1: session-manager-plugin: command not found
- Azure CLI 2.57.0
- Azure CLI (azure-devops) 0.26.0
- GitHub CLI 2.43.1

### Java
| Version             | Environment Variable |
| ------------------- | -------------------- |
| 21.0.2+13 (default) | JAVA_HOME_21_X64     |

### PHP Tools
```
Both Xdebug and PCOV extensions are installed, but only Xdebug is enabled.
```

### Haskell Tools

### Rust Tools

#### Packages

### Browsers and Drivers

#### Environment variables
| Name              | Value |
| ----------------- | ----- |
| CHROMEWEBDRIVER   |       |
| EDGEWEBDRIVER     |       |
| GECKOWEBDRIVER    |       |
| SELENIUM_JAR_PATH |       |

### .NET Tools
- .NET Core SDK: 7.0.405, 8.0.101
- nbgv 3.6.133+2d32d93cb1

### Databases
- sqlite3 3.37.2

### Cached Tools

#### Go
- 1.19.13
- 1.20.14
- 1.21.7

#### Node.js
- 18.19.0
- 20.11.0

#### Python
- 3.7.17
- 3.8.18
- 3.9.18
- 3.10.13
- 3.11.7
- 3.12.1

#### PyPy
- 3.7.13 [PyPy 7.3.9]
- 3.8.16 [PyPy 7.3.11]
- 3.9.18 [PyPy 7.3.15]
- 3.10.13 [PyPy 7.3.15]

#### Ruby
- 3.1.4

### PowerShell Tools
- PowerShell 7.4.1

#### PowerShell Modules
- Az: 9.3.0
- MarkdownPS: 1.9
- Pester: 5.5.0
- PSScriptAnalyzer: 1.21.0

### Web Servers

### Android

#### Environment variables

### Cached Docker images
| Repository:Tag          | Digest                                                                   | Created    |
| ----------------------- | ------------------------------------------------------------------------ | ---------- |
| alpine:3.18             | sha256:11e21d7b981a59554b3f822c49f6e9f57b6068bb74f49c4cd5cc4c663c7e5160  | 2024-01-27 |
| buildpack-deps:bullseye | sha256:c669f9b602dd3b397a7c235929ec56fa73a0a76fdf320aaa84b78fcd96634d60  | 2024-01-31 |
| moby/buildkit:latest    | sha256:449188623c7a8a3bd4f161c5d0ddf5cabbfb828f7eaadf9ed8111864b911a308  | 2024-01-31 |

### Installed apt packages
| Name                   | Version                             |
| ---------------------- | ----------------------------------- |
| acl                    | 2.3.1-1                             |
| aria2                  | 1.36.0-1                            |
| autoconf               | 2.71-2                              |
| automake               | 1:1.16.5-1.3                        |
| binutils               | 2.38-4ubuntu2.5                     |
| bison                  | 2:3.8.2+dfsg-1build1                |
| brotli                 | 1.0.9-2build6                       |
| bzip2                  | 1.0.8-5build1                       |
| coreutils              | 8.32-4.1ubuntu1                     |
| curl                   | 7.81.0-1ubuntu1.15                  |
| dbus                   | 1.12.20-2ubuntu4.1                  |
| dnsutils               | 1:9.18.18-0ubuntu0.22.04.1          |
| dpkg                   | 1.21.1ubuntu2.2                     |
| dpkg-dev               | 1.21.1ubuntu2.2                     |
| fakeroot               | 1.28-1ubuntu1                       |
| file                   | 1:5.41-3ubuntu0.1                   |
| findutils              | 4.8.0-1ubuntu3                      |
| flex                   | 2.6.4-8build2                       |
| fonts-noto-color-emoji | 2.042-0ubuntu0.22.04.1              |
| ftp                    | 20210827-4build1                    |
| g++                    | 4:11.2.0-1ubuntu1                   |
| gcc                    | 4:11.2.0-1ubuntu1                   |
| gnupg2                 | 2.2.27-3ubuntu2.1                   |
| haveged                | 1.9.14-1ubuntu1                     |
| imagemagick            | 8:6.9.11.60+dfsg-1.3ubuntu0.22.04.3 |
| iproute2               | 5.15.0-1ubuntu2                     |
| iputils-ping           | 3:20211215-1                        |
| jq                     | 1.6-2.1ubuntu3                      |
| lib32z1                | 1:1.2.11.dfsg-2ubuntu9.2            |
| libc++-dev             | 1:14.0-55\~exp2                     |
| libc++abi-dev          | 1:14.0-55\~exp2                     |
| libc6-dev              | 2.35-0ubuntu3.6                     |
| libcurl4               | 7.81.0-1ubuntu1.15                  |
| libgbm-dev             | 23.0.4-0ubuntu1\~22.04.1            |
| libgconf-2-4           | 3.2.6-7ubuntu2                      |
| libgsl-dev             | 2.7.1+dfsg-3                        |
| libgtk-3-0             | 3.24.33-1ubuntu2                    |
| libmagic-dev           | 1:5.41-3ubuntu0.1                   |
| libmagickcore-dev      | 8:6.9.11.60+dfsg-1.3ubuntu0.22.04.3 |
| libmagickwand-dev      | 8:6.9.11.60+dfsg-1.3ubuntu0.22.04.3 |
| libsecret-1-dev        | 0.20.5-2                            |
| libsqlite3-dev         | 3.37.2-2ubuntu0.3                   |
| libssl-dev             | 3.0.2-0ubuntu1.14                   |
| libtool                | 2.4.6-15build2                      |
| libunwind8             | 1.3.2-2build2.1                     |
| libxkbfile-dev         | 1:1.1.0-1build3                     |
| libxss1                | 1:1.2.3-1build2                     |
| libyaml-dev            | 0.2.2-1build2                       |
| locales                | 2.35-0ubuntu3.6                     |
| lz4                    | 1.9.3-2build2                       |
| m4                     | 1.4.18-5ubuntu2                     |
| make                   | 4.3-4.1build1                       |
| mediainfo              | 22.03-1                             |
| mercurial              | 6.1.1-1ubuntu1                      |
| net-tools              | 1.60+git20181103.0eebece-1ubuntu5   |
| netcat                 | 1.218-4ubuntu1                      |
| openssh-client         | 1:8.9p1-3ubuntu0.6                  |
| p7zip-full             | 16.02+dfsg-8                        |
| p7zip-rar              | 16.02-3build1                       |
| parallel               | 20210822+ds-2                       |
| pass                   | 1.7.4-5                             |
| patchelf               | 0.14.3-1                            |
| pigz                   | 2.6-1                               |
| pkg-config             | 0.29.2-1ubuntu3                     |
| pollinate              | 4.33-3ubuntu2                       |
| python-is-python3      | 3.9.2-2                             |
| rpm                    | 4.17.0+dfsg1-4build1                |
| rsync                  | 3.2.7-0ubuntu0.22.04.2              |
| shellcheck             | 0.8.0-2                             |
| sphinxsearch           | 2.2.11-8                            |
| sqlite3                | 3.37.2-2ubuntu0.3                   |
| ssh                    | 1:8.9p1-3ubuntu0.6                  |
| sshpass                | 1.09-1                              |
| subversion             | 1.14.1-3ubuntu0.22.04.1             |
| sudo                   | 1.9.9-1ubuntu2.4                    |
| swig                   | 4.0.2-1ubuntu1                      |
| tar                    | 1.34+dfsg-1ubuntu0.1.22.04.2        |
| telnet                 | 0.17-44build1                       |
| texinfo                | 6.8-4build1                         |
| time                   | 1.9-0.1build2                       |
| tk                     | 8.6.11+1build2                      |
| tzdata                 | 2023d-0ubuntu0.22.04                |
| unzip                  | 6.0-26ubuntu3.1                     |
| upx                    | 3.96-3                              |
| wget                   | 1.21.2-2ubuntu1                     |
| xorriso                | 1.5.4-2                             |
| xvfb                   | 2:21.1.4-2ubuntu1.7\~22.04.8        |
| xz-utils               | 5.2.5-2ubuntu1                      |
| zip                    | 3.0-12build2                        |
| zsync                  | 0.6.2-3ubuntu1                      |
