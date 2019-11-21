#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux
CND_DLIB_EXT=so
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/antlr4/parser/JsonBaseVisitor.o \
	${OBJECTDIR}/antlr4/parser/JsonLexer.o \
	${OBJECTDIR}/antlr4/parser/JsonParser.o \
	${OBJECTDIR}/antlr4/parser/JsonVisitor.o \
	${OBJECTDIR}/src/CParser.o \
	${OBJECTDIR}/src/CRecord.o \
	${OBJECTDIR}/src/CRecordField.o \
	${OBJECTDIR}/src/CRecordList.o \
	${OBJECTDIR}/src/CTable.o \
	${OBJECTDIR}/src/CTableField.o \
	${OBJECTDIR}/src/CTableList.o \
	${OBJECTDIR}/src/main.o \
	${OBJECTDIR}/src/utils.o


# C Compiler Flags
CFLAGS=-Wall -pg

# CC Compiler Flags
CCFLAGS=-Wall -pg
CXXFLAGS=-Wall -pg

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=/home/gbencke/git/188.Parse.text.file.to.mysql.db.in.parallel.using.multiple.cores/src/Parser/antlr4/lib/libantlr4-runtime.a

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk bin/parser

bin/parser: /home/gbencke/git/188.Parse.text.file.to.mysql.db.in.parallel.using.multiple.cores/src/Parser/antlr4/lib/libantlr4-runtime.a

bin/parser: ${OBJECTFILES}
	${MKDIR} -p bin
	${LINK.cc} -o bin/parser ${OBJECTFILES} ${LDLIBSOPTIONS} -pg -static

${OBJECTDIR}/antlr4/parser/JsonBaseVisitor.o: antlr4/parser/JsonBaseVisitor.cpp
	${MKDIR} -p ${OBJECTDIR}/antlr4/parser
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/home/gbencke/git/188.Parse.text.file.to.mysql.db.in.parallel.using.multiple.cores/src/Parser/antlr4/include -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/antlr4/parser/JsonBaseVisitor.o antlr4/parser/JsonBaseVisitor.cpp

${OBJECTDIR}/antlr4/parser/JsonLexer.o: antlr4/parser/JsonLexer.cpp
	${MKDIR} -p ${OBJECTDIR}/antlr4/parser
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/home/gbencke/git/188.Parse.text.file.to.mysql.db.in.parallel.using.multiple.cores/src/Parser/antlr4/include -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/antlr4/parser/JsonLexer.o antlr4/parser/JsonLexer.cpp

${OBJECTDIR}/antlr4/parser/JsonParser.o: antlr4/parser/JsonParser.cpp
	${MKDIR} -p ${OBJECTDIR}/antlr4/parser
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/home/gbencke/git/188.Parse.text.file.to.mysql.db.in.parallel.using.multiple.cores/src/Parser/antlr4/include -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/antlr4/parser/JsonParser.o antlr4/parser/JsonParser.cpp

${OBJECTDIR}/antlr4/parser/JsonVisitor.o: antlr4/parser/JsonVisitor.cpp
	${MKDIR} -p ${OBJECTDIR}/antlr4/parser
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/home/gbencke/git/188.Parse.text.file.to.mysql.db.in.parallel.using.multiple.cores/src/Parser/antlr4/include -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/antlr4/parser/JsonVisitor.o antlr4/parser/JsonVisitor.cpp

${OBJECTDIR}/src/CParser.o: src/CParser.cpp
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/home/gbencke/git/188.Parse.text.file.to.mysql.db.in.parallel.using.multiple.cores/src/Parser/antlr4/include -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/CParser.o src/CParser.cpp

${OBJECTDIR}/src/CRecord.o: src/CRecord.cpp
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/home/gbencke/git/188.Parse.text.file.to.mysql.db.in.parallel.using.multiple.cores/src/Parser/antlr4/include -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/CRecord.o src/CRecord.cpp

${OBJECTDIR}/src/CRecordField.o: src/CRecordField.cpp
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/home/gbencke/git/188.Parse.text.file.to.mysql.db.in.parallel.using.multiple.cores/src/Parser/antlr4/include -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/CRecordField.o src/CRecordField.cpp

${OBJECTDIR}/src/CRecordList.o: src/CRecordList.cpp
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/home/gbencke/git/188.Parse.text.file.to.mysql.db.in.parallel.using.multiple.cores/src/Parser/antlr4/include -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/CRecordList.o src/CRecordList.cpp

${OBJECTDIR}/src/CTable.o: src/CTable.cpp
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/home/gbencke/git/188.Parse.text.file.to.mysql.db.in.parallel.using.multiple.cores/src/Parser/antlr4/include -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/CTable.o src/CTable.cpp

${OBJECTDIR}/src/CTableField.o: src/CTableField.cpp
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/home/gbencke/git/188.Parse.text.file.to.mysql.db.in.parallel.using.multiple.cores/src/Parser/antlr4/include -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/CTableField.o src/CTableField.cpp

${OBJECTDIR}/src/CTableList.o: src/CTableList.cpp
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/home/gbencke/git/188.Parse.text.file.to.mysql.db.in.parallel.using.multiple.cores/src/Parser/antlr4/include -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/CTableList.o src/CTableList.cpp

${OBJECTDIR}/src/main.o: src/main.cpp
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/home/gbencke/git/188.Parse.text.file.to.mysql.db.in.parallel.using.multiple.cores/src/Parser/antlr4/include -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/main.o src/main.cpp

${OBJECTDIR}/src/utils.o: src/utils.cpp
	${MKDIR} -p ${OBJECTDIR}/src
	${RM} "$@.d"
	$(COMPILE.cc) -g -I/home/gbencke/git/188.Parse.text.file.to.mysql.db.in.parallel.using.multiple.cores/src/Parser/antlr4/include -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/src/utils.o src/utils.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
