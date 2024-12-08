# Ubuntu22.04
- OS Version: 22.04.4 LTS
- Kernel Version: 6.5.0-1021-azure
- Image Version: 22.4.2
- Systemd version: 249.11-0ubuntu3.12

## Installed Software

### Language and Runtime
- Bash 5.1.16(1)-release
- Clang: 17.0.6, 18.1.6, 19.0.0
- Clang-format: 17.0.6, 18.1.6, 19.0.0
- Clang-tidy: 17.0.6, 18.1.6, 19.0.0
- Dash 0.5.11+git20210903+057cd650a4ed-3build1
- GNU C++: 11.4.0
- Kotlin 2.0.0-release-341
- Node.js 20.14.0
- Perl 5.34.0
- Python 3.10.12
- Ruby 3.0.2p107

### Package Management
- cpan 1.64
- Helm 3.15.1
- Miniconda 24.4.0
- Npm 10.7.0
- Pip 22.0.2
- Pip3 22.0.2
- Pipx 1.0.0
- RubyGems 3.3.5
- Vcpkg (build from commit dee924de7)
- Yarn 1.22.22

#### Environment variables
| Name                    | Value                  |
| ----------------------- | ---------------------- |
| CONDA                   | /usr/share/miniconda   |
| VCPKG_INSTALLATION_ROOT | /usr/local/share/vcpkg |

#### Homebrew note
```
Location: /home/linuxbrew
Note: Homebrew is pre-installed on image but not added to PATH.
run the eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" command
to accomplish this.
```

### Project Management
- Ant 1.10.12
- Gradle 8.7
- Lerna 8.1.3
- Maven 3.8.8

### Tools
- apt-fast 1.10.0
- AzCopy 10.25.0 - available by `azcopy` and `azcopy10` aliases
- Bazel 7.1.2
- Bazelisk 1.19.0
- Bicep 0.27.1
- Buildah 1.23.1
- CMake 3.29.3
- Docker Amazon ECR Credential Helper 0.8.0
- Docker Compose v1 1.29.2
- Docker Compose v2 2.27.0
- Docker-Buildx 0.14.1
- Docker Client 26.1.0
- Docker Server 26.1.0
- Fastlane 2.220.0
- Git 2.45.1
- Git LFS 3.5.1
- Git-ftp 1.6.0
- Haveged 1.9.14
- jq 1.6
- Kind 0.23.0
- Kubectl 1.30.1
- Kustomize 5.4.2
- MediaInfo 21.09
- Mercurial 6.1.1
- Minikube 1.33.1
- n 9.2.3
- Newman 6.1.2
- OpenSSL 3.0.2-0ubuntu1.15
- Packer 1.10.3
- Parcel 2.12.0
- Podman 3.4.4
- Skopeo 1.4.1
- Sphinx Open Source Search Server 2.2.11
- yamllint 1.35.1
- yq 4.44.1
- zstd 1.5.6

### CLI Tools
- AWS CLI bin
- AWS CLI Session Manager Plugin /usr/bin/bash: line 1: session-manager-plugin: command not found
- Azure CLI 2.61.0
- Azure CLI (azure-devops) 1.0.1
- GitHub CLI 2.49.2

### Java
| Version            | Environment Variable |
| ------------------ | -------------------- |
| 21.0.3+9 (default) | JAVA_HOME_21_X64     |

### PHP Tools
```
Both Xdebug and PCOV extensions are installed, but only Xdebug is enabled.
```

### Haskell Tools

### Rust Tools
- Cargo 1.78.0
- Rust 1.78.0
- Rustdoc 1.78.0
- Rustup 1.27.1

#### Packages
- Bindgen 0.69.4
- Cargo audit 0.20.0
- Cargo clippy 0.1.78
- Cargo outdated 0.15.0
- Cbindgen 0.26.0
- Rustfmt 1.7.0

### Browsers and Drivers

#### Environment variables
| Name              | Value |
| ----------------- | ----- |
| CHROMEWEBDRIVER   |       |
| EDGEWEBDRIVER     |       |
| GECKOWEBDRIVER    |       |
| SELENIUM_JAR_PATH |       |

### .NET Tools
- .NET Core SDK: 6.0.423, 7.0.120, 7.0.203, 7.0.317, 7.0.410, 8.0.106, 8.0.206, 8.0.301
- nbgv 3.6.133+2d32d93cb1

### Databases
- sqlite3 3.37.2

### Cached Tools

#### Go
- 1.20.14
- 1.21.10
- 1.22.3

#### Node.js
- 18.20.3
- 20.13.1

#### Python
- 3.9.19
- 3.10.14
- 3.11.9
- 3.12.3

#### PyPy
- 3.9.19 [PyPy 7.3.16]
- 3.10.14 [PyPy 7.3.16]

#### Ruby
- 3.3.1
- 3.4.0

### PowerShell Tools
- PowerShell 7.4.2

#### PowerShell Modules
- Az: 11.5.0
- MarkdownPS: 1.9
- Pester: 5.5.0
- PSScriptAnalyzer: 1.22.0

### Web Servers

