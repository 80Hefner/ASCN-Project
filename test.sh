#!/bin/bash

OS=$(lsb_release -is)

if [ ${OS} = "Ubuntu" ] ; then
    echo ola
fi