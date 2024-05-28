#!/bin/bash -e
################################################################################
##  File:  install-clang.sh
##  Desc:  Install Clang compiler
################################################################################

# Source the helpers for use with the script
source $HELPER_SCRIPTS/install.sh
source $HELPER_SCRIPTS/os.sh

llvm_key=/etc/apt/trusted.gpg.d/apt.llvm.org.asc
llvm_list=/etc/apt/sources.list.d/apt_llvm_org.list

add_apt_repo() {
    local version=$1
    codename=$(lsb_release -cs)
    base_url=apt.llvm.org
    key=llvm-snapshot.gpg.key
    wget -qO- https://$base_url/$key | tee $llvm_key
    echo "deb [signed-by=$llvm_key] http://$base_url/$codename/ llvm-toolchain-$codename$version main" >> $llvm_list
    apt-get update
}

del_apt_repo() {
    rm -f $llvm_list
    rm -f $llvm_key
}

install_clang() {
    local version=$1
    echo "Installing clang$version..."
    apt-get install -y "clang$version" "lldb$version" "lld$version" "clang-format$version" "clang-tidy$version"
}

set_default_clang() {
    local version=$1

    echo "Make Clang ${version} default"
    update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-${version} 100
    update-alternatives --install /usr/bin/clang clang /usr/bin/clang-${version} 100
    update-alternatives --install /usr/bin/clang-format clang-format /usr/bin/clang-format-${version} 100
    update-alternatives --install /usr/bin/clang-tidy clang-tidy /usr/bin/clang-tidy-${version} 100
    update-alternatives --install /usr/bin/run-clang-tidy run-clang-tidy /usr/bin/run-clang-tidy-${version} 100
}

versions=$(get_toolset_value '.clang.versions[]')
default_clang_version=$(get_toolset_value '.clang.default_version')

for version in ${versions[*]}; do
    if [[ $version != $default_clang_version ]]; then
        opt_version="-$version"
    else
        opt_version=""
    fi
    add_apt_repo $opt_version
    install_clang $opt_version
done

set_default_clang $default_clang_version

del_apt_repo

invoke_tests "Tools" "clang"
