#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PIC32MZ_Exception_Handler.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PIC32MZ_Exception_Handler.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../sys_devcon/sys_devcon_cache_pic32mz.S ../sys_devcon/sys_devcon_pic32mz.c ../error_handler.c ../general-exception.S ../main.c ../simple-tlb-refill-exception.S ../configs_words.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1623993006/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/1623993006/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/1472/error_handler.o ${OBJECTDIR}/_ext/1472/general-exception.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1472/simple-tlb-refill-exception.o ${OBJECTDIR}/_ext/1472/configs_words.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1623993006/sys_devcon_cache_pic32mz.o.d ${OBJECTDIR}/_ext/1623993006/sys_devcon_pic32mz.o.d ${OBJECTDIR}/_ext/1472/error_handler.o.d ${OBJECTDIR}/_ext/1472/general-exception.o.d ${OBJECTDIR}/_ext/1472/main.o.d ${OBJECTDIR}/_ext/1472/simple-tlb-refill-exception.o.d ${OBJECTDIR}/_ext/1472/configs_words.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1623993006/sys_devcon_cache_pic32mz.o ${OBJECTDIR}/_ext/1623993006/sys_devcon_pic32mz.o ${OBJECTDIR}/_ext/1472/error_handler.o ${OBJECTDIR}/_ext/1472/general-exception.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1472/simple-tlb-refill-exception.o ${OBJECTDIR}/_ext/1472/configs_words.o

# Source Files
SOURCEFILES=../sys_devcon/sys_devcon_cache_pic32mz.S ../sys_devcon/sys_devcon_pic32mz.c ../error_handler.c ../general-exception.S ../main.c ../simple-tlb-refill-exception.S ../configs_words.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

# The following macros may be used in the pre and post step lines
Device=PIC32MZ2048ECH100
ProjectDir="C:\Projects\PIC32MZ_Exception_Handler\PIC32MZ_Exception_Handler.X"
ConfName=default
ImagePath="dist\default\${IMAGE_TYPE}\PIC32MZ_Exception_Handler.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="dist\default\${IMAGE_TYPE}"
ImageName="PIC32MZ_Exception_Handler.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/PIC32MZ_Exception_Handler.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
	@echo "--------------------------------------"
	@echo "User defined post-build step: [${MP_CC_DIR}\xc32-objdump -S ${ImageDir}\${PROJECTNAME}.${IMAGE_TYPE}.elf > out\list.lst]"
	@${MP_CC_DIR}\xc32-objdump -S ${ImageDir}\${PROJECTNAME}.${IMAGE_TYPE}.elf > out\list.lst
	@echo "--------------------------------------"

MP_PROCESSOR_OPTION=32MZ2048ECH100
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1623993006/sys_devcon_cache_pic32mz.o: ../sys_devcon/sys_devcon_cache_pic32mz.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1623993006" 
	@${RM} ${OBJECTDIR}/_ext/1623993006/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1623993006/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1623993006/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1623993006/sys_devcon_cache_pic32mz.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1623993006/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1623993006/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -DICD3PlatformTool=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1623993006/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1623993006/sys_devcon_cache_pic32mz.o ../sys_devcon/sys_devcon_cache_pic32mz.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1623993006/sys_devcon_cache_pic32mz.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=ICD3PlatformTool=1
	
${OBJECTDIR}/_ext/1472/general-exception.o: ../general-exception.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/general-exception.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/general-exception.o 
	@${RM} ${OBJECTDIR}/_ext/1472/general-exception.o.ok ${OBJECTDIR}/_ext/1472/general-exception.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/general-exception.o.d" "${OBJECTDIR}/_ext/1472/general-exception.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -DICD3PlatformTool=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/general-exception.o.d"  -o ${OBJECTDIR}/_ext/1472/general-exception.o ../general-exception.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1472/general-exception.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=ICD3PlatformTool=1
	
${OBJECTDIR}/_ext/1472/simple-tlb-refill-exception.o: ../simple-tlb-refill-exception.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/simple-tlb-refill-exception.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/simple-tlb-refill-exception.o 
	@${RM} ${OBJECTDIR}/_ext/1472/simple-tlb-refill-exception.o.ok ${OBJECTDIR}/_ext/1472/simple-tlb-refill-exception.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/simple-tlb-refill-exception.o.d" "${OBJECTDIR}/_ext/1472/simple-tlb-refill-exception.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -DICD3PlatformTool=1 -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/simple-tlb-refill-exception.o.d"  -o ${OBJECTDIR}/_ext/1472/simple-tlb-refill-exception.o ../simple-tlb-refill-exception.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1472/simple-tlb-refill-exception.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=ICD3PlatformTool=1
	
