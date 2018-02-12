#!/usr/bin/env bash

main(){
    patch_el
    install_required_packages
    init_virtualenv
}

patch_el(){
    sudo yum update -y
}

install_required_packages(){
    sudo yum install -y \
        python2-pip

    sudo pip install \
        virtualenv
}

init_virtualenv(){
    virtualenv \
        -p /usr/bin/python2.7 \
        /home/ec2-user/lambda_project
}

main
