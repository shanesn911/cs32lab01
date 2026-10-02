#Makefile for lab01, Shane Nguyen. CS32

CXX=g++
# CXX=clang++

helloWorld: helloWorld.o
		${CXX} -c helloWorld.cpp
		${CXX} helloWorld.o -o helloWorld


lab01Test: lab01Test.o tddFuncs.o arrayFuncs.o
		${CXX} lab01Test.o tddFuncs.o arrayFuncs.o -o lab01Test

clean:
		/bin/rm -f *.o helloWorld lab01Test