else
${OBJECTDIR}/_ext/1623993006/sys_devcon_cache_pic32mz.o: ../sys_devcon/sys_devcon_cache_pic32mz.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1623993006" 
	@${RM} ${OBJECTDIR}/_ext/1623993006/sys_devcon_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1623993006/sys_devcon_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1623993006/sys_devcon_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1623993006/sys_devcon_cache_pic32mz.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1623993006/sys_devcon_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1623993006/sys_devcon_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1623993006/sys_devcon_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1623993006/sys_devcon_cache_pic32mz.o ../sys_devcon/sys_devcon_cache_pic32mz.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1623993006/sys_devcon_cache_pic32mz.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/_ext/1472/general-exception.o: ../general-exception.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/general-exception.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/general-exception.o 
	@${RM} ${OBJECTDIR}/_ext/1472/general-exception.o.ok ${OBJECTDIR}/_ext/1472/general-exception.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/general-exception.o.d" "${OBJECTDIR}/_ext/1472/general-exception.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/general-exception.o.d"  -o ${OBJECTDIR}/_ext/1472/general-exception.o ../general-exception.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1472/general-exception.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/_ext/1472/simple-tlb-refill-exception.o: ../simple-tlb-refill-exception.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/simple-tlb-refill-exception.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/simple-tlb-refill-exception.o 
	@${RM} ${OBJECTDIR}/_ext/1472/simple-tlb-refill-exception.o.ok ${OBJECTDIR}/_ext/1472/simple-tlb-refill-exception.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/simple-tlb-refill-exception.o.d" "${OBJECTDIR}/_ext/1472/simple-tlb-refill-exception.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1472/simple-tlb-refill-exception.o.d"  -o ${OBJECTDIR}/_ext/1472/simple-tlb-refill-exception.o ../simple-tlb-refill-exception.S  -DXPRJ_default=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1472/simple-tlb-refill-exception.o.asm.d",--gdwarf-2
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1623993006/sys_devcon_pic32mz.o: ../sys_devcon/sys_devcon_pic32mz.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1623993006" 
	@${RM} ${OBJECTDIR}/_ext/1623993006/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1623993006/sys_devcon_pic32mz.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1623993006/sys_devcon_pic32mz.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../sys_devcon" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1623993006/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1623993006/sys_devcon_pic32mz.o ../sys_devcon/sys_devcon_pic32mz.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1472/error_handler.o: ../error_handler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/error_handler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/error_handler.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/error_handler.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../sys_devcon" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1472/error_handler.o.d" -o ${OBJECTDIR}/_ext/1472/error_handler.o ../error_handler.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../sys_devcon" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d" -o ${OBJECTDIR}/_ext/1472/main.o ../main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1472/configs_words.o: ../configs_words.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/configs_words.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/configs_words.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/configs_words.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../sys_devcon" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1472/configs_words.o.d" -o ${OBJECTDIR}/_ext/1472/configs_words.o ../configs_words.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/_ext/1623993006/sys_devcon_pic32mz.o: ../sys_devcon/sys_devcon_pic32mz.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1623993006" 
	@${RM} ${OBJECTDIR}/_ext/1623993006/sys_devcon_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1623993006/sys_devcon_pic32mz.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1623993006/sys_devcon_pic32mz.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../sys_devcon" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1623993006/sys_devcon_pic32mz.o.d" -o ${OBJECTDIR}/_ext/1623993006/sys_devcon_pic32mz.o ../sys_devcon/sys_devcon_pic32mz.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1472/error_handler.o: ../error_handler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/error_handler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/error_handler.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/error_handler.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../sys_devcon" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1472/error_handler.o.d" -o ${OBJECTDIR}/_ext/1472/error_handler.o ../error_handler.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../sys_devcon" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d" -o ${OBJECTDIR}/_ext/1472/main.o ../main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1472/configs_words.o: ../configs_words.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/configs_words.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/configs_words.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/configs_words.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -I"../sys_devcon" -I"../" -MMD -MF "${OBJECTDIR}/_ext/1472/configs_words.o.d" -o ${OBJECTDIR}/_ext/1472/configs_words.o ../configs_words.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/PIC32MZ_Exception_Handler.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -DICD3PlatformTool=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/PIC32MZ_Exception_Handler.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x0:0x27F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=ICD3PlatformTool=1,--defsym=_min_heap_size=8192,-Map="out/Map.map"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/PIC32MZ_Exception_Handler.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/PIC32MZ_Exception_Handler.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=8192,-Map="out/Map.map"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/PIC32MZ_Exception_Handler.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
