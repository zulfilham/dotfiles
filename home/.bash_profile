#!/data/data/com.termux/files/usr/bin/bash

if ! pidof -q sshd; then sshd -p 8022 &> /dev/null; fi;
if ! pidof -q crond; then crond &> /dev/null; fi;

for filename in ~/.{export,aliases,auto_completion,bash_prompt,functions}; do
   if [ -r $filename ]; then
      source $filename;
   fi;
done;

unset filename;