### Android
| Package Name               | Version                                                                                                                         |
| -------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| Android Command Line Tools | 12.0                                                                                                                            |
| Android SDK Build-tools    | 34.0.0                                                                                                                          |
| Android SDK Platforms      | android-34-ext8 (rev 1)<br>android-34-ext11 (rev 1)<br>android-34 (rev 3)<br>android-33-ext5 (rev 1)<br>android-33-ext4 (rev 1) |
| Android Support Repository | 47.0.0                                                                                                                          |
| CMake                      | 3.10.2<br>3.18.1<br>3.22.1                                                                                                      |
| Google Play services       | 49                                                                                                                              |
| Google Repository          | 58                                                                                                                              |
| NDK                        | 24.0.8215888<br>25.2.9519653<br>26.3.11579264 (default)                                                                         |

#### Environment variables
| Name                    | Value                                        |
| ----------------------- | -------------------------------------------- |
| ANDROID_HOME            | /usr/local/lib/android/sdk                   |
| ANDROID_NDK             | /usr/local/lib/android/sdk/ndk/26.3.11579264 |
| ANDROID_NDK_HOME        | /usr/local/lib/android/sdk/ndk/26.3.11579264 |
| ANDROID_NDK_LATEST_HOME | /usr/local/lib/android/sdk/ndk/26.3.11579264 |
| ANDROID_NDK_ROOT        | /usr/local/lib/android/sdk/ndk/26.3.11579264 |
| ANDROID_SDK_ROOT        | /usr/local/lib/android/sdk                   |

### Cached Docker images

### Installed apt packages
| Name                   | Version                           |
| ---------------------- | --------------------------------- |
| acl                    | 2.3.1-1                           |
| aria2                  | 1.36.0-1                          |
| autoconf               | 2.71-2                            |
| automake               | 1:1.16.5-1.3                      |
| binutils               | 2.38-4ubuntu2.6                   |
| bison                  | 2:3.8.2+dfsg-1build1              |
| brotli                 | 1.0.9-2build6                     |
| bzip2                  | 1.0.8-5build1                     |
| coreutils              | 8.32-4.1ubuntu1.2                 |
| curl                   | 7.81.0-1ubuntu1.16                |
| dbus                   | 1.12.20-2ubuntu4.1                |
| dnsutils               | 1:9.18.18-0ubuntu0.22.04.2        |
| dpkg                   | 1.21.1ubuntu2.3                   |
| dpkg-dev               | 1.21.1ubuntu2.3                   |
| fakeroot               | 1.28-1ubuntu1                     |
| file                   | 1:5.41-3ubuntu0.1                 |
| findutils              | 4.8.0-1ubuntu3                    |
| flex                   | 2.6.4-8build2                     |
| fonts-noto-color-emoji | 2.042-0ubuntu0.22.04.1            |
| ftp                    | 20210827-4build1                  |
| g++                    | 4:11.2.0-1ubuntu1                 |
| gcc                    | 4:11.2.0-1ubuntu1                 |
| gnupg2                 | 2.2.27-3ubuntu2.1                 |
| haveged                | 1.9.14-1ubuntu1                   |
| iproute2               | 5.15.0-1ubuntu2                   |
| iputils-ping           | 3:20211215-1                      |
| jq                     | 1.6-2.1ubuntu3                    |
| libssl-dev             | 3.0.2-0ubuntu1.15                 |
| libtool                | 2.4.6-15build2                    |
| locales                | 2.35-0ubuntu3.7                   |
| lz4                    | 1.9.3-2build2                     |
| m4                     | 1.4.18-5ubuntu2                   |
| make                   | 4.3-4.1build1                     |
| mediainfo              | 22.03-1                           |
| mercurial              | 6.1.1-1ubuntu1                    |
| net-tools              | 1.60+git20181103.0eebece-1ubuntu5 |
| netcat                 | 1.218-4ubuntu1                    |
| openssh-client         | 1:8.9p1-3ubuntu0.7                |
| p7zip-full             | 16.02+dfsg-8                      |
| p7zip-rar              | 16.02-3build1                     |
| parallel               | 20210822+ds-2                     |
| patchelf               | 0.14.3-1                          |
| pigz                   | 2.6-1                             |
| pkg-config             | 0.29.2-1ubuntu3                   |
| pollinate              | 4.33-3ubuntu2                     |
| python-is-python3      | 3.9.2-2                           |
| rpm                    | 4.17.0+dfsg1-4build1              |
| rsync                  | 3.2.7-0ubuntu0.22.04.2            |
| shellcheck             | 0.8.0-2                           |
| sphinxsearch           | 2.2.11-8                          |
| sqlite3                | 3.37.2-2ubuntu0.3                 |
| ssh                    | 1:8.9p1-3ubuntu0.7                |
| sshpass                | 1.09-1                            |
| sudo                   | 1.9.9-1ubuntu2.4                  |
| swig                   | 4.0.2-1ubuntu1                    |
| tar                    | 1.34+dfsg-1ubuntu0.1.22.04.2      |
| telnet                 | 0.17-44build1                     |
| texinfo                | 6.8-4build1                       |
| time                   | 1.9-0.1build2                     |
| tk                     | 8.6.11+1build2                    |
| tzdata                 | 2024a-0ubuntu0.22.04              |
| unzip                  | 6.0-26ubuntu3.2                   |
| upx                    | 3.96-3                            |
| wget                   | 1.21.2-2ubuntu1                   |
| xvfb                   | 2:21.1.4-2ubuntu1.7\~22.04.10     |
| xz-utils               | 5.2.5-2ubuntu1                    |
| zip                    | 3.0-12build2                      |
| zsync                  | 0.6.2-3ubuntu1                    |
