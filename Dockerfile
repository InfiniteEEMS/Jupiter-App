FROM ubuntu:18.04

ADD setup.sh /test/setup.sh

ADD cvtest.py /test/cvtest.py

RUN cd /test && bash ./setup.sh && python3 cvtest.py
