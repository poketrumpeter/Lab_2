#!/bin/bash
# Author:  Gregorio Figueroa
# Date: 1/30/19
# Script Follows Here:
echo "Please enter a regular expression"
read regEx
echo "What file do you want to process"
read fileName
grep $regEx $fileName
echo "Phone Numbers:"
grep -c  -E '\d{3}-\d{3}-\d{4}' regex_practice.txt
echo "Emails:"
grep -c '[A-Za-z0-9]@[A-Za-z0-9].[a-z]' regex_practice.txt
grep  -E '[3][0][3]-\d{3}-\d{4}$' regex_practice.txt > phone_results.txt
grep '[A-Za-z0-9._-]@[^\geocities.com]' regex_practice.txt > email_results.txt
echo "grep commands: "
grep -n ^$regEx$ regex_practice.txt >> command_results.txt

