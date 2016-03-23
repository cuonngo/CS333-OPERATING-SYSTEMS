! Name of package being compiled: Kernel
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	_P_System_PrintMemory
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
	.import	_P_BitMap_TestBitMap
! Externally visible functions in this package
	.export	_P_Kernel_TimerInterruptHandler
	.export	_P_Kernel_DiskInterruptHandler
	.export	_P_Kernel_SerialInterruptHandler
	.export	_P_Kernel_IllegalInstructionHandler
	.export	_P_Kernel_ArithmeticExceptionHandler
	.export	_P_Kernel_AddressExceptionHandler
	.export	_P_Kernel_PageInvalidExceptionHandler
	.export	_P_Kernel_PageReadonlyExceptionHandler
	.export	_P_Kernel_PrivilegedInstructionHandler
	.export	_P_Kernel_AlignmentExceptionHandler
	.export	_P_Kernel_SyscallTrapHandler
	.export	_P_Kernel_Handle_Sys_Fork
	.export	_P_Kernel_Handle_Sys_Yield
	.export	_P_Kernel_Handle_Sys_Exec
	.export	_P_Kernel_Handle_Sys_Join
	.export	_P_Kernel_Handle_Sys_Exit
	.export	_P_Kernel_Handle_Sys_Create
	.export	_P_Kernel_Handle_Sys_Open
	.export	_P_Kernel_Handle_Sys_Read
	.export	_P_Kernel_Handle_Sys_Write
	.export	_P_Kernel_Handle_Sys_Seek
	.export	_P_Kernel_Handle_Sys_Close
	.export	_P_Kernel_Handle_Sys_Shutdown
	.export	_P_Kernel_InitializeScheduler
	.export	_P_Kernel_Run
	.export	_P_Kernel_PrintReadyList
	.export	_P_Kernel_ThreadStartMain
	.export	_P_Kernel_ThreadFinish
	.export	_P_Kernel_FatalError_ThreadVersion
	.export	_P_Kernel_SetInterruptsTo
	.export	_P_Kernel_ProcessFinish
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Kernel_Semaphore
	.export	_Method_P_Kernel_Semaphore_1
	.export	_Method_P_Kernel_Semaphore_2
	.export	_Method_P_Kernel_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Kernel_Mutex
	.export	_Method_P_Kernel_Mutex_1
	.export	_Method_P_Kernel_Mutex_2
	.export	_Method_P_Kernel_Mutex_3
	.export	_Method_P_Kernel_Mutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_Condition
	.export	_Method_P_Kernel_Condition_1
	.export	_Method_P_Kernel_Condition_2
	.export	_Method_P_Kernel_Condition_3
	.export	_Method_P_Kernel_Condition_4
! The following class and its methods are from this package
	.export	_P_Kernel_HoareCondition
	.export	_Method_P_Kernel_HoareCondition_1
	.export	_Method_P_Kernel_HoareCondition_2
	.export	_Method_P_Kernel_HoareCondition_3
! The following class and its methods are from this package
	.export	_P_Kernel_Thread
	.export	_Method_P_Kernel_Thread_1
	.export	_Method_P_Kernel_Thread_2
	.export	_Method_P_Kernel_Thread_3
	.export	_Method_P_Kernel_Thread_4
	.export	_Method_P_Kernel_Thread_5
	.export	_Method_P_Kernel_Thread_6
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManager
	.export	_Method_P_Kernel_ThreadManager_1
	.export	_Method_P_Kernel_ThreadManager_2
	.export	_Method_P_Kernel_ThreadManager_3
	.export	_Method_P_Kernel_ThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessControlBlock
	.export	_Method_P_Kernel_ProcessControlBlock_1
	.export	_Method_P_Kernel_ProcessControlBlock_2
	.export	_Method_P_Kernel_ProcessControlBlock_3
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessManager
	.export	_Method_P_Kernel_ProcessManager_1
	.export	_Method_P_Kernel_ProcessManager_2
	.export	_Method_P_Kernel_ProcessManager_3
	.export	_Method_P_Kernel_ProcessManager_4
	.export	_Method_P_Kernel_ProcessManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_AddrSpace
	.export	_Method_P_Kernel_AddrSpace_1
	.export	_Method_P_Kernel_AddrSpace_2
	.export	_Method_P_Kernel_AddrSpace_3
	.export	_Method_P_Kernel_AddrSpace_4
	.export	_Method_P_Kernel_AddrSpace_5
	.export	_Method_P_Kernel_AddrSpace_6
	.export	_Method_P_Kernel_AddrSpace_7
	.export	_Method_P_Kernel_AddrSpace_8
	.export	_Method_P_Kernel_AddrSpace_9
	.export	_Method_P_Kernel_AddrSpace_10
	.export	_Method_P_Kernel_AddrSpace_11
	.export	_Method_P_Kernel_AddrSpace_12
	.export	_Method_P_Kernel_AddrSpace_13
	.export	_Method_P_Kernel_AddrSpace_14
	.export	_Method_P_Kernel_AddrSpace_15
	.export	_Method_P_Kernel_AddrSpace_16
	.export	_Method_P_Kernel_AddrSpace_17
	.export	_Method_P_Kernel_AddrSpace_18
	.export	_Method_P_Kernel_AddrSpace_19
	.export	_Method_P_Kernel_AddrSpace_20
	.export	_Method_P_Kernel_AddrSpace_21
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.export	_P_Kernel_readyList
	.export	_P_Kernel_currentThread
	.export	_P_Kernel_mainThread
	.export	_P_Kernel_idleThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_frameManager
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_threadsToBeDestroyed:
	.skip	12
_P_Kernel_currentInterruptStatus:
	.skip	4
_P_Kernel_processManager:
	.skip	1316
_P_Kernel_threadManager:
	.skip	41696
_P_Kernel_frameManager:
	.skip	56
	.align
! String constants
_StringConst_125:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_124:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_123:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_122:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_121:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_120:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_119:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_118:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_117:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_116:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_115:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_114:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_113:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_112:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_111:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_110:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_109:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_108:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_107:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_106:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_105:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_104:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_103:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_102:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_101:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_100:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_99:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_98:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_97:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_96:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_95:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_94:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_93:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_92:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_91:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_90:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_89:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_88:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_87:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_86:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_85:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_84:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_83:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_82:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_81:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_80:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_79:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_78:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_77:
	.word	6			! length
	.ascii	"THREAD"
	.align
_StringConst_76:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_75:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_74:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_73:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_72:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_71:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_70:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_69:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_68:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_67:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_66:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_65:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_64:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_63:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_62:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_61:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_60:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_59:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_58:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_57:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_56:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_55:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_54:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_53:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_52:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_51:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_50:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_49:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_48:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_47:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_46:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_45:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_44:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_43:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_42:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_41:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_40:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_39:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_38:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_37:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_36:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_35:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_34:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_33:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_32:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_31:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_30:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_29:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_25:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_24:
	.word	41			! length
	.ascii	"DISK INTERRUPTS NOT EXPECTED IN PROJECT 4"
	.align
_StringConst_23:
	.word	32			! length
	.ascii	"ProcessFinish is not implemented"
	.align
_StringConst_22:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_21:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_20:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_19:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_18:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_17:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_16:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_15:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_14:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_13:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_12:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_11:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_10:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_9:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_8:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_7:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_6:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_5:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_4:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_3:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_1:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Kernel.c\0"
_packageName:
	.ascii	"Kernel\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_Kernel_:
	.export	_CheckVersion_P_Kernel_
	set	0x1e5fc9a9,r4		! myHashVal = 509594025
	cmp	r3,r4
	be	_Label_130
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_130:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_131
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_131
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_131
_Label_131:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_1741:
	push	r0
	sub	r1,1,r1
	bne	_Label_1741
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_132 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_132  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	16,r13		! source line 16
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_readyList = zeros  (sizeInBytes=12)
	set	_P_Kernel_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Kernel_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	18,r13		! source line 18
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_1742:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1742
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_136 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_137 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_136  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   _temp_138 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_139 = _temp_138 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_139 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_1743:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1743
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_141 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_142 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_141  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0SE",r10
!   _temp_143 = _function_129_IdleFunction
	set	_function_129_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_144 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_143  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	27,r13		! source line 27
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_145
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_146
	.word	-12
	.word	4
	.word	_Label_147
	.word	-16
	.word	4
	.word	_Label_148
	.word	-20
	.word	4
	.word	_Label_149
	.word	-24
	.word	4
	.word	_Label_150
	.word	-28
	.word	4
	.word	_Label_151
	.word	-32
	.word	4
	.word	_Label_152
	.word	-36
	.word	4
	.word	_Label_153
	.word	-40
	.word	4
	.word	_Label_154
	.word	-44
	.word	4
	.word	_Label_155
	.word	-48
	.word	4
	.word	_Label_156
	.word	-52
	.word	4
	.word	_Label_157
	.word	-56
	.word	4
	.word	_Label_158
	.word	-60
	.word	4
	.word	0
_Label_145:
	.ascii	"InitializeScheduler\0"
	.align
_Label_146:
	.byte	'?'
	.ascii	"_temp_144\0"
	.align
_Label_147:
	.byte	'?'
	.ascii	"_temp_143\0"
	.align
_Label_148:
	.byte	'?'
	.ascii	"_temp_142\0"
	.align
_Label_149:
	.byte	'?'
	.ascii	"_temp_141\0"
	.align
_Label_150:
	.byte	'?'
	.ascii	"_temp_140\0"
	.align
_Label_151:
	.byte	'?'
	.ascii	"_temp_139\0"
	.align
_Label_152:
	.byte	'?'
	.ascii	"_temp_138\0"
	.align
_Label_153:
	.byte	'?'
	.ascii	"_temp_137\0"
	.align
_Label_154:
	.byte	'?'
	.ascii	"_temp_136\0"
	.align
_Label_155:
	.byte	'?'
	.ascii	"_temp_135\0"
	.align
_Label_156:
	.byte	'?'
	.ascii	"_temp_134\0"
	.align
_Label_157:
	.byte	'?'
	.ascii	"_temp_133\0"
	.align
_Label_158:
	.byte	'?'
	.ascii	"_temp_132\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_129_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_129_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_1744:
	push	r0
	sub	r1,1,r1
	bne	_Label_1744
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_159:
!	jmp	_Label_160
_Label_160:
	mov	42,r13		! source line 42
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	43,r13		! source line 43
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0IF",r10
	mov	44,r13		! source line 44
	mov	"\0\0SE",r10
!   _temp_164 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_162 else goto _Label_163
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_163
	jmp	_Label_162
_Label_162:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_165
_Label_163:
! ELSE...
	mov	47,r13		! source line 47
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	47,r13		! source line 47
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_165:
! END WHILE...
	jmp	_Label_159
_Label_161:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_129_IdleFunction:
	.word	_sourceFileName
	.word	_Label_166
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_167
	.word	8
	.word	4
	.word	_Label_168
	.word	-12
	.word	4
	.word	_Label_169
	.word	-16
	.word	4
	.word	0
_Label_166:
	.ascii	"IdleFunction\0"
	.align
_Label_167:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_168:
	.byte	'?'
	.ascii	"_temp_164\0"
	.align
_Label_169:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Kernel_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Run,r1
	push	r1
	mov	20,r1
_Label_1745:
	push	r0
	sub	r1,1,r1
	bne	_Label_1745
	mov	54,r13		! source line 54
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_172 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_172 ) then goto _Label_171		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_171
!	jmp	_Label_170
_Label_170:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_174 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_174 [0 ] into _temp_175
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_173 = _temp_175		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_173  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_171:
! ASSIGNMENT STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_176 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_176 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	80,r13		! source line 80
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	84,r13		! source line 84
	mov	"\0\0WH",r10
_Label_177:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_181 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_180  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_180 then goto _Label_179 else goto _Label_178
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_178
	jmp	_Label_179
_Label_178:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_182 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_183 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_177
_Label_179:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_186 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_186 ) then goto _Label_185		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_185
!	jmp	_Label_184
_Label_184:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_188 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_188 [0 ] into _temp_189
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_187 = _temp_189		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_187  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	90,r13		! source line 90
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_191 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_190 = *_temp_191  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_190) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_192 = _temp_190 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! END IF...
_Label_185:
! RETURN STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Run:
	.word	_sourceFileName
	.word	_Label_193
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_194
	.word	8
	.word	4
	.word	_Label_195
	.word	-16
	.word	4
	.word	_Label_196
	.word	-20
	.word	4
	.word	_Label_197
	.word	-24
	.word	4
	.word	_Label_198
	.word	-28
	.word	4
	.word	_Label_199
	.word	-32
	.word	4
	.word	_Label_200
	.word	-36
	.word	4
	.word	_Label_201
	.word	-40
	.word	4
	.word	_Label_202
	.word	-44
	.word	4
	.word	_Label_203
	.word	-48
	.word	4
	.word	_Label_204
	.word	-52
	.word	4
	.word	_Label_205
	.word	-9
	.word	1
	.word	_Label_206
	.word	-56
	.word	4
	.word	_Label_207
	.word	-60
	.word	4
	.word	_Label_208
	.word	-64
	.word	4
	.word	_Label_209
	.word	-68
	.word	4
	.word	_Label_210
	.word	-72
	.word	4
	.word	_Label_211
	.word	-76
	.word	4
	.word	_Label_212
	.word	-80
	.word	4
	.word	0
_Label_193:
	.ascii	"Run\0"
	.align
_Label_194:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_195:
	.byte	'?'
	.ascii	"_temp_192\0"
	.align
_Label_196:
	.byte	'?'
	.ascii	"_temp_191\0"
	.align
_Label_197:
	.byte	'?'
	.ascii	"_temp_190\0"
	.align
_Label_198:
	.byte	'?'
	.ascii	"_temp_189\0"
	.align
_Label_199:
	.byte	'?'
	.ascii	"_temp_188\0"
	.align
_Label_200:
	.byte	'?'
	.ascii	"_temp_187\0"
	.align
_Label_201:
	.byte	'?'
	.ascii	"_temp_186\0"
	.align
_Label_202:
	.byte	'?'
	.ascii	"_temp_183\0"
	.align
_Label_203:
	.byte	'?'
	.ascii	"_temp_182\0"
	.align
_Label_204:
	.byte	'?'
	.ascii	"_temp_181\0"
	.align
_Label_205:
	.byte	'C'
	.ascii	"_temp_180\0"
	.align
_Label_206:
	.byte	'?'
	.ascii	"_temp_176\0"
	.align
_Label_207:
	.byte	'?'
	.ascii	"_temp_175\0"
	.align
_Label_208:
	.byte	'?'
	.ascii	"_temp_174\0"
	.align
_Label_209:
	.byte	'?'
	.ascii	"_temp_173\0"
	.align
_Label_210:
	.byte	'?'
	.ascii	"_temp_172\0"
	.align
_Label_211:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_212:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Kernel_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_1746:
	push	r0
	sub	r1,1,r1
	bne	_Label_1746
	mov	97,r13		! source line 97
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	104,r13		! source line 104
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	104,r13		! source line 104
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_213 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_213  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_214 = _function_128_ThreadPrintShort
	set	_function_128_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_215 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_214  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_216
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_217
	.word	-12
	.word	4
	.word	_Label_218
	.word	-16
	.word	4
	.word	_Label_219
	.word	-20
	.word	4
	.word	_Label_220
	.word	-24
	.word	4
	.word	0
_Label_216:
	.ascii	"PrintReadyList\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_219:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_220:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Kernel_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_1747:
	push	r0
	sub	r1,1,r1
	bne	_Label_1747
	mov	112,r13		! source line 112
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	124,r13		! source line 124
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	124,r13		! source line 124
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_221 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_221  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_223 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_222 = *_temp_223  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_222  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	126,r13		! source line 126
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	127,r13		! source line 127
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_224 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_224  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	128,r13		! source line 128
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	128,r13		! source line 128
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_225
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_226
	.word	-12
	.word	4
	.word	_Label_227
	.word	-16
	.word	4
	.word	_Label_228
	.word	-20
	.word	4
	.word	_Label_229
	.word	-24
	.word	4
	.word	_Label_230
	.word	-28
	.word	4
	.word	_Label_231
	.word	-32
	.word	4
	.word	0
_Label_225:
	.ascii	"ThreadStartMain\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_228:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_230:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_231:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Kernel_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadFinish,r1
	push	r1
	mov	5,r1
_Label_1748:
	push	r0
	sub	r1,1,r1
	bne	_Label_1748
	mov	133,r13		! source line 133
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	144,r13		! source line 144
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	144,r13		! source line 144
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0SE",r10
!   _temp_232 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_233 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_233  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	151,r13		! source line 151
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_234
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_235
	.word	-12
	.word	4
	.word	_Label_236
	.word	-16
	.word	4
	.word	_Label_237
	.word	-20
	.word	4
	.word	0
_Label_234:
	.ascii	"ThreadFinish\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_237:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError_ThreadVersion  ===============
! 
_P_Kernel_FatalError_ThreadVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion,r1
	push	r1
	mov	9,r1
_Label_1749:
	push	r0
	sub	r1,1,r1
	bne	_Label_1749
	mov	156,r13		! source line 156
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	164,r13		! source line 164
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	164,r13		! source line 164
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_238 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_238  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_240		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_240
!	jmp	_Label_239
_Label_239:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_241 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_241  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_243 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_242 = *_temp_243  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_242  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_240:
! CALL STATEMENT...
!   _temp_244 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_244  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	170,r13		! source line 170
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	171,r13		! source line 171
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_245 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_245  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_246 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_246  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion:
	.word	_sourceFileName
	.word	_Label_247
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_248
	.word	8
	.word	4
	.word	_Label_249
	.word	-12
	.word	4
	.word	_Label_250
	.word	-16
	.word	4
	.word	_Label_251
	.word	-20
	.word	4
	.word	_Label_252
	.word	-24
	.word	4
	.word	_Label_253
	.word	-28
	.word	4
	.word	_Label_254
	.word	-32
	.word	4
	.word	_Label_255
	.word	-36
	.word	4
	.word	_Label_256
	.word	-40
	.word	4
	.word	0
_Label_247:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_248:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_254:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_256:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Kernel_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_1750:
	push	r0
	sub	r1,1,r1
	bne	_Label_1750
	mov	179,r13		! source line 179
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	192,r13		! source line 192
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	193,r13		! source line 193
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	194,r13		! source line 194
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_258		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_258
!	jmp	_Label_257
_Label_257:
! THEN...
	mov	195,r13		! source line 195
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	196,r13		! source line 196
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_259
_Label_258:
! ELSE...
	mov	198,r13		! source line 198
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	199,r13		! source line 199
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_259:
! RETURN STATEMENT...
	mov	201,r13		! source line 201
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_260
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_261
	.word	8
	.word	4
	.word	_Label_262
	.word	-12
	.word	4
	.word	0
_Label_260:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_261:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_262:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_128_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_128_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_1751:
	push	r0
	sub	r1,1,r1
	bne	_Label_1751
	mov	692,r13		! source line 692
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	699,r13		! source line 699
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	700,r13		! source line 700
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_266		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_266
!   _temp_265 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_267
_Label_266:
!   _temp_265 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_267:
!   if _temp_265 then goto _Label_264 else goto _Label_263
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_263
	jmp	_Label_264
_Label_263:
! THEN...
	mov	701,r13		! source line 701
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_268 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_268  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	701,r13		! source line 701
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	702,r13		! source line 702
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_264:
! CALL STATEMENT...
!   _temp_269 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_269  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	704,r13		! source line 704
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_271 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_270 = *_temp_271  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_270  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	705,r13		! source line 705
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_272 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_272  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	706,r13		! source line 706
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	707,r13		! source line 707
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_281 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_280 = *_temp_281  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_275
	cmp	r1,2
	be	_Label_276
	cmp	r1,3
	be	_Label_277
	cmp	r1,4
	be	_Label_278
	cmp	r1,5
	be	_Label_279
	jmp	_Label_273
! CASE 1...
_Label_275:
! CALL STATEMENT...
!   _temp_282 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_282  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	709,r13		! source line 709
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	710,r13		! source line 710
	mov	"\0\0BR",r10
	jmp	_Label_274
! CASE 2...
_Label_276:
! CALL STATEMENT...
!   _temp_283 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_283  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	712,r13		! source line 712
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	713,r13		! source line 713
	mov	"\0\0BR",r10
	jmp	_Label_274
! CASE 3...
_Label_277:
! CALL STATEMENT...
!   _temp_284 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_284  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	715,r13		! source line 715
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	716,r13		! source line 716
	mov	"\0\0BR",r10
	jmp	_Label_274
! CASE 4...
_Label_278:
! CALL STATEMENT...
!   _temp_285 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_285  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	718,r13		! source line 718
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	719,r13		! source line 719
	mov	"\0\0BR",r10
	jmp	_Label_274
! CASE 5...
_Label_279:
! CALL STATEMENT...
!   _temp_286 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_286  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	721,r13		! source line 721
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	722,r13		! source line 722
	mov	"\0\0BR",r10
	jmp	_Label_274
! DEFAULT CASE...
_Label_273:
! CALL STATEMENT...
!   _temp_287 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_287  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	724,r13		! source line 724
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_274:
! CALL STATEMENT...
!   _temp_288 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_288  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	726,r13		! source line 726
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_289 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_289  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	727,r13		! source line 727
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_290 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_290  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	728,r13		! source line 728
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	729,r13		! source line 729
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	731,r13		! source line 731
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	731,r13		! source line 731
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	731,r13		! source line 731
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_128_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_291
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_292
	.word	8
	.word	4
	.word	_Label_293
	.word	-16
	.word	4
	.word	_Label_294
	.word	-20
	.word	4
	.word	_Label_295
	.word	-24
	.word	4
	.word	_Label_296
	.word	-28
	.word	4
	.word	_Label_297
	.word	-32
	.word	4
	.word	_Label_298
	.word	-36
	.word	4
	.word	_Label_299
	.word	-40
	.word	4
	.word	_Label_300
	.word	-44
	.word	4
	.word	_Label_301
	.word	-48
	.word	4
	.word	_Label_302
	.word	-52
	.word	4
	.word	_Label_303
	.word	-56
	.word	4
	.word	_Label_304
	.word	-60
	.word	4
	.word	_Label_305
	.word	-64
	.word	4
	.word	_Label_306
	.word	-68
	.word	4
	.word	_Label_307
	.word	-72
	.word	4
	.word	_Label_308
	.word	-76
	.word	4
	.word	_Label_309
	.word	-9
	.word	1
	.word	_Label_310
	.word	-80
	.word	4
	.word	0
_Label_291:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_292:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_290\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_289\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_309:
	.byte	'C'
	.ascii	"_temp_265\0"
	.align
_Label_310:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_127_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_127_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_1752:
	push	r0
	sub	r1,1,r1
	bne	_Label_1752
	mov	1073,r13		! source line 1073
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_311 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_311  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1077,r13		! source line 1077
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1078,r13		! source line 1078
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1078,r13		! source line 1078
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_127_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_312
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_313
	.word	8
	.word	4
	.word	_Label_314
	.word	-12
	.word	4
	.word	0
_Label_312:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_313:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
! 
! ===============  FUNCTION ProcessFinish  ===============
! 
_P_Kernel_ProcessFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ProcessFinish,r1
	push	r1
	mov	2,r1
_Label_1753:
	push	r0
	sub	r1,1,r1
	bne	_Label_1753
	mov	1083,r13		! source line 1083
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_315 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_315  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1089,r13		! source line 1089
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1089,r13		! source line 1089
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_316
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_317
	.word	8
	.word	4
	.word	_Label_318
	.word	-12
	.word	4
	.word	0
_Label_316:
	.ascii	"ProcessFinish\0"
	.align
_Label_317:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_315\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Kernel_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_1754:
	push	r0
	sub	r1,1,r1
	bne	_Label_1754
	mov	1580,r13		! source line 1580
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1590,r13		! source line 1590
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1592,r13		! source line 1592
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1593,r13		! source line 1593
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1593,r13		! source line 1593
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_319
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_319:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION DiskInterruptHandler  ===============
! 
_P_Kernel_DiskInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_DiskInterruptHandler,r1
	push	r1
	mov	2,r1
_Label_1755:
	push	r0
	sub	r1,1,r1
	bne	_Label_1755
	mov	1598,r13		! source line 1598
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_320 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_320  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1608,r13		! source line 1608
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1608,r13		! source line 1608
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_321
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_322
	.word	-12
	.word	4
	.word	0
_Label_321:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
! 
! ===============  FUNCTION SerialInterruptHandler  ===============
! 
_P_Kernel_SerialInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialInterruptHandler,r1
	push	r1
	mov	1620,r13		! source line 1620
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1629,r13		! source line 1629
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1629,r13		! source line 1629
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_323
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_323:
	.ascii	"SerialInterruptHandler\0"
	.align
! 
! ===============  FUNCTION IllegalInstructionHandler  ===============
! 
_P_Kernel_IllegalInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_IllegalInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_1756:
	push	r0
	sub	r1,1,r1
	bne	_Label_1756
	mov	1634,r13		! source line 1634
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1640,r13		! source line 1640
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_324 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_324  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1641,r13		! source line 1641
	mov	"\0\0CA",r10
	call	_function_126_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1641,r13		! source line 1641
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_325
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_326
	.word	-12
	.word	4
	.word	0
_Label_325:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_326:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
! 
! ===============  FUNCTION ArithmeticExceptionHandler  ===============
! 
_P_Kernel_ArithmeticExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1757:
	push	r0
	sub	r1,1,r1
	bne	_Label_1757
	mov	1646,r13		! source line 1646
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1652,r13		! source line 1652
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_327 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_327  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1653,r13		! source line 1653
	mov	"\0\0CA",r10
	call	_function_126_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1653,r13		! source line 1653
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_328
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_329
	.word	-12
	.word	4
	.word	0
_Label_328:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
! 
! ===============  FUNCTION AddressExceptionHandler  ===============
! 
_P_Kernel_AddressExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AddressExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1758:
	push	r0
	sub	r1,1,r1
	bne	_Label_1758
	mov	1658,r13		! source line 1658
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1664,r13		! source line 1664
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_330 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_330  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1665,r13		! source line 1665
	mov	"\0\0CA",r10
	call	_function_126_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1665,r13		! source line 1665
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_331
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_332
	.word	-12
	.word	4
	.word	0
_Label_331:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_332:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
! 
! ===============  FUNCTION PageInvalidExceptionHandler  ===============
! 
_P_Kernel_PageInvalidExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1759:
	push	r0
	sub	r1,1,r1
	bne	_Label_1759
	mov	1670,r13		! source line 1670
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1676,r13		! source line 1676
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_333 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_333  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1677,r13		! source line 1677
	mov	"\0\0CA",r10
	call	_function_126_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1677,r13		! source line 1677
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_334
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_335
	.word	-12
	.word	4
	.word	0
_Label_334:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_335:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
! 
! ===============  FUNCTION PageReadonlyExceptionHandler  ===============
! 
_P_Kernel_PageReadonlyExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1760:
	push	r0
	sub	r1,1,r1
	bne	_Label_1760
	mov	1682,r13		! source line 1682
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1688,r13		! source line 1688
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_336 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_336  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1689,r13		! source line 1689
	mov	"\0\0CA",r10
	call	_function_126_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1689,r13		! source line 1689
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_337
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_338
	.word	-12
	.word	4
	.word	0
_Label_337:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_336\0"
	.align
! 
! ===============  FUNCTION PrivilegedInstructionHandler  ===============
! 
_P_Kernel_PrivilegedInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_1761:
	push	r0
	sub	r1,1,r1
	bne	_Label_1761
	mov	1694,r13		! source line 1694
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1700,r13		! source line 1700
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_339 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_339  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1701,r13		! source line 1701
	mov	"\0\0CA",r10
	call	_function_126_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1701,r13		! source line 1701
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_340
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_341
	.word	-12
	.word	4
	.word	0
_Label_340:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_341:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
! 
! ===============  FUNCTION AlignmentExceptionHandler  ===============
! 
_P_Kernel_AlignmentExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_1762:
	push	r0
	sub	r1,1,r1
	bne	_Label_1762
	mov	1706,r13		! source line 1706
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1712,r13		! source line 1712
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_342 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_342  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1713,r13		! source line 1713
	mov	"\0\0CA",r10
	call	_function_126_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1713,r13		! source line 1713
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_343
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_344
	.word	-12
	.word	4
	.word	0
_Label_343:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_344:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_126_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_126_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_1763:
	push	r0
	sub	r1,1,r1
	bne	_Label_1763
	mov	1718,r13		! source line 1718
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_345 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_345  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1723,r13		! source line 1723
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1724,r13		! source line 1724
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_346 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_346  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1725,r13		! source line 1725
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1728,r13		! source line 1728
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_350 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_349 = *_temp_350  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_349 == 0 then goto _Label_348		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_348
!	jmp	_Label_347
_Label_347:
! THEN...
	mov	1729,r13		! source line 1729
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1729,r13		! source line 1729
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_352 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_351 = *_temp_352  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_351) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_353
_Label_348:
! ELSE...
	mov	1731,r13		! source line 1731
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_354 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_354  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1731,r13		! source line 1731
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_353:
! SEND STATEMENT...
	mov	1733,r13		! source line 1733
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1739,r13		! source line 1739
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1739,r13		! source line 1739
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_126_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_355
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_356
	.word	8
	.word	4
	.word	_Label_357
	.word	-12
	.word	4
	.word	_Label_358
	.word	-16
	.word	4
	.word	_Label_359
	.word	-20
	.word	4
	.word	_Label_360
	.word	-24
	.word	4
	.word	_Label_361
	.word	-28
	.word	4
	.word	_Label_362
	.word	-32
	.word	4
	.word	_Label_363
	.word	-36
	.word	4
	.word	0
_Label_355:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_356:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
! 
! ===============  FUNCTION SyscallTrapHandler  ===============
! 
_P_Kernel_SyscallTrapHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SyscallTrapHandler,r1
	push	r1
	mov	13,r1
_Label_1764:
	push	r0
	sub	r1,1,r1
	bne	_Label_1764
	mov	1744,r13		! source line 1744
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1751,r13		! source line 1751
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1765,r13		! source line 1765
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_1765
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_364
_Label_1765:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_364
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_364
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_378,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_378:
	jmp	_Label_370	! 1:	
	jmp	_Label_377	! 2:	
	jmp	_Label_367	! 3:	
	jmp	_Label_366	! 4:	
	jmp	_Label_369	! 5:	
	jmp	_Label_368	! 6:	
	jmp	_Label_371	! 7:	
	jmp	_Label_372	! 8:	
	jmp	_Label_373	! 9:	
	jmp	_Label_374	! 10:	
	jmp	_Label_375	! 11:	
	jmp	_Label_376	! 12:	
! CASE 4...
_Label_366:
! RETURN STATEMENT...
	mov	1767,r13		! source line 1767
	mov	"\0\0RE",r10
!   Call the function
	mov	1767,r13		! source line 1767
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_379  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_379  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_367:
! CALL STATEMENT...
!   Call the function
	mov	1769,r13		! source line 1769
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1770,r13		! source line 1770
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_368:
! RETURN STATEMENT...
	mov	1772,r13		! source line 1772
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1772,r13		! source line 1772
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_380  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_380  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_369:
! RETURN STATEMENT...
	mov	1774,r13		! source line 1774
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1774,r13		! source line 1774
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_381  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_381  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_370:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1776,r13		! source line 1776
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1777,r13		! source line 1777
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_371:
! RETURN STATEMENT...
	mov	1779,r13		! source line 1779
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1779,r13		! source line 1779
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_382  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_382  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_372:
! RETURN STATEMENT...
	mov	1781,r13		! source line 1781
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1781,r13		! source line 1781
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_383  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_383  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_373:
! RETURN STATEMENT...
	mov	1783,r13		! source line 1783
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1783,r13		! source line 1783
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_384  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_384  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_374:
! RETURN STATEMENT...
	mov	1785,r13		! source line 1785
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1785,r13		! source line 1785
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_385  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_385  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_375:
! RETURN STATEMENT...
	mov	1787,r13		! source line 1787
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1787,r13		! source line 1787
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_386  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_386  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_376:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1789,r13		! source line 1789
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1790,r13		! source line 1790
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_377:
! CALL STATEMENT...
!   Call the function
	mov	1792,r13		! source line 1792
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1793,r13		! source line 1793
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_364:
! CALL STATEMENT...
!   _temp_387 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_387  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1795,r13		! source line 1795
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1796,r13		! source line 1796
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1797,r13		! source line 1797
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_388 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_388  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1798,r13		! source line 1798
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_365:
! RETURN STATEMENT...
	mov	1800,r13		! source line 1800
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_389
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_390
	.word	8
	.word	4
	.word	_Label_391
	.word	12
	.word	4
	.word	_Label_392
	.word	16
	.word	4
	.word	_Label_393
	.word	20
	.word	4
	.word	_Label_394
	.word	24
	.word	4
	.word	_Label_395
	.word	-12
	.word	4
	.word	_Label_396
	.word	-16
	.word	4
	.word	_Label_397
	.word	-20
	.word	4
	.word	_Label_398
	.word	-24
	.word	4
	.word	_Label_399
	.word	-28
	.word	4
	.word	_Label_400
	.word	-32
	.word	4
	.word	_Label_401
	.word	-36
	.word	4
	.word	_Label_402
	.word	-40
	.word	4
	.word	_Label_403
	.word	-44
	.word	4
	.word	_Label_404
	.word	-48
	.word	4
	.word	0
_Label_389:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_390:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_391:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_392:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_393:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_394:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_388\0"
	.align
_Label_396:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_381\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exit  ===============
! 
_P_Kernel_Handle_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exit,r1
	push	r1
	mov	1805,r13		! source line 1805
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1805,r13		! source line 1805
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_405
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_406
	.word	8
	.word	4
	.word	0
_Label_405:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_406:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	1811,r13		! source line 1811
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1811,r13		! source line 1811
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_407
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_407:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Yield  ===============
! 
_P_Kernel_Handle_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Yield,r1
	push	r1
	mov	1817,r13		! source line 1817
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1817,r13		! source line 1817
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_408
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_408:
	.ascii	"Handle_Sys_Yield\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Fork  ===============
! 
_P_Kernel_Handle_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Fork,r1
	push	r1
	mov	1823,r13		! source line 1823
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1825,r13		! source line 1825
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_409
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_409:
	.ascii	"Handle_Sys_Fork\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Join  ===============
! 
_P_Kernel_Handle_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Join,r1
	push	r1
	mov	1830,r13		! source line 1830
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1832,r13		! source line 1832
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_410
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_411
	.word	8
	.word	4
	.word	0
_Label_410:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_411:
	.byte	'I'
	.ascii	"processID\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exec  ===============
! 
_P_Kernel_Handle_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exec,r1
	push	r1
	mov	1837,r13		! source line 1837
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1839,r13		! source line 1839
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_412
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_413
	.word	8
	.word	4
	.word	0
_Label_412:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_413:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Create  ===============
! 
_P_Kernel_Handle_Sys_Create:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Create,r1
	push	r1
	mov	1844,r13		! source line 1844
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1846,r13		! source line 1846
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_414
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_415
	.word	8
	.word	4
	.word	0
_Label_414:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_415:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	1851,r13		! source line 1851
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1853,r13		! source line 1853
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_416
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_417
	.word	8
	.word	4
	.word	0
_Label_416:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_417:
	.byte	'P'
	.ascii	"filename\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Read  ===============
! 
_P_Kernel_Handle_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Read,r1
	push	r1
	mov	1858,r13		! source line 1858
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1860,r13		! source line 1860
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_418
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_419
	.word	8
	.word	4
	.word	_Label_420
	.word	12
	.word	4
	.word	_Label_421
	.word	16
	.word	4
	.word	0
_Label_418:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_419:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_420:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_421:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Write  ===============
! 
_P_Kernel_Handle_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Write,r1
	push	r1
	mov	1865,r13		! source line 1865
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1867,r13		! source line 1867
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_422
	.word	12		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_423
	.word	8
	.word	4
	.word	_Label_424
	.word	12
	.word	4
	.word	_Label_425
	.word	16
	.word	4
	.word	0
_Label_422:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_423:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_424:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_425:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Seek  ===============
! 
_P_Kernel_Handle_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Seek,r1
	push	r1
	mov	1872,r13		! source line 1872
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1874,r13		! source line 1874
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_426
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_427
	.word	8
	.word	4
	.word	_Label_428
	.word	12
	.word	4
	.word	0
_Label_426:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_427:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_428:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Close  ===============
! 
_P_Kernel_Handle_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Close,r1
	push	r1
	mov	1879,r13		! source line 1879
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1879,r13		! source line 1879
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_429
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_430
	.word	8
	.word	4
	.word	0
_Label_429:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_430:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_431
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_431:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_432
	.word	_sourceFileName
	.word	124		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_432:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_1766:
	push	r0
	sub	r1,1,r1
	bne	_Label_1766
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_434		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_434
!	jmp	_Label_433
_Label_433:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_435 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_435  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	232,r13		! source line 232
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_434:
! ASSIGNMENT STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_437
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_438
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_439
	.word	12
	.word	4
	.word	_Label_440
	.word	-12
	.word	4
	.word	_Label_441
	.word	-16
	.word	4
	.word	0
_Label_437:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_438:
	.ascii	"Pself\0"
	.align
_Label_439:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_441:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Kernel_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_1767:
	push	r0
	sub	r1,1,r1
	bne	_Label_1767
	mov	240,r13		! source line 240
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	244,r13		! source line 244
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	244,r13		! source line 244
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_443		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_443
!	jmp	_Label_442
_Label_442:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_444 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_444  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	246,r13		! source line 246
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_443:
! ASSIGNMENT STATEMENT...
	mov	248,r13		! source line 248
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	249,r13		! source line 249
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_446		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_446
!	jmp	_Label_445
_Label_445:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_447 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_448 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_448 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_449 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_446:
! ASSIGNMENT STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	254,r13		! source line 254
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_450
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_451
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_452
	.word	-12
	.word	4
	.word	_Label_453
	.word	-16
	.word	4
	.word	_Label_454
	.word	-20
	.word	4
	.word	_Label_455
	.word	-24
	.word	4
	.word	_Label_456
	.word	-28
	.word	4
	.word	_Label_457
	.word	-32
	.word	4
	.word	0
_Label_450:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_451:
	.ascii	"Pself\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_454:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_456:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_457:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Kernel_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_1768:
	push	r0
	sub	r1,1,r1
	bne	_Label_1768
	mov	259,r13		! source line 259
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	262,r13		! source line 262
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_459		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_459
!	jmp	_Label_458
_Label_458:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_460 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_460  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	264,r13		! source line 264
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_459:
! ASSIGNMENT STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	267,r13		! source line 267
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_462		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_462
!	jmp	_Label_461
_Label_461:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_463 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_462:
! ASSIGNMENT STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	271,r13		! source line 271
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_464
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_465
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_466
	.word	-12
	.word	4
	.word	_Label_467
	.word	-16
	.word	4
	.word	_Label_468
	.word	-20
	.word	4
	.word	0
_Label_464:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_465:
	.ascii	"Pself\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_463\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_468:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_469
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_469:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_470
	.word	_sourceFileName
	.word	137		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_470:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_1769:
	push	r0
	sub	r1,1,r1
	bne	_Label_1769
	mov	294,r13		! source line 294
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_1:
	.word	_sourceFileName
	.word	_Label_472
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_473
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_474
	.word	-12
	.word	4
	.word	0
_Label_472:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_473:
	.ascii	"Pself\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_471\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_1770:
	push	r0
	sub	r1,1,r1
	bne	_Label_1770
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_476		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_476
!	jmp	_Label_475
_Label_475:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_477 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_477  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	304,r13		! source line 304
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_476:
! ASSIGNMENT STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	306,r13		! source line 306
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_481		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_481
!   _temp_480 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_482
_Label_481:
!   _temp_480 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_482:
!   if _temp_480 then goto _Label_479 else goto _Label_478
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_478
	jmp	_Label_479
_Label_478:
! THEN...
	mov	308,r13		! source line 308
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_483
_Label_479:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_484 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_483:
! ASSIGNMENT STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	313,r13		! source line 313
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_2:
	.word	_sourceFileName
	.word	_Label_485
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_486
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_487
	.word	-16
	.word	4
	.word	_Label_488
	.word	-9
	.word	1
	.word	_Label_489
	.word	-20
	.word	4
	.word	_Label_490
	.word	-24
	.word	4
	.word	0
_Label_485:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_486:
	.ascii	"Pself\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_484\0"
	.align
_Label_488:
	.byte	'C'
	.ascii	"_temp_480\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_477\0"
	.align
_Label_490:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_1771:
	push	r0
	sub	r1,1,r1
	bne	_Label_1771
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_492		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_492
!	jmp	_Label_491
_Label_491:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_493 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_493  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	323,r13		! source line 323
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_492:
! ASSIGNMENT STATEMENT...
	mov	325,r13		! source line 325
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	325,r13		! source line 325
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	326,r13		! source line 326
	mov	"\0\0AS",r10
	mov	326,r13		! source line 326
	mov	"\0\0SE",r10
!   _temp_494 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_496		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_496
!	jmp	_Label_495
_Label_495:
! THEN...
	mov	328,r13		! source line 328
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_497 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_497 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_498 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_499
_Label_496:
! ELSE...
	mov	332,r13		! source line 332
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	332,r13		! source line 332
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_499:
! ASSIGNMENT STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	334,r13		! source line 334
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_3:
	.word	_sourceFileName
	.word	_Label_500
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_501
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_502
	.word	-12
	.word	4
	.word	_Label_503
	.word	-16
	.word	4
	.word	_Label_504
	.word	-20
	.word	4
	.word	_Label_505
	.word	-24
	.word	4
	.word	_Label_506
	.word	-28
	.word	4
	.word	_Label_507
	.word	-32
	.word	4
	.word	0
_Label_500:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_501:
	.ascii	"Pself\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_498\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_497\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_494\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_493\0"
	.align
_Label_506:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_507:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_1772:
	push	r0
	sub	r1,1,r1
	bne	_Label_1772
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_510		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_510
!	jmp	_Label_509
_Label_509:
!   _temp_508 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_511
_Label_510:
!   _temp_508 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_511:
!   ReturnResult: _temp_508  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_4:
	.word	_sourceFileName
	.word	_Label_512
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_513
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_514
	.word	-9
	.word	1
	.word	0
_Label_512:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_513:
	.ascii	"Pself\0"
	.align
_Label_514:
	.byte	'C'
	.ascii	"_temp_508\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_515
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_515:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_516
	.word	_sourceFileName
	.word	151		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_516:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_1,r1
	push	r1
	mov	1,r1
_Label_1773:
	push	r0
	sub	r1,1,r1
	bne	_Label_1773
	mov	380,r13		! source line 380
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	381,r13		! source line 381
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	381,r13		! source line 381
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_1:
	.word	_sourceFileName
	.word	_Label_518
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_519
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_520
	.word	-12
	.word	4
	.word	0
_Label_518:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_519:
	.ascii	"Pself\0"
	.align
_Label_520:
	.byte	'?'
	.ascii	"_temp_517\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_2,r1
	push	r1
	mov	6,r1
_Label_1774:
	push	r0
	sub	r1,1,r1
	bne	_Label_1774
	mov	386,r13		! source line 386
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	389,r13		! source line 389
	mov	"\0\0IF",r10
	mov	389,r13		! source line 389
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_523  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_523 then goto _Label_522 else goto _Label_521
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_521
	jmp	_Label_522
_Label_521:
! THEN...
	mov	390,r13		! source line 390
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_524 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_524  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	390,r13		! source line 390
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_522:
! ASSIGNMENT STATEMENT...
	mov	392,r13		! source line 392
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	392,r13		! source line 392
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	393,r13		! source line 393
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	394,r13		! source line 394
	mov	"\0\0SE",r10
!   _temp_525 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	395,r13		! source line 395
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	397,r13		! source line 397
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_526
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_527
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_528
	.word	12
	.word	4
	.word	_Label_529
	.word	-16
	.word	4
	.word	_Label_530
	.word	-20
	.word	4
	.word	_Label_531
	.word	-9
	.word	1
	.word	_Label_532
	.word	-24
	.word	4
	.word	0
_Label_526:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_527:
	.ascii	"Pself\0"
	.align
_Label_528:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_524\0"
	.align
_Label_531:
	.byte	'C'
	.ascii	"_temp_523\0"
	.align
_Label_532:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_3,r1
	push	r1
	mov	9,r1
_Label_1775:
	push	r0
	sub	r1,1,r1
	bne	_Label_1775
	mov	402,r13		! source line 402
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	406,r13		! source line 406
	mov	"\0\0IF",r10
	mov	406,r13		! source line 406
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_535  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_535 then goto _Label_534 else goto _Label_533
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_533
	jmp	_Label_534
_Label_533:
! THEN...
	mov	407,r13		! source line 407
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_536 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_536  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	407,r13		! source line 407
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_534:
! ASSIGNMENT STATEMENT...
	mov	409,r13		! source line 409
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	409,r13		! source line 409
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	410,r13		! source line 410
	mov	"\0\0AS",r10
	mov	410,r13		! source line 410
	mov	"\0\0SE",r10
!   _temp_537 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	411,r13		! source line 411
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_539		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_539
!	jmp	_Label_538
_Label_538:
! THEN...
	mov	412,r13		! source line 412
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	412,r13		! source line 412
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_540 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_540 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0SE",r10
!   _temp_541 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_539:
! ASSIGNMENT STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	415,r13		! source line 415
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_542
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_543
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_544
	.word	12
	.word	4
	.word	_Label_545
	.word	-16
	.word	4
	.word	_Label_546
	.word	-20
	.word	4
	.word	_Label_547
	.word	-24
	.word	4
	.word	_Label_548
	.word	-28
	.word	4
	.word	_Label_549
	.word	-9
	.word	1
	.word	_Label_550
	.word	-32
	.word	4
	.word	_Label_551
	.word	-36
	.word	4
	.word	0
_Label_542:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_543:
	.ascii	"Pself\0"
	.align
_Label_544:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_541\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_540\0"
	.align
_Label_547:
	.byte	'?'
	.ascii	"_temp_537\0"
	.align
_Label_548:
	.byte	'?'
	.ascii	"_temp_536\0"
	.align
_Label_549:
	.byte	'C'
	.ascii	"_temp_535\0"
	.align
_Label_550:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_551:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_4,r1
	push	r1
	mov	9,r1
_Label_1776:
	push	r0
	sub	r1,1,r1
	bne	_Label_1776
	mov	420,r13		! source line 420
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	424,r13		! source line 424
	mov	"\0\0IF",r10
	mov	424,r13		! source line 424
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_554  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_554 then goto _Label_553 else goto _Label_552
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_552
	jmp	_Label_553
_Label_552:
! THEN...
	mov	425,r13		! source line 425
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_555 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_555  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	425,r13		! source line 425
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_553:
! ASSIGNMENT STATEMENT...
	mov	427,r13		! source line 427
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	427,r13		! source line 427
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0WH",r10
_Label_556:
!	jmp	_Label_557
_Label_557:
	mov	428,r13		! source line 428
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0AS",r10
	mov	429,r13		! source line 429
	mov	"\0\0SE",r10
!   _temp_559 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_560
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_560
	jmp	_Label_561
_Label_560:
! THEN...
	mov	431,r13		! source line 431
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0BR",r10
	jmp	_Label_558
! END IF...
_Label_561:
! ASSIGNMENT STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_562 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_562 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0SE",r10
!   _temp_563 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_556
_Label_558:
! ASSIGNMENT STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	436,r13		! source line 436
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_564
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_565
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_566
	.word	12
	.word	4
	.word	_Label_567
	.word	-16
	.word	4
	.word	_Label_568
	.word	-20
	.word	4
	.word	_Label_569
	.word	-24
	.word	4
	.word	_Label_570
	.word	-28
	.word	4
	.word	_Label_571
	.word	-9
	.word	1
	.word	_Label_572
	.word	-32
	.word	4
	.word	_Label_573
	.word	-36
	.word	4
	.word	0
_Label_564:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_565:
	.ascii	"Pself\0"
	.align
_Label_566:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_568:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
_Label_569:
	.byte	'?'
	.ascii	"_temp_559\0"
	.align
_Label_570:
	.byte	'?'
	.ascii	"_temp_555\0"
	.align
_Label_571:
	.byte	'C'
	.ascii	"_temp_554\0"
	.align
_Label_572:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_573:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS HoareCondition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareCondition:
	.word	_Label_574
	jmp	_Method_P_Kernel_HoareCondition_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareCondition_2	! 8:	Wait
	jmp	_Method_P_Kernel_HoareCondition_3	! 12:	Signal
	.word	0
! 
! Class descriptor:
! 
_Label_574:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_575
	.word	_sourceFileName
	.word	164		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_HoareCondition
	.word	_P_System_Object
	.word	0
_Label_575:
	.ascii	"HoareCondition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_HoareCondition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_1,r1
	push	r1
	mov	1,r1
_Label_1777:
	push	r0
	sub	r1,1,r1
	bne	_Label_1777
	mov	450,r13		! source line 450
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	451,r13		! source line 451
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: WaitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   WaitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	451,r13		! source line 451
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_1:
	.word	_sourceFileName
	.word	_Label_577
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_578
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_579
	.word	-12
	.word	4
	.word	0
_Label_577:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_578:
	.ascii	"Pself\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_HoareCondition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_2,r1
	push	r1
	mov	6,r1
_Label_1778:
	push	r0
	sub	r1,1,r1
	bne	_Label_1778
	mov	455,r13		! source line 455
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0IF",r10
	mov	458,r13		! source line 458
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_582  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_582 then goto _Label_581 else goto _Label_580
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_580
	jmp	_Label_581
_Label_580:
! THEN...
	mov	459,r13		! source line 459
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_583 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_583  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	459,r13		! source line 459
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_581:
! ASSIGNMENT STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	461,r13		! source line 461
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	463,r13		! source line 463
	mov	"\0\0SE",r10
!   _temp_584 = &WaitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	464,r13		! source line 464
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	465,r13		! source line 465
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	465,r13		! source line 465
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	465,r13		! source line 465
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_2:
	.word	_sourceFileName
	.word	_Label_585
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_586
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_587
	.word	12
	.word	4
	.word	_Label_588
	.word	-16
	.word	4
	.word	_Label_589
	.word	-20
	.word	4
	.word	_Label_590
	.word	-9
	.word	1
	.word	_Label_591
	.word	-24
	.word	4
	.word	0
_Label_585:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_586:
	.ascii	"Pself\0"
	.align
_Label_587:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_588:
	.byte	'?'
	.ascii	"_temp_584\0"
	.align
_Label_589:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_590:
	.byte	'C'
	.ascii	"_temp_582\0"
	.align
_Label_591:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_HoareCondition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_3,r1
	push	r1
	mov	10,r1
_Label_1779:
	push	r0
	sub	r1,1,r1
	bne	_Label_1779
	mov	469,r13		! source line 469
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	473,r13		! source line 473
	mov	"\0\0IF",r10
	mov	473,r13		! source line 473
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_594  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_594 then goto _Label_593 else goto _Label_592
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_592
	jmp	_Label_593
_Label_592:
! THEN...
	mov	474,r13		! source line 474
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_595 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_595  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	474,r13		! source line 474
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_593:
! ASSIGNMENT STATEMENT...
	mov	476,r13		! source line 476
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	476,r13		! source line 476
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	477,r13		! source line 477
	mov	"\0\0AS",r10
	mov	477,r13		! source line 477
	mov	"\0\0SE",r10
!   _temp_596 = &WaitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! IF STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_598		(int)
	load	[r14+-40],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_598
!	jmp	_Label_597
_Label_597:
! THEN...
	mov	479,r13		! source line 479
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	479,r13		! source line 479
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_599 = t + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_599 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-24],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0SE",r10
!   _temp_600 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_598:
! ASSIGNMENT STATEMENT...
	mov	486,r13		! source line 486
	mov	"\0\0AS",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_601 = mutex + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_601 = t  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	487,r13		! source line 487
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	488,r13		! source line 488
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	488,r13		! source line 488
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! RETURN STATEMENT...
	mov	488,r13		! source line 488
	mov	"\0\0RE",r10
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_3:
	.word	_sourceFileName
	.word	_Label_602
	.word	8		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_603
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_604
	.word	12
	.word	4
	.word	_Label_605
	.word	-16
	.word	4
	.word	_Label_606
	.word	-20
	.word	4
	.word	_Label_607
	.word	-24
	.word	4
	.word	_Label_608
	.word	-28
	.word	4
	.word	_Label_609
	.word	-32
	.word	4
	.word	_Label_610
	.word	-9
	.word	1
	.word	_Label_611
	.word	-36
	.word	4
	.word	_Label_612
	.word	-40
	.word	4
	.word	0
_Label_602:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_603:
	.ascii	"Pself\0"
	.align
_Label_604:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_610:
	.byte	'C'
	.ascii	"_temp_594\0"
	.align
_Label_611:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_612:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_613
	jmp	_Method_P_Kernel_Thread_1	! 4:	Init
	jmp	_Method_P_Kernel_Thread_2	! 8:	Fork
	jmp	_Method_P_Kernel_Thread_3	! 12:	Yield
	jmp	_Method_P_Kernel_Thread_4	! 16:	Sleep
	jmp	_Method_P_Kernel_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Kernel_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_613:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_614
	.word	_sourceFileName
	.word	176		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_614:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_1,r1
	push	r1
	mov	45,r1
_Label_1780:
	push	r0
	sub	r1,1,r1
	bne	_Label_1780
	mov	499,r13		! source line 499
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	504,r13		! source line 504
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	505,r13		! source line 505
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0AS",r10
!   _temp_615 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_615) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_615 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	508,r13		! source line 508
	mov	"\0\0AS",r10
!   _temp_616 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_616 [0 ] into _temp_617
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-180]
!   Data Move: *_temp_617 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	509,r13		! source line 509
	mov	"\0\0AS",r10
!   _temp_618 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_618 [999 ] into _temp_619
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-172]
!   Data Move: *_temp_619 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	510,r13		! source line 510
	mov	"\0\0AS",r10
!   _temp_620 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_620 [999 ] into _temp_621
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-164]
!   stackTop = _temp_621		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	511,r13		! source line 511
	mov	"\0\0AS",r10
!   _temp_622 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_624 = &_temp_623
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_624 = _temp_624 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_626:
!   Data Move: *_temp_624 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_624 = _temp_624 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_625 = _temp_625 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_625) then goto _Label_626
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_626
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_627 = &_temp_623
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_1781
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1781:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_622 = *_temp_627  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_1782:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1782
! ASSIGNMENT STATEMENT...
	mov	512,r13		! source line 512
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	513,r13		! source line 513
	mov	"\0\0AS",r10
!   _temp_628 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_630 = &_temp_629
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_630 = _temp_630 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_632:
!   Data Move: *_temp_630 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_630 = _temp_630 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_631 = _temp_631 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_631) then goto _Label_632
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_632
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_633 = &_temp_629
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_1783
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1783:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_628 = *_temp_633  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_1784:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1784
! RETURN STATEMENT...
	mov	513,r13		! source line 513
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_1:
	.word	_sourceFileName
	.word	_Label_634
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_635
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_636
	.word	12
	.word	4
	.word	_Label_637
	.word	-12
	.word	4
	.word	_Label_638
	.word	-16
	.word	4
	.word	_Label_639
	.word	-20
	.word	4
	.word	_Label_640
	.word	-84
	.word	64
	.word	_Label_641
	.word	-88
	.word	4
	.word	_Label_642
	.word	-92
	.word	4
	.word	_Label_643
	.word	-96
	.word	4
	.word	_Label_644
	.word	-100
	.word	4
	.word	_Label_645
	.word	-156
	.word	56
	.word	_Label_646
	.word	-160
	.word	4
	.word	_Label_647
	.word	-164
	.word	4
	.word	_Label_648
	.word	-168
	.word	4
	.word	_Label_649
	.word	-172
	.word	4
	.word	_Label_650
	.word	-176
	.word	4
	.word	_Label_651
	.word	-180
	.word	4
	.word	_Label_652
	.word	-184
	.word	4
	.word	_Label_653
	.word	-188
	.word	4
	.word	0
_Label_634:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_635:
	.ascii	"Pself\0"
	.align
_Label_636:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_625\0"
	.align
_Label_644:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_645:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_646:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_617\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_616\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_615\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Kernel_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_2,r1
	push	r1
	mov	7,r1
_Label_1785:
	push	r0
	sub	r1,1,r1
	bne	_Label_1785
	mov	518,r13		! source line 518
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	529,r13		! source line 529
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	529,r13		! source line 529
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	531,r13		! source line 531
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	532,r13		! source line 532
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	533,r13		! source line 533
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	534,r13		! source line 534
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_654 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_654  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	535,r13		! source line 535
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	536,r13		! source line 536
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_656 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_655  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	537,r13		! source line 537
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	537,r13		! source line 537
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	537,r13		! source line 537
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_657
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_658
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_659
	.word	12
	.word	4
	.word	_Label_660
	.word	16
	.word	4
	.word	_Label_661
	.word	-12
	.word	4
	.word	_Label_662
	.word	-16
	.word	4
	.word	_Label_663
	.word	-20
	.word	4
	.word	_Label_664
	.word	-24
	.word	4
	.word	_Label_665
	.word	-28
	.word	4
	.word	0
_Label_657:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_658:
	.ascii	"Pself\0"
	.align
_Label_659:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_660:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_661:
	.byte	'?'
	.ascii	"_temp_656\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_655\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_654\0"
	.align
_Label_664:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_665:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_1786:
	push	r0
	sub	r1,1,r1
	bne	_Label_1786
	mov	542,r13		! source line 542
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	558,r13		! source line 558
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_668 == _P_Kernel_currentThread then goto _Label_667		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_667
!	jmp	_Label_666
_Label_666:
! THEN...
	mov	559,r13		! source line 559
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_669 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_669  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	559,r13		! source line 559
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_667:
! ASSIGNMENT STATEMENT...
	mov	561,r13		! source line 561
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	561,r13		! source line 561
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	565,r13		! source line 565
	mov	"\0\0AS",r10
	mov	565,r13		! source line 565
	mov	"\0\0SE",r10
!   _temp_670 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	566,r13		! source line 566
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_672		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_672
!	jmp	_Label_671
_Label_671:
! THEN...
	mov	570,r13		! source line 570
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_674		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_674
!	jmp	_Label_673
_Label_673:
! THEN...
	mov	571,r13		! source line 571
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_675 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_675  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	571,r13		! source line 571
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_674:
! ASSIGNMENT STATEMENT...
	mov	573,r13		! source line 573
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	574,r13		! source line 574
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_677 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_676  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	575,r13		! source line 575
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_672:
! ASSIGNMENT STATEMENT...
	mov	577,r13		! source line 577
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	577,r13		! source line 577
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	577,r13		! source line 577
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_3:
	.word	_sourceFileName
	.word	_Label_678
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_679
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_680
	.word	-12
	.word	4
	.word	_Label_681
	.word	-16
	.word	4
	.word	_Label_682
	.word	-20
	.word	4
	.word	_Label_683
	.word	-24
	.word	4
	.word	_Label_684
	.word	-28
	.word	4
	.word	_Label_685
	.word	-32
	.word	4
	.word	_Label_686
	.word	-36
	.word	4
	.word	_Label_687
	.word	-40
	.word	4
	.word	_Label_688
	.word	-44
	.word	4
	.word	0
_Label_678:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_679:
	.ascii	"Pself\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_668\0"
	.align
_Label_686:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_687:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_688:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Kernel_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_4,r1
	push	r1
	mov	7,r1
_Label_1787:
	push	r0
	sub	r1,1,r1
	bne	_Label_1787
	mov	582,r13		! source line 582
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	594,r13		! source line 594
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_690		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_690
!	jmp	_Label_689
_Label_689:
! THEN...
	mov	595,r13		! source line 595
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_691 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_691  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	595,r13		! source line 595
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_690:
! IF STATEMENT...
	mov	598,r13		! source line 598
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_694 == _P_Kernel_currentThread then goto _Label_693		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_693
!	jmp	_Label_692
_Label_692:
! THEN...
	mov	599,r13		! source line 599
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_695 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_695  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	599,r13		! source line 599
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_693:
! ASSIGNMENT STATEMENT...
	mov	604,r13		! source line 604
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	605,r13		! source line 605
	mov	"\0\0AS",r10
	mov	605,r13		! source line 605
	mov	"\0\0SE",r10
!   _temp_696 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	606,r13		! source line 606
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_697
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_697
	jmp	_Label_698
_Label_697:
! THEN...
	mov	607,r13		! source line 607
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_699 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_699  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	607,r13		! source line 607
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_698:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	609,r13		! source line 609
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	609,r13		! source line 609
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_4:
	.word	_sourceFileName
	.word	_Label_700
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_701
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_702
	.word	-12
	.word	4
	.word	_Label_703
	.word	-16
	.word	4
	.word	_Label_704
	.word	-20
	.word	4
	.word	_Label_705
	.word	-24
	.word	4
	.word	_Label_706
	.word	-28
	.word	4
	.word	_Label_707
	.word	-32
	.word	4
	.word	0
_Label_700:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_701:
	.ascii	"Pself\0"
	.align
_Label_702:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_696\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_695\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_694\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_707:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Kernel_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_5,r1
	push	r1
	mov	9,r1
_Label_1788:
	push	r0
	sub	r1,1,r1
	bne	_Label_1788
	mov	614,r13		! source line 614
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	620,r13		! source line 620
	mov	"\0\0IF",r10
!   _temp_711 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_711 [0 ] into _temp_712
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_710 = *_temp_712  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_710 == 606348324 then goto _Label_709		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_709
!	jmp	_Label_708
_Label_708:
! THEN...
	mov	621,r13		! source line 621
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_713 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_713  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	621,r13		! source line 621
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_714
_Label_709:
! ELSE...
	mov	622,r13		! source line 622
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	622,r13		! source line 622
	mov	"\0\0IF",r10
!   _temp_718 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_718 [999 ] into _temp_719
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_717 = *_temp_719  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_717 == 606348324 then goto _Label_716		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_716
!	jmp	_Label_715
_Label_715:
! THEN...
	mov	623,r13		! source line 623
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_720 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_720  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	623,r13		! source line 623
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_716:
! END IF...
_Label_714:
! RETURN STATEMENT...
	mov	620,r13		! source line 620
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_5:
	.word	_sourceFileName
	.word	_Label_721
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_722
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_723
	.word	-12
	.word	4
	.word	_Label_724
	.word	-16
	.word	4
	.word	_Label_725
	.word	-20
	.word	4
	.word	_Label_726
	.word	-24
	.word	4
	.word	_Label_727
	.word	-28
	.word	4
	.word	_Label_728
	.word	-32
	.word	4
	.word	_Label_729
	.word	-36
	.word	4
	.word	_Label_730
	.word	-40
	.word	4
	.word	0
_Label_721:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_722:
	.ascii	"Pself\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_720\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_719\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_718\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_717\0"
	.align
_Label_727:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
_Label_728:
	.byte	'?'
	.ascii	"_temp_712\0"
	.align
_Label_729:
	.byte	'?'
	.ascii	"_temp_711\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_710\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_6,r1
	push	r1
	mov	49,r1
_Label_1789:
	push	r0
	sub	r1,1,r1
	bne	_Label_1789
	mov	629,r13		! source line 629
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	635,r13		! source line 635
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	635,r13		! source line 635
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_731 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_731  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	636,r13		! source line 636
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	637,r13		! source line 637
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_732 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_732  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	638,r13		! source line 638
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_733  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	639,r13		! source line 639
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_734 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_734  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	640,r13		! source line 640
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_735 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_735  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	641,r13		! source line 641
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	642,r13		! source line 642
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_740 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_741 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_740  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_736:
!   Perform the FOR-LOOP termination test
!   if i > _temp_741 then goto _Label_739		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_739
_Label_737:
	mov	642,r13		! source line 642
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_742 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_742  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	643,r13		! source line 643
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_743 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_743  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	644,r13		! source line 644
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_744 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_744  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	645,r13		! source line 645
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_746 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_746 [i ] into _temp_747
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-140]
!   Data Move: _temp_745 = *_temp_747  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_745  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	646,r13		! source line 646
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_748 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_748  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	647,r13		! source line 647
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_750 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_750 [i ] into _temp_751
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-124]
!   Data Move: _temp_749 = *_temp_751  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_749  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	648,r13		! source line 648
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_752 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_752  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	649,r13		! source line 649
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_738:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_736
! END FOR
_Label_739:
! CALL STATEMENT...
!   _temp_753 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-116]
!   _temp_754 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_753  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_754  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	651,r13		! source line 651
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_755 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-108]
!   _temp_757 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_757 [0 ] into _temp_758
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-96]
!   _temp_756 = _temp_758		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_755  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_756  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	652,r13		! source line 652
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	653,r13		! source line 653
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_761
	cmp	r1,2
	be	_Label_762
	cmp	r1,3
	be	_Label_763
	cmp	r1,4
	be	_Label_764
	cmp	r1,5
	be	_Label_765
	jmp	_Label_759
! CASE 1...
_Label_761:
! CALL STATEMENT...
!   _temp_766 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_766  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	655,r13		! source line 655
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	656,r13		! source line 656
	mov	"\0\0BR",r10
	jmp	_Label_760
! CASE 2...
_Label_762:
! CALL STATEMENT...
!   _temp_767 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_767  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	659,r13		! source line 659
	mov	"\0\0BR",r10
	jmp	_Label_760
! CASE 3...
_Label_763:
! CALL STATEMENT...
!   _temp_768 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_768  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	662,r13		! source line 662
	mov	"\0\0BR",r10
	jmp	_Label_760
! CASE 4...
_Label_764:
! CALL STATEMENT...
!   _temp_769 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_769  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	664,r13		! source line 664
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	665,r13		! source line 665
	mov	"\0\0BR",r10
	jmp	_Label_760
! CASE 5...
_Label_765:
! CALL STATEMENT...
!   _temp_770 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_770  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	668,r13		! source line 668
	mov	"\0\0BR",r10
	jmp	_Label_760
! DEFAULT CASE...
_Label_759:
! CALL STATEMENT...
!   _temp_771 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_771  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	670,r13		! source line 670
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_760:
! CALL STATEMENT...
!   _temp_772 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_772  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	672,r13		! source line 672
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	673,r13		! source line 673
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	674,r13		! source line 674
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_773 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_773  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	676,r13		! source line 676
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_778 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_779 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_778  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_774:
!   Perform the FOR-LOOP termination test
!   if i > _temp_779 then goto _Label_777		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_777
_Label_775:
	mov	676,r13		! source line 676
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_780 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_780  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	677,r13		! source line 677
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_781 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_781  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	678,r13		! source line 678
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_782 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_782  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	679,r13		! source line 679
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_784 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_784 [i ] into _temp_785
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_783 = *_temp_785  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_783  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	680,r13		! source line 680
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_786 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_786  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	681,r13		! source line 681
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_788 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_788 [i ] into _temp_789
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_787 = *_temp_789  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_787  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	682,r13		! source line 682
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_790 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_790  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	683,r13		! source line 683
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_776:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_774
! END FOR
_Label_777:
! ASSIGNMENT STATEMENT...
	mov	685,r13		! source line 685
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	685,r13		! source line 685
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	685,r13		! source line 685
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_6:
	.word	_sourceFileName
	.word	_Label_791
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_792
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_793
	.word	-12
	.word	4
	.word	_Label_794
	.word	-16
	.word	4
	.word	_Label_795
	.word	-20
	.word	4
	.word	_Label_796
	.word	-24
	.word	4
	.word	_Label_797
	.word	-28
	.word	4
	.word	_Label_798
	.word	-32
	.word	4
	.word	_Label_799
	.word	-36
	.word	4
	.word	_Label_800
	.word	-40
	.word	4
	.word	_Label_801
	.word	-44
	.word	4
	.word	_Label_802
	.word	-48
	.word	4
	.word	_Label_803
	.word	-52
	.word	4
	.word	_Label_804
	.word	-56
	.word	4
	.word	_Label_805
	.word	-60
	.word	4
	.word	_Label_806
	.word	-64
	.word	4
	.word	_Label_807
	.word	-68
	.word	4
	.word	_Label_808
	.word	-72
	.word	4
	.word	_Label_809
	.word	-76
	.word	4
	.word	_Label_810
	.word	-80
	.word	4
	.word	_Label_811
	.word	-84
	.word	4
	.word	_Label_812
	.word	-88
	.word	4
	.word	_Label_813
	.word	-92
	.word	4
	.word	_Label_814
	.word	-96
	.word	4
	.word	_Label_815
	.word	-100
	.word	4
	.word	_Label_816
	.word	-104
	.word	4
	.word	_Label_817
	.word	-108
	.word	4
	.word	_Label_818
	.word	-112
	.word	4
	.word	_Label_819
	.word	-116
	.word	4
	.word	_Label_820
	.word	-120
	.word	4
	.word	_Label_821
	.word	-124
	.word	4
	.word	_Label_822
	.word	-128
	.word	4
	.word	_Label_823
	.word	-132
	.word	4
	.word	_Label_824
	.word	-136
	.word	4
	.word	_Label_825
	.word	-140
	.word	4
	.word	_Label_826
	.word	-144
	.word	4
	.word	_Label_827
	.word	-148
	.word	4
	.word	_Label_828
	.word	-152
	.word	4
	.word	_Label_829
	.word	-156
	.word	4
	.word	_Label_830
	.word	-160
	.word	4
	.word	_Label_831
	.word	-164
	.word	4
	.word	_Label_832
	.word	-168
	.word	4
	.word	_Label_833
	.word	-172
	.word	4
	.word	_Label_834
	.word	-176
	.word	4
	.word	_Label_835
	.word	-180
	.word	4
	.word	_Label_836
	.word	-184
	.word	4
	.word	_Label_837
	.word	-188
	.word	4
	.word	_Label_838
	.word	-192
	.word	4
	.word	_Label_839
	.word	-196
	.word	4
	.word	0
_Label_791:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_792:
	.ascii	"Pself\0"
	.align
_Label_793:
	.byte	'?'
	.ascii	"_temp_790\0"
	.align
_Label_794:
	.byte	'?'
	.ascii	"_temp_789\0"
	.align
_Label_795:
	.byte	'?'
	.ascii	"_temp_788\0"
	.align
_Label_796:
	.byte	'?'
	.ascii	"_temp_787\0"
	.align
_Label_797:
	.byte	'?'
	.ascii	"_temp_786\0"
	.align
_Label_798:
	.byte	'?'
	.ascii	"_temp_785\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_784\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_782\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_781\0"
	.align
_Label_803:
	.byte	'?'
	.ascii	"_temp_780\0"
	.align
_Label_804:
	.byte	'?'
	.ascii	"_temp_779\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_778\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_773\0"
	.align
_Label_807:
	.byte	'?'
	.ascii	"_temp_772\0"
	.align
_Label_808:
	.byte	'?'
	.ascii	"_temp_771\0"
	.align
_Label_809:
	.byte	'?'
	.ascii	"_temp_770\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_769\0"
	.align
_Label_811:
	.byte	'?'
	.ascii	"_temp_768\0"
	.align
_Label_812:
	.byte	'?'
	.ascii	"_temp_767\0"
	.align
_Label_813:
	.byte	'?'
	.ascii	"_temp_766\0"
	.align
_Label_814:
	.byte	'?'
	.ascii	"_temp_758\0"
	.align
_Label_815:
	.byte	'?'
	.ascii	"_temp_757\0"
	.align
_Label_816:
	.byte	'?'
	.ascii	"_temp_756\0"
	.align
_Label_817:
	.byte	'?'
	.ascii	"_temp_755\0"
	.align
_Label_818:
	.byte	'?'
	.ascii	"_temp_754\0"
	.align
_Label_819:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_820:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_822:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_823:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_824:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_825:
	.byte	'?'
	.ascii	"_temp_747\0"
	.align
_Label_826:
	.byte	'?'
	.ascii	"_temp_746\0"
	.align
_Label_827:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_828:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_829:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_830:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_831:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_832:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_833:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_834:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_835:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_836:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_837:
	.byte	'?'
	.ascii	"_temp_731\0"
	.align
_Label_838:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_839:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_840
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_840:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_841
	.word	_sourceFileName
	.word	203		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_841:
	.ascii	"ThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_1,r1
	push	r1
	mov	11478,r1
_Label_1790:
	push	r0
	sub	r1,1,r1
	bne	_Label_1790
	mov	740,r13		! source line 740
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_842 = _StringConst_76
	set	_StringConst_76,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_842  sizeInBytes=4
	set	-45908,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	746,r13		! source line 746
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	747,r13		! source line 747
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41648,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41648,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	748,r13		! source line 748
	mov	"\0\0AS",r10
!   _temp_844 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_846 = &_temp_845
	set	-45896,r1
	add	r14,r1,r1
	store	r1,[r14+-4252]
!   _temp_846 = _temp_846 + 4
	load	[r14+-4252],r1
	add	r1,4,r1
	store	r1,[r14+-4252]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_848 = zeros  (sizeInBytes=4164)
	add	r14,-4244,r4
	mov	1041,r3
_Label_1791:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1791
!   _temp_848 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4244]
	mov	10,r1
	store	r1,[r14+-4248]
_Label_850:
!   Data Move: *_temp_846 = _temp_848  (sizeInBytes=4164)
	add	r14,-4244,r5
	load	[r14+-4252],r4
	mov	1041,r3
_Label_1792:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1792
!   _temp_846 = _temp_846 + 4164
	load	[r14+-4252],r1
	add	r1,4164,r1
	store	r1,[r14+-4252]
!   _temp_847 = _temp_847 + -1
	load	[r14+-4248],r1
	add	r1,-1,r1
	store	r1,[r14+-4248]
!   if intNotZero (_temp_847) then goto _Label_850
	load	[r14+-4248],r1
	cmp	r1,r0
	bne	_Label_850
!   Initialize the array size...
	mov	10,r1
	set	-45896,r2
	store	r1,[r14+r2]
!   _temp_851 = &_temp_845
	set	-45896,r1
	add	r14,r1,r1
	store	r1,[r14+-76]
!   make sure array has size 10
	set	-45900,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_1793
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1793:
!   make sure array has size 10
	load	[r14+-76],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_844 = *_temp_851  (sizeInBytes=41644)
	load	[r14+-76],r5
	set	-45900,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_1794:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1794
! FOR STATEMENT...
	mov	753,r13		! source line 753
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_856 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-72]
!   Calculate and save the FOR-LOOP ending value
!   _temp_857 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-68]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_856  (sizeInBytes=4)
	load	[r14+-72],r1
	set	-45912,r2
	store	r1,[r14+r2]
_Label_852:
!   Perform the FOR-LOOP termination test
!   if i > _temp_857 then goto _Label_855		
	set	-45912,r1
	load	[r14+r1],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_855
_Label_853:
	mov	753,r13		! source line 753
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	754,r13		! source line 754
	mov	"\0\0SE",r10
!   _temp_858 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-64]
!   _temp_859 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Move address of _temp_859 [i ] into _temp_860
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-60],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_858  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	755,r13		! source line 755
	mov	"\0\0AS",r10
!   _temp_861 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_861 [i ] into _temp_862
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-52],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   _temp_863 = _temp_862 + 76
	load	[r14+-48],r1
	add	r1,76,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_863 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-44],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	756,r13		! source line 756
	mov	"\0\0SE",r10
!   _temp_865 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_865 [i ] into _temp_866
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_864 = _temp_866		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   _temp_867 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_864  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_854:
!   i = i + 1
	set	-45912,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45912,r2
	store	r1,[r14+r2]
	jmp	_Label_852
! END FOR
_Label_855:
! ASSIGNMENT STATEMENT...
	mov	761,r13		! source line 761
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadManagerLock = zeros  (sizeInBytes=20)
	set	41660,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r11
	set	41660,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	762,r13		! source line 762
	mov	"\0\0SE",r10
!   _temp_869 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	764,r13		! source line 764
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aThreadBecameFree = zeros  (sizeInBytes=16)
	set	41680,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aThreadBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r11
	set	41680,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	765,r13		! source line 765
	mov	"\0\0SE",r10
!   _temp_871 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	765,r13		! source line 765
	mov	"\0\0RE",r10
	set	45916,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_872
	.word	4		! total size of parameters
	.word	45912		! frame size = 45912
	.word	_Label_873
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_874
	.word	-12
	.word	4
	.word	_Label_875
	.word	-16
	.word	4
	.word	_Label_876
	.word	-20
	.word	4
	.word	_Label_877
	.word	-24
	.word	4
	.word	_Label_878
	.word	-28
	.word	4
	.word	_Label_879
	.word	-32
	.word	4
	.word	_Label_880
	.word	-36
	.word	4
	.word	_Label_881
	.word	-40
	.word	4
	.word	_Label_882
	.word	-44
	.word	4
	.word	_Label_883
	.word	-48
	.word	4
	.word	_Label_884
	.word	-52
	.word	4
	.word	_Label_885
	.word	-56
	.word	4
	.word	_Label_886
	.word	-60
	.word	4
	.word	_Label_887
	.word	-64
	.word	4
	.word	_Label_888
	.word	-68
	.word	4
	.word	_Label_889
	.word	-72
	.word	4
	.word	_Label_890
	.word	-76
	.word	4
	.word	_Label_891
	.word	-80
	.word	4
	.word	_Label_892
	.word	-4244
	.word	4164
	.word	_Label_893
	.word	-4248
	.word	4
	.word	_Label_894
	.word	-4252
	.word	4
	.word	_Label_895
	.word	-45896
	.word	41644
	.word	_Label_896
	.word	-45900
	.word	4
	.word	_Label_897
	.word	-45904
	.word	4
	.word	_Label_898
	.word	-45908
	.word	4
	.word	_Label_899
	.word	-45912
	.word	4
	.word	0
_Label_872:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_873:
	.ascii	"Pself\0"
	.align
_Label_874:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_875:
	.byte	'?'
	.ascii	"_temp_870\0"
	.align
_Label_876:
	.byte	'?'
	.ascii	"_temp_869\0"
	.align
_Label_877:
	.byte	'?'
	.ascii	"_temp_868\0"
	.align
_Label_878:
	.byte	'?'
	.ascii	"_temp_867\0"
	.align
_Label_879:
	.byte	'?'
	.ascii	"_temp_866\0"
	.align
_Label_880:
	.byte	'?'
	.ascii	"_temp_865\0"
	.align
_Label_881:
	.byte	'?'
	.ascii	"_temp_864\0"
	.align
_Label_882:
	.byte	'?'
	.ascii	"_temp_863\0"
	.align
_Label_883:
	.byte	'?'
	.ascii	"_temp_862\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_861\0"
	.align
_Label_885:
	.byte	'?'
	.ascii	"_temp_860\0"
	.align
_Label_886:
	.byte	'?'
	.ascii	"_temp_859\0"
	.align
_Label_887:
	.byte	'?'
	.ascii	"_temp_858\0"
	.align
_Label_888:
	.byte	'?'
	.ascii	"_temp_857\0"
	.align
_Label_889:
	.byte	'?'
	.ascii	"_temp_856\0"
	.align
_Label_890:
	.byte	'?'
	.ascii	"_temp_851\0"
	.align
_Label_891:
	.byte	'?'
	.ascii	"_temp_849\0"
	.align
_Label_892:
	.byte	'?'
	.ascii	"_temp_848\0"
	.align
_Label_893:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_894:
	.byte	'?'
	.ascii	"_temp_846\0"
	.align
_Label_895:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_896:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_897:
	.byte	'?'
	.ascii	"_temp_843\0"
	.align
_Label_898:
	.byte	'?'
	.ascii	"_temp_842\0"
	.align
_Label_899:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_2,r1
	push	r1
	mov	15,r1
_Label_1795:
	push	r0
	sub	r1,1,r1
	bne	_Label_1795
	mov	775,r13		! source line 775
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	782,r13		! source line 782
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	782,r13		! source line 782
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_900 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_900  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	783,r13		! source line 783
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	784,r13		! source line 784
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_905 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_906 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_905  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_901:
!   Perform the FOR-LOOP termination test
!   if i > _temp_906 then goto _Label_904		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_904
_Label_902:
	mov	784,r13		! source line 784
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_907 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_907  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	785,r13		! source line 785
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	786,r13		! source line 786
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_908 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_908  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	787,r13		! source line 787
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_910 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_910 [i ] into _temp_911
!     make sure index expr is >= 0
	load	[r14+-56],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_909 = _temp_911		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_909  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	788,r13		! source line 788
	mov	"\0\0CA",r10
	call	_function_128_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_903:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_901
! END FOR
_Label_904:
! CALL STATEMENT...
!   _temp_912 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_912  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	790,r13		! source line 790
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0SE",r10
!   _temp_913 = _function_127_PrintObjectAddr
	set	_function_127_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_914 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_913  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	792,r13		! source line 792
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	793,r13		! source line 793
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	793,r13		! source line 793
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	793,r13		! source line 793
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_2:
	.word	_sourceFileName
	.word	_Label_915
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_916
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_917
	.word	-12
	.word	4
	.word	_Label_918
	.word	-16
	.word	4
	.word	_Label_919
	.word	-20
	.word	4
	.word	_Label_920
	.word	-24
	.word	4
	.word	_Label_921
	.word	-28
	.word	4
	.word	_Label_922
	.word	-32
	.word	4
	.word	_Label_923
	.word	-36
	.word	4
	.word	_Label_924
	.word	-40
	.word	4
	.word	_Label_925
	.word	-44
	.word	4
	.word	_Label_926
	.word	-48
	.word	4
	.word	_Label_927
	.word	-52
	.word	4
	.word	_Label_928
	.word	-56
	.word	4
	.word	_Label_929
	.word	-60
	.word	4
	.word	0
_Label_915:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_916:
	.ascii	"Pself\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_914\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_913\0"
	.align
_Label_919:
	.byte	'?'
	.ascii	"_temp_912\0"
	.align
_Label_920:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_921:
	.byte	'?'
	.ascii	"_temp_910\0"
	.align
_Label_922:
	.byte	'?'
	.ascii	"_temp_909\0"
	.align
_Label_923:
	.byte	'?'
	.ascii	"_temp_908\0"
	.align
_Label_924:
	.byte	'?'
	.ascii	"_temp_907\0"
	.align
_Label_925:
	.byte	'?'
	.ascii	"_temp_906\0"
	.align
_Label_926:
	.byte	'?'
	.ascii	"_temp_905\0"
	.align
_Label_927:
	.byte	'?'
	.ascii	"_temp_900\0"
	.align
_Label_928:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_929:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_3,r1
	push	r1
	mov	10,r1
_Label_1796:
	push	r0
	sub	r1,1,r1
	bne	_Label_1796
	mov	798,r13		! source line 798
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	808,r13		! source line 808
	mov	"\0\0SE",r10
!   _temp_930 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	814,r13		! source line 814
	mov	"\0\0WH",r10
_Label_931:
	mov	814,r13		! source line 814
	mov	"\0\0SE",r10
!   _temp_934 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message IsEmpty
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_932 else goto _Label_933
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_933
	jmp	_Label_932
_Label_932:
	mov	814,r13		! source line 814
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	815,r13		! source line 815
	mov	"\0\0SE",r10
!   _temp_935 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_936 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_935  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_931
_Label_933:
! ASSIGNMENT STATEMENT...
	mov	823,r13		! source line 823
	mov	"\0\0AS",r10
	mov	823,r13		! source line 823
	mov	"\0\0SE",r10
!   _temp_937 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	824,r13		! source line 824
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_938 = th + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_938 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	825,r13		! source line 825
	mov	"\0\0SE",r10
!   _temp_939 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	827,r13		! source line 827
	mov	"\0\0RE",r10
!   ReturnResult: th  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_940
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_941
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_942
	.word	-12
	.word	4
	.word	_Label_943
	.word	-16
	.word	4
	.word	_Label_944
	.word	-20
	.word	4
	.word	_Label_945
	.word	-24
	.word	4
	.word	_Label_946
	.word	-28
	.word	4
	.word	_Label_947
	.word	-32
	.word	4
	.word	_Label_948
	.word	-36
	.word	4
	.word	_Label_949
	.word	-40
	.word	4
	.word	0
_Label_940:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_941:
	.ascii	"Pself\0"
	.align
_Label_942:
	.byte	'?'
	.ascii	"_temp_939\0"
	.align
_Label_943:
	.byte	'?'
	.ascii	"_temp_938\0"
	.align
_Label_944:
	.byte	'?'
	.ascii	"_temp_937\0"
	.align
_Label_945:
	.byte	'?'
	.ascii	"_temp_936\0"
	.align
_Label_946:
	.byte	'?'
	.ascii	"_temp_935\0"
	.align
_Label_947:
	.byte	'?'
	.ascii	"_temp_934\0"
	.align
_Label_948:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_949:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_4,r1
	push	r1
	mov	8,r1
_Label_1797:
	push	r0
	sub	r1,1,r1
	bne	_Label_1797
	mov	833,r13		! source line 833
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	842,r13		! source line 842
	mov	"\0\0SE",r10
!   _temp_950 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	843,r13		! source line 843
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_951 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_951 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	844,r13		! source line 844
	mov	"\0\0SE",r10
!   _temp_952 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	845,r13		! source line 845
	mov	"\0\0SE",r10
!   _temp_953 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_954 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_953  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	846,r13		! source line 846
	mov	"\0\0SE",r10
!   _temp_955 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	846,r13		! source line 846
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_956
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_957
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_958
	.word	12
	.word	4
	.word	_Label_959
	.word	-12
	.word	4
	.word	_Label_960
	.word	-16
	.word	4
	.word	_Label_961
	.word	-20
	.word	4
	.word	_Label_962
	.word	-24
	.word	4
	.word	_Label_963
	.word	-28
	.word	4
	.word	_Label_964
	.word	-32
	.word	4
	.word	0
_Label_956:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_957:
	.ascii	"Pself\0"
	.align
_Label_958:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_959:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_960:
	.byte	'?'
	.ascii	"_temp_954\0"
	.align
_Label_961:
	.byte	'?'
	.ascii	"_temp_953\0"
	.align
_Label_962:
	.byte	'?'
	.ascii	"_temp_952\0"
	.align
_Label_963:
	.byte	'?'
	.ascii	"_temp_951\0"
	.align
_Label_964:
	.byte	'?'
	.ascii	"_temp_950\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_965
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_965:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_966
	.word	_sourceFileName
	.word	225		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_966:
	.ascii	"ProcessControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1,r1
	push	r1
	mov	3,r1
_Label_1798:
	push	r0
	sub	r1,1,r1
	bne	_Label_1798
	mov	859,r13		! source line 859
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	860,r13		! source line 860
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	861,r13		! source line 861
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	862,r13		! source line 862
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_1799:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1799
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	863,r13		! source line 863
	mov	"\0\0SE",r10
!   _temp_968 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	863,r13		! source line 863
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_969
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_970
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_971
	.word	-12
	.word	4
	.word	_Label_972
	.word	-16
	.word	4
	.word	0
_Label_969:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_970:
	.ascii	"Pself\0"
	.align
_Label_971:
	.byte	'?'
	.ascii	"_temp_968\0"
	.align
_Label_972:
	.byte	'?'
	.ascii	"_temp_967\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2,r1
	push	r1
	mov	4,r1
_Label_1800:
	push	r0
	sub	r1,1,r1
	bne	_Label_1800
	mov	873,r13		! source line 873
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	878,r13		! source line 878
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_973) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	879,r13		! source line 879
	mov	"\0\0SE",r10
!   _temp_974 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_975 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_975  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	880,r13		! source line 880
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	881,r13		! source line 881
	mov	"\0\0CA",r10
	call	_function_128_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	891,r13		! source line 891
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	891,r13		! source line 891
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_976
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_977
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_978
	.word	-12
	.word	4
	.word	_Label_979
	.word	-16
	.word	4
	.word	_Label_980
	.word	-20
	.word	4
	.word	0
_Label_976:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_977:
	.ascii	"Pself\0"
	.align
_Label_978:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_979:
	.byte	'?'
	.ascii	"_temp_974\0"
	.align
_Label_980:
	.byte	'?'
	.ascii	"_temp_973\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessControlBlock_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3,r1
	push	r1
	mov	11,r1
_Label_1801:
	push	r0
	sub	r1,1,r1
	bne	_Label_1801
	mov	896,r13		! source line 896
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_981 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_981  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	900,r13		! source line 900
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_982  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	901,r13		! source line 901
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_983 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_983  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	902,r13		! source line 902
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	903,r13		! source line 903
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_984 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_984  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	904,r13		! source line 904
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	905,r13		! source line 905
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_986		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_986
!	jmp	_Label_985
_Label_985:
! THEN...
	mov	906,r13		! source line 906
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_987 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_987  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	906,r13		! source line 906
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_988
_Label_986:
! ELSE...
	mov	907,r13		! source line 907
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	907,r13		! source line 907
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_990		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_990
!	jmp	_Label_989
_Label_989:
! THEN...
	mov	908,r13		! source line 908
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_991 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_991  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	908,r13		! source line 908
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_992
_Label_990:
! ELSE...
	mov	909,r13		! source line 909
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	909,r13		! source line 909
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_994		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_994
!	jmp	_Label_993
_Label_993:
! THEN...
	mov	910,r13		! source line 910
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_995 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_995  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	910,r13		! source line 910
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_996
_Label_994:
! ELSE...
	mov	912,r13		! source line 912
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_997 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_997  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	912,r13		! source line 912
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_996:
! END IF...
_Label_992:
! END IF...
_Label_988:
! CALL STATEMENT...
!   _temp_998 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_998  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	914,r13		! source line 914
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	915,r13		! source line 915
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_999 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_999  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	916,r13		! source line 916
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	917,r13		! source line 917
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	918,r13		! source line 918
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	918,r13		! source line 918
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3:
	.word	_sourceFileName
	.word	_Label_1000
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1001
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1002
	.word	-12
	.word	4
	.word	_Label_1003
	.word	-16
	.word	4
	.word	_Label_1004
	.word	-20
	.word	4
	.word	_Label_1005
	.word	-24
	.word	4
	.word	_Label_1006
	.word	-28
	.word	4
	.word	_Label_1007
	.word	-32
	.word	4
	.word	_Label_1008
	.word	-36
	.word	4
	.word	_Label_1009
	.word	-40
	.word	4
	.word	_Label_1010
	.word	-44
	.word	4
	.word	_Label_1011
	.word	-48
	.word	4
	.word	0
_Label_1000:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1001:
	.ascii	"Pself\0"
	.align
_Label_1002:
	.byte	'?'
	.ascii	"_temp_999\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_998\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_997\0"
	.align
_Label_1005:
	.byte	'?'
	.ascii	"_temp_995\0"
	.align
_Label_1006:
	.byte	'?'
	.ascii	"_temp_991\0"
	.align
_Label_1007:
	.byte	'?'
	.ascii	"_temp_987\0"
	.align
_Label_1008:
	.byte	'?'
	.ascii	"_temp_984\0"
	.align
_Label_1009:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_1010:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_1011:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1012
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1012:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1013
	.word	_sourceFileName
	.word	245		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1013:
	.ascii	"ProcessManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_1,r1
	push	r1
	mov	368,r1
_Label_1802:
	push	r0
	sub	r1,1,r1
	bne	_Label_1802
	mov	929,r13		! source line 929
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	940,r13		! source line 940
	mov	"\0\0AS",r10
!   nextPid = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! ASSIGNMENT STATEMENT...
	mov	941,r13		! source line 941
	mov	"\0\0AS",r10
!   _temp_1014 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1468]
!   NEW ARRAY Constructor...
!   _temp_1016 = &_temp_1015
	add	r14,-1464,r1
	store	r1,[r14+-220]
!   _temp_1016 = _temp_1016 + 4
	load	[r14+-220],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1018 = zeros  (sizeInBytes=124)
	add	r14,-212,r4
	mov	31,r3
_Label_1803:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1803
!   _temp_1018 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-212]
	mov	10,r1
	store	r1,[r14+-216]
_Label_1020:
!   Data Move: *_temp_1016 = _temp_1018  (sizeInBytes=124)
	add	r14,-212,r5
	load	[r14+-220],r4
	mov	31,r3
_Label_1804:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1804
!   _temp_1016 = _temp_1016 + 124
	load	[r14+-220],r1
	add	r1,124,r1
	store	r1,[r14+-220]
!   _temp_1017 = _temp_1017 + -1
	load	[r14+-216],r1
	add	r1,-1,r1
	store	r1,[r14+-216]
!   if intNotZero (_temp_1017) then goto _Label_1020
	load	[r14+-216],r1
	cmp	r1,r0
	bne	_Label_1020
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1464]
!   _temp_1021 = &_temp_1015
	add	r14,-1464,r1
	store	r1,[r14+-84]
!   make sure array has size 10
	load	[r14+-1468],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_1805
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1805:
!   make sure array has size 10
	load	[r14+-84],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1014 = *_temp_1021  (sizeInBytes=1244)
	load	[r14+-84],r5
	load	[r14+-1468],r4
	mov	311,r3
_Label_1806:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1806
! ASSIGNMENT STATEMENT...
	mov	942,r13		! source line 942
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1284,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1284]
! FOR STATEMENT...
	mov	944,r13		! source line 944
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1027 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-76]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1028 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-72]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1027  (sizeInBytes=4)
	load	[r14+-76],r1
	store	r1,[r14+-1472]
_Label_1023:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1028 then goto _Label_1026		
	load	[r14+-1472],r1
	load	[r14+-72],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1026
_Label_1024:
	mov	944,r13		! source line 944
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	945,r13		! source line 945
	mov	"\0\0SE",r10
!   _temp_1029 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-68]
!   Move address of _temp_1029 [i ] into _temp_1030
!     make sure index expr is >= 0
	load	[r14+-1472],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-68],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	946,r13		! source line 946
	mov	"\0\0AS",r10
!   _temp_1031 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Move address of _temp_1031 [i ] into _temp_1032
!     make sure index expr is >= 0
	load	[r14+-1472],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-60],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   _temp_1033 = _temp_1032 + 20
	load	[r14+-56],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_1033 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-52],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	947,r13		! source line 947
	mov	"\0\0SE",r10
!   _temp_1035 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1035 [i ] into _temp_1036
!     make sure index expr is >= 0
	load	[r14+-1472],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_1034 = _temp_1036		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_1037 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1034  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1025:
!   i = i + 1
	load	[r14+-1472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1472]
	jmp	_Label_1023
! END FOR
_Label_1026:
! ASSIGNMENT STATEMENT...
	mov	952,r13		! source line 952
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1248,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1248]
! SEND STATEMENT...
	mov	953,r13		! source line 953
	mov	"\0\0SE",r10
!   _temp_1039 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	955,r13		! source line 955
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1268,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1268]
! SEND STATEMENT...
	mov	956,r13		! source line 956
	mov	"\0\0SE",r10
!   _temp_1041 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-20]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	958,r13		! source line 958
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1296,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1296]
! SEND STATEMENT...
	mov	959,r13		! source line 959
	mov	"\0\0SE",r10
!   _temp_1043 = &aProcessDied
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	959,r13		! source line 959
	mov	"\0\0RE",r10
	add	r15,1476,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1044
	.word	4		! total size of parameters
	.word	1472		! frame size = 1472
	.word	_Label_1045
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1046
	.word	-12
	.word	4
	.word	_Label_1047
	.word	-16
	.word	4
	.word	_Label_1048
	.word	-20
	.word	4
	.word	_Label_1049
	.word	-24
	.word	4
	.word	_Label_1050
	.word	-28
	.word	4
	.word	_Label_1051
	.word	-32
	.word	4
	.word	_Label_1052
	.word	-36
	.word	4
	.word	_Label_1053
	.word	-40
	.word	4
	.word	_Label_1054
	.word	-44
	.word	4
	.word	_Label_1055
	.word	-48
	.word	4
	.word	_Label_1056
	.word	-52
	.word	4
	.word	_Label_1057
	.word	-56
	.word	4
	.word	_Label_1058
	.word	-60
	.word	4
	.word	_Label_1059
	.word	-64
	.word	4
	.word	_Label_1060
	.word	-68
	.word	4
	.word	_Label_1061
	.word	-72
	.word	4
	.word	_Label_1062
	.word	-76
	.word	4
	.word	_Label_1063
	.word	-80
	.word	4
	.word	_Label_1064
	.word	-84
	.word	4
	.word	_Label_1065
	.word	-88
	.word	4
	.word	_Label_1066
	.word	-212
	.word	124
	.word	_Label_1067
	.word	-216
	.word	4
	.word	_Label_1068
	.word	-220
	.word	4
	.word	_Label_1069
	.word	-1464
	.word	1244
	.word	_Label_1070
	.word	-1468
	.word	4
	.word	_Label_1071
	.word	-1472
	.word	4
	.word	0
_Label_1044:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1045:
	.ascii	"Pself\0"
	.align
_Label_1046:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1047:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1048:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1049:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1050:
	.byte	'?'
	.ascii	"_temp_1039\0"
	.align
_Label_1051:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1052:
	.byte	'?'
	.ascii	"_temp_1037\0"
	.align
_Label_1053:
	.byte	'?'
	.ascii	"_temp_1036\0"
	.align
_Label_1054:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1055:
	.byte	'?'
	.ascii	"_temp_1034\0"
	.align
_Label_1056:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1057:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1058:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1059:
	.byte	'?'
	.ascii	"_temp_1030\0"
	.align
_Label_1060:
	.byte	'?'
	.ascii	"_temp_1029\0"
	.align
_Label_1061:
	.byte	'?'
	.ascii	"_temp_1028\0"
	.align
_Label_1062:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1063:
	.byte	'?'
	.ascii	"_temp_1022\0"
	.align
_Label_1064:
	.byte	'?'
	.ascii	"_temp_1021\0"
	.align
_Label_1065:
	.byte	'?'
	.ascii	"_temp_1019\0"
	.align
_Label_1066:
	.byte	'?'
	.ascii	"_temp_1018\0"
	.align
_Label_1067:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
_Label_1068:
	.byte	'?'
	.ascii	"_temp_1016\0"
	.align
_Label_1069:
	.byte	'?'
	.ascii	"_temp_1015\0"
	.align
_Label_1070:
	.byte	'?'
	.ascii	"_temp_1014\0"
	.align
_Label_1071:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_2,r1
	push	r1
	mov	14,r1
_Label_1807:
	push	r0
	sub	r1,1,r1
	bne	_Label_1807
	mov	971,r13		! source line 971
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	978,r13		! source line 978
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	978,r13		! source line 978
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1072 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1072  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	979,r13		! source line 979
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	980,r13		! source line 980
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1077 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1078 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1077  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1073:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1078 then goto _Label_1076		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1076
_Label_1074:
	mov	980,r13		! source line 980
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1079 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1079  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	981,r13		! source line 981
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	982,r13		! source line 982
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1080 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1080  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	983,r13		! source line 983
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	984,r13		! source line 984
	mov	"\0\0SE",r10
!   _temp_1081 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1081 [i ] into _temp_1082
!     make sure index expr is >= 0
	load	[r14+-52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1075:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1073
! END FOR
_Label_1076:
! CALL STATEMENT...
!   _temp_1083 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1083  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	986,r13		! source line 986
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	987,r13		! source line 987
	mov	"\0\0SE",r10
!   _temp_1084 = _function_127_PrintObjectAddr
	set	_function_127_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1085 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1084  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	988,r13		! source line 988
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	989,r13		! source line 989
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	989,r13		! source line 989
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	989,r13		! source line 989
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_2:
	.word	_sourceFileName
	.word	_Label_1086
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1087
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1088
	.word	-12
	.word	4
	.word	_Label_1089
	.word	-16
	.word	4
	.word	_Label_1090
	.word	-20
	.word	4
	.word	_Label_1091
	.word	-24
	.word	4
	.word	_Label_1092
	.word	-28
	.word	4
	.word	_Label_1093
	.word	-32
	.word	4
	.word	_Label_1094
	.word	-36
	.word	4
	.word	_Label_1095
	.word	-40
	.word	4
	.word	_Label_1096
	.word	-44
	.word	4
	.word	_Label_1097
	.word	-48
	.word	4
	.word	_Label_1098
	.word	-52
	.word	4
	.word	_Label_1099
	.word	-56
	.word	4
	.word	0
_Label_1086:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1087:
	.ascii	"Pself\0"
	.align
_Label_1088:
	.byte	'?'
	.ascii	"_temp_1085\0"
	.align
_Label_1089:
	.byte	'?'
	.ascii	"_temp_1084\0"
	.align
_Label_1090:
	.byte	'?'
	.ascii	"_temp_1083\0"
	.align
_Label_1091:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1092:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_1077\0"
	.align
_Label_1097:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1098:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1099:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_3,r1
	push	r1
	mov	13,r1
_Label_1808:
	push	r0
	sub	r1,1,r1
	bne	_Label_1808
	mov	994,r13		! source line 994
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1001,r13		! source line 1001
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1001,r13		! source line 1001
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1100 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1100  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1002,r13		! source line 1002
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1003,r13		! source line 1003
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1105 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1106 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1105  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1101:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1106 then goto _Label_1104		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1104
_Label_1102:
	mov	1003,r13		! source line 1003
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1107 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1107  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1004,r13		! source line 1004
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1005,r13		! source line 1005
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	1006,r13		! source line 1006
	mov	"\0\0SE",r10
!   _temp_1108 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1108 [i ] into _temp_1109
!     make sure index expr is >= 0
	load	[r14+-48],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message PrintShort
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1103:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1101
! END FOR
_Label_1104:
! CALL STATEMENT...
!   _temp_1110 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1110  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1008,r13		! source line 1008
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1009,r13		! source line 1009
	mov	"\0\0SE",r10
!   _temp_1111 = _function_127_PrintObjectAddr
	set	_function_127_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1112 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1111  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1010,r13		! source line 1010
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1011,r13		! source line 1011
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1011,r13		! source line 1011
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	1011,r13		! source line 1011
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_3:
	.word	_sourceFileName
	.word	_Label_1113
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1114
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1115
	.word	-12
	.word	4
	.word	_Label_1116
	.word	-16
	.word	4
	.word	_Label_1117
	.word	-20
	.word	4
	.word	_Label_1118
	.word	-24
	.word	4
	.word	_Label_1119
	.word	-28
	.word	4
	.word	_Label_1120
	.word	-32
	.word	4
	.word	_Label_1121
	.word	-36
	.word	4
	.word	_Label_1122
	.word	-40
	.word	4
	.word	_Label_1123
	.word	-44
	.word	4
	.word	_Label_1124
	.word	-48
	.word	4
	.word	_Label_1125
	.word	-52
	.word	4
	.word	0
_Label_1113:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1114:
	.ascii	"Pself\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_1112\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_1111\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_1110\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_1106\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_1105\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1124:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1125:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewProcess  ===============
! 
_Method_P_Kernel_ProcessManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_4,r1
	push	r1
	mov	11,r1
_Label_1809:
	push	r0
	sub	r1,1,r1
	bne	_Label_1809
	mov	1016,r13		! source line 1016
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1023,r13		! source line 1023
	mov	"\0\0SE",r10
!   _temp_1126 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1030,r13		! source line 1030
	mov	"\0\0WH",r10
_Label_1127:
	mov	1030,r13		! source line 1030
	mov	"\0\0SE",r10
!   _temp_1130 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1128 else goto _Label_1129
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1129
	jmp	_Label_1128
_Label_1128:
	mov	1030,r13		! source line 1030
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1031,r13		! source line 1031
	mov	"\0\0SE",r10
!   _temp_1131 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   _temp_1132 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1131  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1127
_Label_1129:
! ASSIGNMENT STATEMENT...
	mov	1039,r13		! source line 1039
	mov	"\0\0AS",r10
	mov	1039,r13		! source line 1039
	mov	"\0\0SE",r10
!   _temp_1133 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=pro  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1040,r13		! source line 1040
	mov	"\0\0AS",r10
!   nextPid = nextPid + 1		(int)
	load	[r14+8],r1
	load	[r1+1312],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+1312]
! ASSIGNMENT STATEMENT...
	mov	1041,r13		! source line 1041
	mov	"\0\0AS",r10
!   if intIsZero (pro) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1134 = pro + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1134 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1312],r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1042,r13		! source line 1042
	mov	"\0\0AS",r10
!   if intIsZero (pro) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1135 = pro + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1135 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1044,r13		! source line 1044
	mov	"\0\0SE",r10
!   _temp_1136 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1045,r13		! source line 1045
	mov	"\0\0RE",r10
!   ReturnResult: pro  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_1137
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1138
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1139
	.word	-12
	.word	4
	.word	_Label_1140
	.word	-16
	.word	4
	.word	_Label_1141
	.word	-20
	.word	4
	.word	_Label_1142
	.word	-24
	.word	4
	.word	_Label_1143
	.word	-28
	.word	4
	.word	_Label_1144
	.word	-32
	.word	4
	.word	_Label_1145
	.word	-36
	.word	4
	.word	_Label_1146
	.word	-40
	.word	4
	.word	_Label_1147
	.word	-44
	.word	4
	.word	0
_Label_1137:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1138:
	.ascii	"Pself\0"
	.align
_Label_1139:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1140:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
_Label_1141:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1142:
	.byte	'?'
	.ascii	"_temp_1133\0"
	.align
_Label_1143:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1145:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1147:
	.byte	'P'
	.ascii	"pro\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	8,r1
_Label_1810:
	push	r0
	sub	r1,1,r1
	bne	_Label_1810
	mov	1050,r13		! source line 1050
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1060,r13		! source line 1060
	mov	"\0\0SE",r10
!   _temp_1148 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1061,r13		! source line 1061
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1149 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1149 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1062,r13		! source line 1062
	mov	"\0\0SE",r10
!   _temp_1150 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1063,r13		! source line 1063
	mov	"\0\0SE",r10
!   _temp_1151 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1152 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1151  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	1064,r13		! source line 1064
	mov	"\0\0SE",r10
!   _temp_1153 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1064,r13		! source line 1064
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_1154
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1155
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1156
	.word	12
	.word	4
	.word	_Label_1157
	.word	-12
	.word	4
	.word	_Label_1158
	.word	-16
	.word	4
	.word	_Label_1159
	.word	-20
	.word	4
	.word	_Label_1160
	.word	-24
	.word	4
	.word	_Label_1161
	.word	-28
	.word	4
	.word	_Label_1162
	.word	-32
	.word	4
	.word	0
_Label_1154:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1155:
	.ascii	"Pself\0"
	.align
_Label_1156:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1153\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_1152\0"
	.align
_Label_1159:
	.byte	'?'
	.ascii	"_temp_1151\0"
	.align
_Label_1160:
	.byte	'?'
	.ascii	"_temp_1150\0"
	.align
_Label_1161:
	.byte	'?'
	.ascii	"_temp_1149\0"
	.align
_Label_1162:
	.byte	'?'
	.ascii	"_temp_1148\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1163
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1163:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1164
	.word	_sourceFileName
	.word	268		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1164:
	.ascii	"FrameManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FrameManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_1,r1
	push	r1
	mov	14,r1
_Label_1811:
	push	r0
	sub	r1,1,r1
	bne	_Label_1811
	mov	1098,r13		! source line 1098
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1165 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1165  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1104,r13		! source line 1104
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1105,r13		! source line 1105
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: framesInUse = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   framesInUse = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	1106,r13		! source line 1106
	mov	"\0\0SE",r10
!   _temp_1167 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=27  sizeInBytes=4
	mov	27,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1107,r13		! source line 1107
	mov	"\0\0AS",r10
!   numberFreeFrames = 27		(4 bytes)
	mov	27,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1108,r13		! source line 1108
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: frameManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,20,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   frameManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	1109,r13		! source line 1109
	mov	"\0\0SE",r10
!   _temp_1169 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1110,r13		! source line 1110
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,40,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	1111,r13		! source line 1111
	mov	"\0\0SE",r10
!   _temp_1171 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1117,r13		! source line 1117
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1176 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1177 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1176  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1172:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1177 then goto _Label_1175		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1175
_Label_1173:
	mov	1117,r13		! source line 1117
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1120,r13		! source line 1120
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1180 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1180) then goto _Label_1179
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1179
!	jmp	_Label_1178
_Label_1178:
! THEN...
	mov	1121,r13		! source line 1121
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1181 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1181  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1121,r13		! source line 1121
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1179:
!   Increment the FOR-LOOP index variable and jump back
_Label_1174:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1172
! END FOR
_Label_1175:
! RETURN STATEMENT...
	mov	1117,r13		! source line 1117
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_1182
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1183
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1184
	.word	-12
	.word	4
	.word	_Label_1185
	.word	-16
	.word	4
	.word	_Label_1186
	.word	-20
	.word	4
	.word	_Label_1187
	.word	-24
	.word	4
	.word	_Label_1188
	.word	-28
	.word	4
	.word	_Label_1189
	.word	-32
	.word	4
	.word	_Label_1190
	.word	-36
	.word	4
	.word	_Label_1191
	.word	-40
	.word	4
	.word	_Label_1192
	.word	-44
	.word	4
	.word	_Label_1193
	.word	-48
	.word	4
	.word	_Label_1194
	.word	-52
	.word	4
	.word	_Label_1195
	.word	-56
	.word	4
	.word	0
_Label_1182:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1183:
	.ascii	"Pself\0"
	.align
_Label_1184:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1171\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1170\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1193:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1194:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1195:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FrameManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_2,r1
	push	r1
	mov	8,r1
_Label_1812:
	push	r0
	sub	r1,1,r1
	bne	_Label_1812
	mov	1128,r13		! source line 1128
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1132,r13		! source line 1132
	mov	"\0\0SE",r10
!   _temp_1196 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1197 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1197  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1133,r13		! source line 1133
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1198 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1198  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1134,r13		! source line 1134
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1199 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1199  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1135,r13		! source line 1135
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1136,r13		! source line 1136
	mov	"\0\0SE",r10
!   _temp_1200 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1137,r13		! source line 1137
	mov	"\0\0SE",r10
!   _temp_1201 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1137,r13		! source line 1137
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_1202
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1203
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1204
	.word	-12
	.word	4
	.word	_Label_1205
	.word	-16
	.word	4
	.word	_Label_1206
	.word	-20
	.word	4
	.word	_Label_1207
	.word	-24
	.word	4
	.word	_Label_1208
	.word	-28
	.word	4
	.word	_Label_1209
	.word	-32
	.word	4
	.word	0
_Label_1202:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1203:
	.ascii	"Pself\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1201\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1199\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1197\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
! 
! ===============  METHOD GetAFrame  ===============
! 
_Method_P_Kernel_FrameManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_3,r1
	push	r1
	mov	10,r1
_Label_1813:
	push	r0
	sub	r1,1,r1
	bne	_Label_1813
	mov	1142,r13		! source line 1142
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1150,r13		! source line 1150
	mov	"\0\0SE",r10
!   _temp_1210 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1153,r13		! source line 1153
	mov	"\0\0WH",r10
_Label_1211:
!   if numberFreeFrames >= 1 then goto _Label_1213		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1213
!	jmp	_Label_1212
_Label_1212:
	mov	1153,r13		! source line 1153
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1154,r13		! source line 1154
	mov	"\0\0SE",r10
!   _temp_1214 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1215 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1214  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1211
_Label_1213:
! ASSIGNMENT STATEMENT...
	mov	1158,r13		! source line 1158
	mov	"\0\0AS",r10
	mov	1158,r13		! source line 1158
	mov	"\0\0SE",r10
!   _temp_1216 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message FindZeroAndSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1159,r13		! source line 1159
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1162,r13		! source line 1162
	mov	"\0\0SE",r10
!   _temp_1217 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1165,r13		! source line 1165
	mov	"\0\0AS",r10
!   _temp_1218 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1218		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1167,r13		! source line 1167
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_3:
	.word	_sourceFileName
	.word	_Label_1219
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1220
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1221
	.word	-12
	.word	4
	.word	_Label_1222
	.word	-16
	.word	4
	.word	_Label_1223
	.word	-20
	.word	4
	.word	_Label_1224
	.word	-24
	.word	4
	.word	_Label_1225
	.word	-28
	.word	4
	.word	_Label_1226
	.word	-32
	.word	4
	.word	_Label_1227
	.word	-36
	.word	4
	.word	_Label_1228
	.word	-40
	.word	4
	.word	0
_Label_1219:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1220:
	.ascii	"Pself\0"
	.align
_Label_1221:
	.byte	'?'
	.ascii	"_temp_1218\0"
	.align
_Label_1222:
	.byte	'?'
	.ascii	"_temp_1217\0"
	.align
_Label_1223:
	.byte	'?'
	.ascii	"_temp_1216\0"
	.align
_Label_1224:
	.byte	'?'
	.ascii	"_temp_1215\0"
	.align
_Label_1225:
	.byte	'?'
	.ascii	"_temp_1214\0"
	.align
_Label_1226:
	.byte	'?'
	.ascii	"_temp_1210\0"
	.align
_Label_1227:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1228:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	15,r1
_Label_1814:
	push	r0
	sub	r1,1,r1
	bne	_Label_1814
	mov	1172,r13		! source line 1172
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1175,r13		! source line 1175
	mov	"\0\0SE",r10
!   _temp_1229 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1178,r13		! source line 1178
	mov	"\0\0WH",r10
_Label_1230:
!   if numFramesNeeded <= numberFreeFrames then goto _Label_1232		(int)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1232
!	jmp	_Label_1231
_Label_1231:
	mov	1178,r13		! source line 1178
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1179,r13		! source line 1179
	mov	"\0\0SE",r10
!   _temp_1233 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_1234 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1233  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1230
_Label_1232:
! FOR STATEMENT...
	mov	1185,r13		! source line 1185
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1239 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1240 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1239  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-56]
_Label_1235:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1240 then goto _Label_1238		
	load	[r14+-56],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1238
_Label_1236:
	mov	1185,r13		! source line 1185
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1186,r13		! source line 1186
	mov	"\0\0AS",r10
	mov	1186,r13		! source line 1186
	mov	"\0\0SE",r10
!   _temp_1241 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message FindZeroAndSet
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1187,r13		! source line 1187
	mov	"\0\0AS",r10
!   _temp_1242 = f * 8192		(int)
	load	[r14+-48],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_1242		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
! SEND STATEMENT...
	mov	1188,r13		! source line 1188
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=frameAddr  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+8]
!   Send message SetFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1237:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1235
! END FOR
_Label_1238:
! ASSIGNMENT STATEMENT...
	mov	1192,r13		! source line 1192
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - numFramesNeeded		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1193,r13		! source line 1193
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1243 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1243 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1194,r13		! source line 1194
	mov	"\0\0SE",r10
!   _temp_1244 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1194,r13		! source line 1194
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_1245
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1246
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1247
	.word	12
	.word	4
	.word	_Label_1248
	.word	16
	.word	4
	.word	_Label_1249
	.word	-12
	.word	4
	.word	_Label_1250
	.word	-16
	.word	4
	.word	_Label_1251
	.word	-20
	.word	4
	.word	_Label_1252
	.word	-24
	.word	4
	.word	_Label_1253
	.word	-28
	.word	4
	.word	_Label_1254
	.word	-32
	.word	4
	.word	_Label_1255
	.word	-36
	.word	4
	.word	_Label_1256
	.word	-40
	.word	4
	.word	_Label_1257
	.word	-44
	.word	4
	.word	_Label_1258
	.word	-48
	.word	4
	.word	_Label_1259
	.word	-52
	.word	4
	.word	_Label_1260
	.word	-56
	.word	4
	.word	0
_Label_1245:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1246:
	.ascii	"Pself\0"
	.align
_Label_1247:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1248:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1249:
	.byte	'?'
	.ascii	"_temp_1244\0"
	.align
_Label_1250:
	.byte	'?'
	.ascii	"_temp_1243\0"
	.align
_Label_1251:
	.byte	'?'
	.ascii	"_temp_1242\0"
	.align
_Label_1252:
	.byte	'?'
	.ascii	"_temp_1241\0"
	.align
_Label_1253:
	.byte	'?'
	.ascii	"_temp_1240\0"
	.align
_Label_1254:
	.byte	'?'
	.ascii	"_temp_1239\0"
	.align
_Label_1255:
	.byte	'?'
	.ascii	"_temp_1234\0"
	.align
_Label_1256:
	.byte	'?'
	.ascii	"_temp_1233\0"
	.align
_Label_1257:
	.byte	'?'
	.ascii	"_temp_1229\0"
	.align
_Label_1258:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1259:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1260:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	15,r1
_Label_1815:
	push	r0
	sub	r1,1,r1
	bne	_Label_1815
	mov	1199,r13		! source line 1199
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1202,r13		! source line 1202
	mov	"\0\0SE",r10
!   _temp_1261 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1207,r13		! source line 1207
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1262 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: numFramesReturned = *_temp_1262  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-60]
! FOR STATEMENT...
	mov	1208,r13		! source line 1208
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1267 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1268 = numFramesReturned - 1		(int)
	load	[r14+-60],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1267  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-52]
_Label_1263:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1268 then goto _Label_1266		
	load	[r14+-52],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1266
_Label_1264:
	mov	1208,r13		! source line 1208
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1209,r13		! source line 1209
	mov	"\0\0AS",r10
	mov	1209,r13		! source line 1209
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	1210,r13		! source line 1210
	mov	"\0\0AS",r10
!   _temp_1269 = frameAddr - 1048576		(int)
	load	[r14+-56],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   bitNumber = _temp_1269 div 8192		(int)
	load	[r14+-28],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! SEND STATEMENT...
	mov	1211,r13		! source line 1211
	mov	"\0\0SE",r10
!   _temp_1270 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=bitNumber  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1265:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1263
! END FOR
_Label_1266:
! ASSIGNMENT STATEMENT...
	mov	1215,r13		! source line 1215
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames + numFramesReturned		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-60],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1216,r13		! source line 1216
	mov	"\0\0SE",r10
!   _temp_1271 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1272 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1271  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	1217,r13		! source line 1217
	mov	"\0\0SE",r10
!   _temp_1273 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	1217,r13		! source line 1217
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_1274
	.word	8		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1275
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1276
	.word	12
	.word	4
	.word	_Label_1277
	.word	-12
	.word	4
	.word	_Label_1278
	.word	-16
	.word	4
	.word	_Label_1279
	.word	-20
	.word	4
	.word	_Label_1280
	.word	-24
	.word	4
	.word	_Label_1281
	.word	-28
	.word	4
	.word	_Label_1282
	.word	-32
	.word	4
	.word	_Label_1283
	.word	-36
	.word	4
	.word	_Label_1284
	.word	-40
	.word	4
	.word	_Label_1285
	.word	-44
	.word	4
	.word	_Label_1286
	.word	-48
	.word	4
	.word	_Label_1287
	.word	-52
	.word	4
	.word	_Label_1288
	.word	-56
	.word	4
	.word	_Label_1289
	.word	-60
	.word	4
	.word	0
_Label_1274:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1275:
	.ascii	"Pself\0"
	.align
_Label_1276:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1272\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1271\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1270\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1269\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1262\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1286:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
_Label_1287:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1288:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1289:
	.byte	'I'
	.ascii	"numFramesReturned\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1290
	jmp	_Method_P_Kernel_AddrSpace_1	! 4:	Init
	jmp	_Method_P_Kernel_AddrSpace_2	! 8:	Print
	jmp	_Method_P_Kernel_AddrSpace_3	! 12:	ExtractFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_4	! 16:	ExtractUndefinedBits
	jmp	_Method_P_Kernel_AddrSpace_5	! 20:	SetFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_6	! 24:	IsDirty
	jmp	_Method_P_Kernel_AddrSpace_7	! 28:	IsReferenced
	jmp	_Method_P_Kernel_AddrSpace_8	! 32:	IsWritable
	jmp	_Method_P_Kernel_AddrSpace_9	! 36:	IsValid
	jmp	_Method_P_Kernel_AddrSpace_10	! 40:	SetDirty
	jmp	_Method_P_Kernel_AddrSpace_11	! 44:	SetReferenced
	jmp	_Method_P_Kernel_AddrSpace_12	! 48:	SetWritable
	jmp	_Method_P_Kernel_AddrSpace_13	! 52:	SetValid
	jmp	_Method_P_Kernel_AddrSpace_14	! 56:	ClearDirty
	jmp	_Method_P_Kernel_AddrSpace_15	! 60:	ClearReferenced
	jmp	_Method_P_Kernel_AddrSpace_16	! 64:	ClearWritable
	jmp	_Method_P_Kernel_AddrSpace_17	! 68:	ClearValid
	jmp	_Method_P_Kernel_AddrSpace_18	! 72:	SetToThisPageTable
	jmp	_Method_P_Kernel_AddrSpace_19	! 76:	CopyBytesFromVirtual
	jmp	_Method_P_Kernel_AddrSpace_20	! 80:	CopyBytesToVirtual
	jmp	_Method_P_Kernel_AddrSpace_21	! 84:	GetStringFromVirtual
	.word	0
! 
! Class descriptor:
! 
_Label_1290:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1291
	.word	_sourceFileName
	.word	287		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1291:
	.ascii	"AddrSpace\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_AddrSpace_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_1,r1
	push	r1
	mov	25,r1
_Label_1816:
	push	r0
	sub	r1,1,r1
	bne	_Label_1816
	mov	1228,r13		! source line 1228
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1232,r13		! source line 1232
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1233,r13		! source line 1233
	mov	"\0\0AS",r10
!   _temp_1292 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1294 = &_temp_1293
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1294 = _temp_1294 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1296:
!   Data Move: *_temp_1294 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1294 = _temp_1294 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1295 = _temp_1295 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1295) then goto _Label_1296
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1296
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1297 = &_temp_1293
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_1817
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_1817:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1292 = *_temp_1297  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_1818:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_1818
! RETURN STATEMENT...
	mov	1233,r13		! source line 1233
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_1:
	.word	_sourceFileName
	.word	_Label_1298
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1299
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1300
	.word	-12
	.word	4
	.word	_Label_1301
	.word	-16
	.word	4
	.word	_Label_1302
	.word	-20
	.word	4
	.word	_Label_1303
	.word	-104
	.word	84
	.word	_Label_1304
	.word	-108
	.word	4
	.word	0
_Label_1298:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1299:
	.ascii	"Pself\0"
	.align
_Label_1300:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1301:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1294\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1293\0"
	.align
_Label_1304:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_AddrSpace_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_2,r1
	push	r1
	mov	42,r1
_Label_1819:
	push	r0
	sub	r1,1,r1
	bne	_Label_1819
	mov	1238,r13		! source line 1238
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1305 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1305  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1243,r13		! source line 1243
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1306 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1306  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1244,r13		! source line 1244
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1245,r13		! source line 1245
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1311 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1312 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1311  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1307:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1312 then goto _Label_1310		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1310
_Label_1308:
	mov	1245,r13		! source line 1245
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1313 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1313  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1246,r13		! source line 1246
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1315 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1315 [i ] into _temp_1316
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-136]
!   _temp_1314 = _temp_1316		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1314  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1247,r13		! source line 1247
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1317 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1317  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1248,r13		! source line 1248
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1319 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1319 [i ] into _temp_1320
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-120]
!   Data Move: _temp_1318 = *_temp_1320  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1318  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1249,r13		! source line 1249
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1321 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1321  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1250,r13		! source line 1250
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1322 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1322  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1251,r13		! source line 1251
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1323 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1323  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1252,r13		! source line 1252
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1253,r13		! source line 1253
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1325) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1324  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1324  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1253,r13		! source line 1253
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1326 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1326  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1254,r13		! source line 1254
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1255,r13		! source line 1255
	mov	"\0\0IF",r10
	mov	1255,r13		! source line 1255
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1330) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1329  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1329) then goto _Label_1328
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1328
!	jmp	_Label_1327
_Label_1327:
! THEN...
	mov	1256,r13		! source line 1256
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1256,r13		! source line 1256
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1332) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1331  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1331  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1256,r13		! source line 1256
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1333
_Label_1328:
! ELSE...
	mov	1258,r13		! source line 1258
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1334 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1334  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1258,r13		! source line 1258
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1333:
! CALL STATEMENT...
!   _temp_1335 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1335  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1260,r13		! source line 1260
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1261,r13		! source line 1261
	mov	"\0\0IF",r10
	mov	1261,r13		! source line 1261
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1338) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_1336 else goto _Label_1337
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1337
	jmp	_Label_1336
_Label_1336:
! THEN...
	mov	1262,r13		! source line 1262
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1339 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1339  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1262,r13		! source line 1262
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1340
_Label_1337:
! ELSE...
	mov	1264,r13		! source line 1264
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1341 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1341  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1264,r13		! source line 1264
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1340:
! CALL STATEMENT...
!   _temp_1342 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1342  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1266,r13		! source line 1266
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1267,r13		! source line 1267
	mov	"\0\0IF",r10
	mov	1267,r13		! source line 1267
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1345) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_1343 else goto _Label_1344
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1344
	jmp	_Label_1343
_Label_1343:
! THEN...
	mov	1268,r13		! source line 1268
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1346 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1346  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1268,r13		! source line 1268
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1347
_Label_1344:
! ELSE...
	mov	1270,r13		! source line 1270
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1348 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1348  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1270,r13		! source line 1270
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1347:
! CALL STATEMENT...
!   _temp_1349 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1349  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1272,r13		! source line 1272
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1273,r13		! source line 1273
	mov	"\0\0IF",r10
	mov	1273,r13		! source line 1273
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1352) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_1350 else goto _Label_1351
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1351
	jmp	_Label_1350
_Label_1350:
! THEN...
	mov	1274,r13		! source line 1274
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1353 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1353  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1274,r13		! source line 1274
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1354
_Label_1351:
! ELSE...
	mov	1276,r13		! source line 1276
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1355 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1355  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1276,r13		! source line 1276
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1354:
! CALL STATEMENT...
!   _temp_1356 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1356  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1278,r13		! source line 1278
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1279,r13		! source line 1279
	mov	"\0\0IF",r10
	mov	1279,r13		! source line 1279
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1359) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_1357 else goto _Label_1358
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1358
	jmp	_Label_1357
_Label_1357:
! THEN...
	mov	1280,r13		! source line 1280
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1360 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1360  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1280,r13		! source line 1280
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1361
_Label_1358:
! ELSE...
	mov	1282,r13		! source line 1282
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1362 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1362  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1282,r13		! source line 1282
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1361:
! CALL STATEMENT...
!   Call the function
	mov	1284,r13		! source line 1284
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1309:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1307
! END FOR
_Label_1310:
! RETURN STATEMENT...
	mov	1245,r13		! source line 1245
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_2:
	.word	_sourceFileName
	.word	_Label_1363
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1364
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1365
	.word	-12
	.word	4
	.word	_Label_1366
	.word	-16
	.word	4
	.word	_Label_1367
	.word	-20
	.word	4
	.word	_Label_1368
	.word	-24
	.word	4
	.word	_Label_1369
	.word	-28
	.word	4
	.word	_Label_1370
	.word	-32
	.word	4
	.word	_Label_1371
	.word	-36
	.word	4
	.word	_Label_1372
	.word	-40
	.word	4
	.word	_Label_1373
	.word	-44
	.word	4
	.word	_Label_1374
	.word	-48
	.word	4
	.word	_Label_1375
	.word	-52
	.word	4
	.word	_Label_1376
	.word	-56
	.word	4
	.word	_Label_1377
	.word	-60
	.word	4
	.word	_Label_1378
	.word	-64
	.word	4
	.word	_Label_1379
	.word	-68
	.word	4
	.word	_Label_1380
	.word	-72
	.word	4
	.word	_Label_1381
	.word	-76
	.word	4
	.word	_Label_1382
	.word	-80
	.word	4
	.word	_Label_1383
	.word	-84
	.word	4
	.word	_Label_1384
	.word	-88
	.word	4
	.word	_Label_1385
	.word	-92
	.word	4
	.word	_Label_1386
	.word	-96
	.word	4
	.word	_Label_1387
	.word	-100
	.word	4
	.word	_Label_1388
	.word	-104
	.word	4
	.word	_Label_1389
	.word	-108
	.word	4
	.word	_Label_1390
	.word	-112
	.word	4
	.word	_Label_1391
	.word	-116
	.word	4
	.word	_Label_1392
	.word	-120
	.word	4
	.word	_Label_1393
	.word	-124
	.word	4
	.word	_Label_1394
	.word	-128
	.word	4
	.word	_Label_1395
	.word	-132
	.word	4
	.word	_Label_1396
	.word	-136
	.word	4
	.word	_Label_1397
	.word	-140
	.word	4
	.word	_Label_1398
	.word	-144
	.word	4
	.word	_Label_1399
	.word	-148
	.word	4
	.word	_Label_1400
	.word	-152
	.word	4
	.word	_Label_1401
	.word	-156
	.word	4
	.word	_Label_1402
	.word	-160
	.word	4
	.word	_Label_1403
	.word	-164
	.word	4
	.word	_Label_1404
	.word	-168
	.word	4
	.word	0
_Label_1363:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1364:
	.ascii	"Pself\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1362\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1360\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1356\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1355\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1353\0"
	.align
_Label_1371:
	.byte	'?'
	.ascii	"_temp_1352\0"
	.align
_Label_1372:
	.byte	'?'
	.ascii	"_temp_1349\0"
	.align
_Label_1373:
	.byte	'?'
	.ascii	"_temp_1348\0"
	.align
_Label_1374:
	.byte	'?'
	.ascii	"_temp_1346\0"
	.align
_Label_1375:
	.byte	'?'
	.ascii	"_temp_1345\0"
	.align
_Label_1376:
	.byte	'?'
	.ascii	"_temp_1342\0"
	.align
_Label_1377:
	.byte	'?'
	.ascii	"_temp_1341\0"
	.align
_Label_1378:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1379:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1380:
	.byte	'?'
	.ascii	"_temp_1335\0"
	.align
_Label_1381:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1382:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1383:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1384:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1385:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
_Label_1386:
	.byte	'?'
	.ascii	"_temp_1326\0"
	.align
_Label_1387:
	.byte	'?'
	.ascii	"_temp_1325\0"
	.align
_Label_1388:
	.byte	'?'
	.ascii	"_temp_1324\0"
	.align
_Label_1389:
	.byte	'?'
	.ascii	"_temp_1323\0"
	.align
_Label_1390:
	.byte	'?'
	.ascii	"_temp_1322\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1321\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1318\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1317\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1313\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1312\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1311\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1404:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ExtractFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_3,r1
	push	r1
	mov	4,r1
_Label_1820:
	push	r0
	sub	r1,1,r1
	bne	_Label_1820
	mov	1290,r13		! source line 1290
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1295,r13		! source line 1295
	mov	"\0\0RE",r10
!   _temp_1407 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1407 [entry ] into _temp_1408
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1406 = *_temp_1408  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1405 = _temp_1406 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1405  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_3:
	.word	_sourceFileName
	.word	_Label_1409
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1410
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1411
	.word	12
	.word	4
	.word	_Label_1412
	.word	-12
	.word	4
	.word	_Label_1413
	.word	-16
	.word	4
	.word	_Label_1414
	.word	-20
	.word	4
	.word	_Label_1415
	.word	-24
	.word	4
	.word	0
_Label_1409:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1410:
	.ascii	"Pself\0"
	.align
_Label_1411:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1412:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
_Label_1413:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
_Label_1414:
	.byte	'?'
	.ascii	"_temp_1406\0"
	.align
_Label_1415:
	.byte	'?'
	.ascii	"_temp_1405\0"
	.align
! 
! ===============  METHOD ExtractUndefinedBits  ===============
! 
_Method_P_Kernel_AddrSpace_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_4,r1
	push	r1
	mov	4,r1
_Label_1821:
	push	r0
	sub	r1,1,r1
	bne	_Label_1821
	mov	1300,r13		! source line 1300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1304,r13		! source line 1304
	mov	"\0\0RE",r10
!   _temp_1418 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1418 [entry ] into _temp_1419
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1417 = *_temp_1419  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1416 = _temp_1417 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1416  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
	.word	_sourceFileName
	.word	_Label_1420
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1421
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1422
	.word	12
	.word	4
	.word	_Label_1423
	.word	-12
	.word	4
	.word	_Label_1424
	.word	-16
	.word	4
	.word	_Label_1425
	.word	-20
	.word	4
	.word	_Label_1426
	.word	-24
	.word	4
	.word	0
_Label_1420:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1421:
	.ascii	"Pself\0"
	.align
_Label_1422:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1426:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
! 
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_1822:
	push	r0
	sub	r1,1,r1
	bne	_Label_1822
	mov	1309,r13		! source line 1309
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1314,r13		! source line 1314
	mov	"\0\0AS",r10
!   _temp_1427 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1427 [entry ] into _temp_1428
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1432 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1432 [entry ] into _temp_1433
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1431 = *_temp_1433  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1430 = _temp_1431 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1429 = _temp_1430 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1428 = _temp_1429  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1314,r13		! source line 1314
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_5:
	.word	_sourceFileName
	.word	_Label_1434
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1435
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1436
	.word	12
	.word	4
	.word	_Label_1437
	.word	16
	.word	4
	.word	_Label_1438
	.word	-12
	.word	4
	.word	_Label_1439
	.word	-16
	.word	4
	.word	_Label_1440
	.word	-20
	.word	4
	.word	_Label_1441
	.word	-24
	.word	4
	.word	_Label_1442
	.word	-28
	.word	4
	.word	_Label_1443
	.word	-32
	.word	4
	.word	_Label_1444
	.word	-36
	.word	4
	.word	0
_Label_1434:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1435:
	.ascii	"Pself\0"
	.align
_Label_1436:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1437:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1433\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1444:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
! 
! ===============  METHOD IsDirty  ===============
! 
_Method_P_Kernel_AddrSpace_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_6,r1
	push	r1
	mov	5,r1
_Label_1823:
	push	r0
	sub	r1,1,r1
	bne	_Label_1823
	mov	1319,r13		! source line 1319
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1323,r13		! source line 1323
	mov	"\0\0RE",r10
!   _temp_1448 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1448 [entry ] into _temp_1449
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1447 = *_temp_1449  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1446 = _temp_1447 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1446) then goto _Label_1450
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1450
!   _temp_1445 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1451
_Label_1450:
!   _temp_1445 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1451:
!   ReturnResult: _temp_1445  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_6:
	.word	_sourceFileName
	.word	_Label_1452
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1453
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1454
	.word	12
	.word	4
	.word	_Label_1455
	.word	-16
	.word	4
	.word	_Label_1456
	.word	-20
	.word	4
	.word	_Label_1457
	.word	-24
	.word	4
	.word	_Label_1458
	.word	-28
	.word	4
	.word	_Label_1459
	.word	-9
	.word	1
	.word	0
_Label_1452:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1453:
	.ascii	"Pself\0"
	.align
_Label_1454:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1449\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1448\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1446\0"
	.align
_Label_1459:
	.byte	'C'
	.ascii	"_temp_1445\0"
	.align
! 
! ===============  METHOD IsReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_7,r1
	push	r1
	mov	5,r1
_Label_1824:
	push	r0
	sub	r1,1,r1
	bne	_Label_1824
	mov	1328,r13		! source line 1328
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1332,r13		! source line 1332
	mov	"\0\0RE",r10
!   _temp_1463 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1463 [entry ] into _temp_1464
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1462 = *_temp_1464  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1461 = _temp_1462 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1461) then goto _Label_1465
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1465
!   _temp_1460 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1466
_Label_1465:
!   _temp_1460 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1466:
!   ReturnResult: _temp_1460  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_7:
	.word	_sourceFileName
	.word	_Label_1467
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1468
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1469
	.word	12
	.word	4
	.word	_Label_1470
	.word	-16
	.word	4
	.word	_Label_1471
	.word	-20
	.word	4
	.word	_Label_1472
	.word	-24
	.word	4
	.word	_Label_1473
	.word	-28
	.word	4
	.word	_Label_1474
	.word	-9
	.word	1
	.word	0
_Label_1467:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1468:
	.ascii	"Pself\0"
	.align
_Label_1469:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1470:
	.byte	'?'
	.ascii	"_temp_1464\0"
	.align
_Label_1471:
	.byte	'?'
	.ascii	"_temp_1463\0"
	.align
_Label_1472:
	.byte	'?'
	.ascii	"_temp_1462\0"
	.align
_Label_1473:
	.byte	'?'
	.ascii	"_temp_1461\0"
	.align
_Label_1474:
	.byte	'C'
	.ascii	"_temp_1460\0"
	.align
! 
! ===============  METHOD IsWritable  ===============
! 
_Method_P_Kernel_AddrSpace_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_8,r1
	push	r1
	mov	5,r1
_Label_1825:
	push	r0
	sub	r1,1,r1
	bne	_Label_1825
	mov	1337,r13		! source line 1337
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1341,r13		! source line 1341
	mov	"\0\0RE",r10
!   _temp_1478 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1478 [entry ] into _temp_1479
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1477 = *_temp_1479  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1476 = _temp_1477 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1476) then goto _Label_1480
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1480
!   _temp_1475 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1481
_Label_1480:
!   _temp_1475 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1481:
!   ReturnResult: _temp_1475  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_8:
	.word	_sourceFileName
	.word	_Label_1482
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1483
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1484
	.word	12
	.word	4
	.word	_Label_1485
	.word	-16
	.word	4
	.word	_Label_1486
	.word	-20
	.word	4
	.word	_Label_1487
	.word	-24
	.word	4
	.word	_Label_1488
	.word	-28
	.word	4
	.word	_Label_1489
	.word	-9
	.word	1
	.word	0
_Label_1482:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1483:
	.ascii	"Pself\0"
	.align
_Label_1484:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1476\0"
	.align
_Label_1489:
	.byte	'C'
	.ascii	"_temp_1475\0"
	.align
! 
! ===============  METHOD IsValid  ===============
! 
_Method_P_Kernel_AddrSpace_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_9,r1
	push	r1
	mov	5,r1
_Label_1826:
	push	r0
	sub	r1,1,r1
	bne	_Label_1826
	mov	1346,r13		! source line 1346
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1350,r13		! source line 1350
	mov	"\0\0RE",r10
!   _temp_1493 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1493 [entry ] into _temp_1494
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_1492 = *_temp_1494  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1491 = _temp_1492 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1491) then goto _Label_1495
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1495
!   _temp_1490 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1496
_Label_1495:
!   _temp_1490 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1496:
!   ReturnResult: _temp_1490  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_9:
	.word	_sourceFileName
	.word	_Label_1497
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1498
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1499
	.word	12
	.word	4
	.word	_Label_1500
	.word	-16
	.word	4
	.word	_Label_1501
	.word	-20
	.word	4
	.word	_Label_1502
	.word	-24
	.word	4
	.word	_Label_1503
	.word	-28
	.word	4
	.word	_Label_1504
	.word	-9
	.word	1
	.word	0
_Label_1497:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1498:
	.ascii	"Pself\0"
	.align
_Label_1499:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1500:
	.byte	'?'
	.ascii	"_temp_1494\0"
	.align
_Label_1501:
	.byte	'?'
	.ascii	"_temp_1493\0"
	.align
_Label_1502:
	.byte	'?'
	.ascii	"_temp_1492\0"
	.align
_Label_1503:
	.byte	'?'
	.ascii	"_temp_1491\0"
	.align
_Label_1504:
	.byte	'C'
	.ascii	"_temp_1490\0"
	.align
! 
! ===============  METHOD SetDirty  ===============
! 
_Method_P_Kernel_AddrSpace_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_10,r1
	push	r1
	mov	6,r1
_Label_1827:
	push	r0
	sub	r1,1,r1
	bne	_Label_1827
	mov	1355,r13		! source line 1355
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1359,r13		! source line 1359
	mov	"\0\0AS",r10
!   _temp_1505 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1505 [entry ] into _temp_1506
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1509 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1509 [entry ] into _temp_1510
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1508 = *_temp_1510  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1507 = _temp_1508 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1506 = _temp_1507  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1359,r13		! source line 1359
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_1511
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1512
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1513
	.word	12
	.word	4
	.word	_Label_1514
	.word	-12
	.word	4
	.word	_Label_1515
	.word	-16
	.word	4
	.word	_Label_1516
	.word	-20
	.word	4
	.word	_Label_1517
	.word	-24
	.word	4
	.word	_Label_1518
	.word	-28
	.word	4
	.word	_Label_1519
	.word	-32
	.word	4
	.word	0
_Label_1511:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1512:
	.ascii	"Pself\0"
	.align
_Label_1513:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1510\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1509\0"
	.align
_Label_1516:
	.byte	'?'
	.ascii	"_temp_1508\0"
	.align
_Label_1517:
	.byte	'?'
	.ascii	"_temp_1507\0"
	.align
_Label_1518:
	.byte	'?'
	.ascii	"_temp_1506\0"
	.align
_Label_1519:
	.byte	'?'
	.ascii	"_temp_1505\0"
	.align
! 
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_1828:
	push	r0
	sub	r1,1,r1
	bne	_Label_1828
	mov	1364,r13		! source line 1364
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1368,r13		! source line 1368
	mov	"\0\0AS",r10
!   _temp_1520 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1520 [entry ] into _temp_1521
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1524 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1524 [entry ] into _temp_1525
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1523 = *_temp_1525  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1522 = _temp_1523 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1521 = _temp_1522  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1368,r13		! source line 1368
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_1526
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1527
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1528
	.word	12
	.word	4
	.word	_Label_1529
	.word	-12
	.word	4
	.word	_Label_1530
	.word	-16
	.word	4
	.word	_Label_1531
	.word	-20
	.word	4
	.word	_Label_1532
	.word	-24
	.word	4
	.word	_Label_1533
	.word	-28
	.word	4
	.word	_Label_1534
	.word	-32
	.word	4
	.word	0
_Label_1526:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1527:
	.ascii	"Pself\0"
	.align
_Label_1528:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1529:
	.byte	'?'
	.ascii	"_temp_1525\0"
	.align
_Label_1530:
	.byte	'?'
	.ascii	"_temp_1524\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1523\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1522\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1521\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
! 
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_1829:
	push	r0
	sub	r1,1,r1
	bne	_Label_1829
	mov	1373,r13		! source line 1373
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1377,r13		! source line 1377
	mov	"\0\0AS",r10
!   _temp_1535 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1535 [entry ] into _temp_1536
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1539 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1539 [entry ] into _temp_1540
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1538 = *_temp_1540  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1537 = _temp_1538 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1536 = _temp_1537  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1377,r13		! source line 1377
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_1541
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1542
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1543
	.word	12
	.word	4
	.word	_Label_1544
	.word	-12
	.word	4
	.word	_Label_1545
	.word	-16
	.word	4
	.word	_Label_1546
	.word	-20
	.word	4
	.word	_Label_1547
	.word	-24
	.word	4
	.word	_Label_1548
	.word	-28
	.word	4
	.word	_Label_1549
	.word	-32
	.word	4
	.word	0
_Label_1541:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1542:
	.ascii	"Pself\0"
	.align
_Label_1543:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1544:
	.byte	'?'
	.ascii	"_temp_1540\0"
	.align
_Label_1545:
	.byte	'?'
	.ascii	"_temp_1539\0"
	.align
_Label_1546:
	.byte	'?'
	.ascii	"_temp_1538\0"
	.align
_Label_1547:
	.byte	'?'
	.ascii	"_temp_1537\0"
	.align
_Label_1548:
	.byte	'?'
	.ascii	"_temp_1536\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1535\0"
	.align
! 
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_1830:
	push	r0
	sub	r1,1,r1
	bne	_Label_1830
	mov	1382,r13		! source line 1382
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1386,r13		! source line 1386
	mov	"\0\0AS",r10
!   _temp_1550 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1550 [entry ] into _temp_1551
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1554 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1554 [entry ] into _temp_1555
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1553 = *_temp_1555  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1552 = _temp_1553 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1551 = _temp_1552  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1386,r13		! source line 1386
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_1556
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1557
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1558
	.word	12
	.word	4
	.word	_Label_1559
	.word	-12
	.word	4
	.word	_Label_1560
	.word	-16
	.word	4
	.word	_Label_1561
	.word	-20
	.word	4
	.word	_Label_1562
	.word	-24
	.word	4
	.word	_Label_1563
	.word	-28
	.word	4
	.word	_Label_1564
	.word	-32
	.word	4
	.word	0
_Label_1556:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1557:
	.ascii	"Pself\0"
	.align
_Label_1558:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1555\0"
	.align
_Label_1560:
	.byte	'?'
	.ascii	"_temp_1554\0"
	.align
_Label_1561:
	.byte	'?'
	.ascii	"_temp_1553\0"
	.align
_Label_1562:
	.byte	'?'
	.ascii	"_temp_1552\0"
	.align
_Label_1563:
	.byte	'?'
	.ascii	"_temp_1551\0"
	.align
_Label_1564:
	.byte	'?'
	.ascii	"_temp_1550\0"
	.align
! 
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_1831:
	push	r0
	sub	r1,1,r1
	bne	_Label_1831
	mov	1391,r13		! source line 1391
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1395,r13		! source line 1395
	mov	"\0\0AS",r10
!   _temp_1565 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1565 [entry ] into _temp_1566
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1569 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1569 [entry ] into _temp_1570
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1568 = *_temp_1570  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1567 = _temp_1568 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1566 = _temp_1567  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1395,r13		! source line 1395
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_1571
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1572
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1573
	.word	12
	.word	4
	.word	_Label_1574
	.word	-12
	.word	4
	.word	_Label_1575
	.word	-16
	.word	4
	.word	_Label_1576
	.word	-20
	.word	4
	.word	_Label_1577
	.word	-24
	.word	4
	.word	_Label_1578
	.word	-28
	.word	4
	.word	_Label_1579
	.word	-32
	.word	4
	.word	0
_Label_1571:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1572:
	.ascii	"Pself\0"
	.align
_Label_1573:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1574:
	.byte	'?'
	.ascii	"_temp_1570\0"
	.align
_Label_1575:
	.byte	'?'
	.ascii	"_temp_1569\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1568\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1567\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1566\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1565\0"
	.align
! 
! ===============  METHOD ClearReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_15:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_15,r1
	push	r1
	mov	6,r1
_Label_1832:
	push	r0
	sub	r1,1,r1
	bne	_Label_1832
	mov	1400,r13		! source line 1400
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1404,r13		! source line 1404
	mov	"\0\0AS",r10
!   _temp_1580 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1580 [entry ] into _temp_1581
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1584 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1584 [entry ] into _temp_1585
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1583 = *_temp_1585  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1582 = _temp_1583 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1581 = _temp_1582  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1404,r13		! source line 1404
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_1586
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1587
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1588
	.word	12
	.word	4
	.word	_Label_1589
	.word	-12
	.word	4
	.word	_Label_1590
	.word	-16
	.word	4
	.word	_Label_1591
	.word	-20
	.word	4
	.word	_Label_1592
	.word	-24
	.word	4
	.word	_Label_1593
	.word	-28
	.word	4
	.word	_Label_1594
	.word	-32
	.word	4
	.word	0
_Label_1586:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1587:
	.ascii	"Pself\0"
	.align
_Label_1588:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1585\0"
	.align
_Label_1590:
	.byte	'?'
	.ascii	"_temp_1584\0"
	.align
_Label_1591:
	.byte	'?'
	.ascii	"_temp_1583\0"
	.align
_Label_1592:
	.byte	'?'
	.ascii	"_temp_1582\0"
	.align
_Label_1593:
	.byte	'?'
	.ascii	"_temp_1581\0"
	.align
_Label_1594:
	.byte	'?'
	.ascii	"_temp_1580\0"
	.align
! 
! ===============  METHOD ClearWritable  ===============
! 
_Method_P_Kernel_AddrSpace_16:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_16,r1
	push	r1
	mov	6,r1
_Label_1833:
	push	r0
	sub	r1,1,r1
	bne	_Label_1833
	mov	1409,r13		! source line 1409
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1413,r13		! source line 1413
	mov	"\0\0AS",r10
!   _temp_1595 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1595 [entry ] into _temp_1596
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1599 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1599 [entry ] into _temp_1600
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1598 = *_temp_1600  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1597 = _temp_1598 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1596 = _temp_1597  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1413,r13		! source line 1413
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_1601
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1602
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1603
	.word	12
	.word	4
	.word	_Label_1604
	.word	-12
	.word	4
	.word	_Label_1605
	.word	-16
	.word	4
	.word	_Label_1606
	.word	-20
	.word	4
	.word	_Label_1607
	.word	-24
	.word	4
	.word	_Label_1608
	.word	-28
	.word	4
	.word	_Label_1609
	.word	-32
	.word	4
	.word	0
_Label_1601:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1602:
	.ascii	"Pself\0"
	.align
_Label_1603:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1600\0"
	.align
_Label_1605:
	.byte	'?'
	.ascii	"_temp_1599\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
_Label_1609:
	.byte	'?'
	.ascii	"_temp_1595\0"
	.align
! 
! ===============  METHOD ClearValid  ===============
! 
_Method_P_Kernel_AddrSpace_17:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_17,r1
	push	r1
	mov	6,r1
_Label_1834:
	push	r0
	sub	r1,1,r1
	bne	_Label_1834
	mov	1418,r13		! source line 1418
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1422,r13		! source line 1422
	mov	"\0\0AS",r10
!   _temp_1610 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1610 [entry ] into _temp_1611
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1614 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1614 [entry ] into _temp_1615
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1613 = *_temp_1615  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1612 = _temp_1613 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1611 = _temp_1612  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1422,r13		! source line 1422
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_1616
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1617
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1618
	.word	12
	.word	4
	.word	_Label_1619
	.word	-12
	.word	4
	.word	_Label_1620
	.word	-16
	.word	4
	.word	_Label_1621
	.word	-20
	.word	4
	.word	_Label_1622
	.word	-24
	.word	4
	.word	_Label_1623
	.word	-28
	.word	4
	.word	_Label_1624
	.word	-32
	.word	4
	.word	0
_Label_1616:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1617:
	.ascii	"Pself\0"
	.align
_Label_1618:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1619:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
_Label_1620:
	.byte	'?'
	.ascii	"_temp_1614\0"
	.align
_Label_1621:
	.byte	'?'
	.ascii	"_temp_1613\0"
	.align
_Label_1622:
	.byte	'?'
	.ascii	"_temp_1612\0"
	.align
_Label_1623:
	.byte	'?'
	.ascii	"_temp_1611\0"
	.align
_Label_1624:
	.byte	'?'
	.ascii	"_temp_1610\0"
	.align
! 
! ===============  METHOD SetToThisPageTable  ===============
! 
_Method_P_Kernel_AddrSpace_18:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_18,r1
	push	r1
	mov	6,r1
_Label_1835:
	push	r0
	sub	r1,1,r1
	bne	_Label_1835
	mov	1427,r13		! source line 1427
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1626 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1626 [0 ] into _temp_1627
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1625 = _temp_1627		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1628 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1625  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1628  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1433,r13		! source line 1433
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1433,r13		! source line 1433
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_1629
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1630
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1631
	.word	-12
	.word	4
	.word	_Label_1632
	.word	-16
	.word	4
	.word	_Label_1633
	.word	-20
	.word	4
	.word	_Label_1634
	.word	-24
	.word	4
	.word	0
_Label_1629:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1630:
	.ascii	"Pself\0"
	.align
_Label_1631:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1632:
	.byte	'?'
	.ascii	"_temp_1627\0"
	.align
_Label_1633:
	.byte	'?'
	.ascii	"_temp_1626\0"
	.align
_Label_1634:
	.byte	'?'
	.ascii	"_temp_1625\0"
	.align
! 
! ===============  METHOD CopyBytesFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_19:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_19,r1
	push	r1
	mov	12,r1
_Label_1836:
	push	r0
	sub	r1,1,r1
	bne	_Label_1836
	mov	1438,r13		! source line 1438
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1453,r13		! source line 1453
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1635
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1635
	jmp	_Label_1636
_Label_1635:
! THEN...
	mov	1454,r13		! source line 1454
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1454,r13		! source line 1454
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1637
_Label_1636:
! ELSE...
	mov	1455,r13		! source line 1455
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1455,r13		! source line 1455
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1639		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1639
!	jmp	_Label_1638
_Label_1638:
! THEN...
	mov	1456,r13		! source line 1456
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1456,r13		! source line 1456
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1639:
! END IF...
_Label_1637:
! ASSIGNMENT STATEMENT...
	mov	1458,r13		! source line 1458
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1459,r13		! source line 1459
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1462,r13		! source line 1462
	mov	"\0\0WH",r10
_Label_1640:
!	jmp	_Label_1641
_Label_1641:
	mov	1462,r13		! source line 1462
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1463,r13		! source line 1463
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1644		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1644
!	jmp	_Label_1643
_Label_1643:
! THEN...
	mov	1464,r13		! source line 1464
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1645 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1645  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1464,r13		! source line 1464
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1465,r13		! source line 1465
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1644:
! IF STATEMENT...
	mov	1467,r13		! source line 1467
	mov	"\0\0IF",r10
	mov	1467,r13		! source line 1467
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1649) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1648  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1648 then goto _Label_1647 else goto _Label_1646
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1646
	jmp	_Label_1647
_Label_1646:
! THEN...
	mov	1468,r13		! source line 1468
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1650 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1650  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1468,r13		! source line 1468
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1469,r13		! source line 1469
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1647:
! ASSIGNMENT STATEMENT...
	mov	1471,r13		! source line 1471
	mov	"\0\0AS",r10
	mov	1471,r13		! source line 1471
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1652) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1651  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_1651 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1473,r13		! source line 1473
	mov	"\0\0WH",r10
_Label_1653:
!   if offset >= 8192 then goto _Label_1655		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1655
!	jmp	_Label_1654
_Label_1654:
	mov	1473,r13		! source line 1473
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1476,r13		! source line 1476
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1656 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_1656  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1477,r13		! source line 1477
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1478,r13		! source line 1478
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1479,r13		! source line 1479
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1480,r13		! source line 1480
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1481,r13		! source line 1481
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1658		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1658
!	jmp	_Label_1657
_Label_1657:
! THEN...
	mov	1482,r13		! source line 1482
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1482,r13		! source line 1482
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1658:
! END WHILE...
	jmp	_Label_1653
_Label_1655:
! ASSIGNMENT STATEMENT...
	mov	1485,r13		! source line 1485
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1486,r13		! source line 1486
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_1640
_Label_1642:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_1659
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1660
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1661
	.word	12
	.word	4
	.word	_Label_1662
	.word	16
	.word	4
	.word	_Label_1663
	.word	20
	.word	4
	.word	_Label_1664
	.word	-9
	.word	1
	.word	_Label_1665
	.word	-16
	.word	4
	.word	_Label_1666
	.word	-20
	.word	4
	.word	_Label_1667
	.word	-24
	.word	4
	.word	_Label_1668
	.word	-28
	.word	4
	.word	_Label_1669
	.word	-10
	.word	1
	.word	_Label_1670
	.word	-32
	.word	4
	.word	_Label_1671
	.word	-36
	.word	4
	.word	_Label_1672
	.word	-40
	.word	4
	.word	_Label_1673
	.word	-44
	.word	4
	.word	_Label_1674
	.word	-48
	.word	4
	.word	0
_Label_1659:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_1660:
	.ascii	"Pself\0"
	.align
_Label_1661:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1662:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1663:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1664:
	.byte	'C'
	.ascii	"_temp_1656\0"
	.align
_Label_1665:
	.byte	'?'
	.ascii	"_temp_1652\0"
	.align
_Label_1666:
	.byte	'?'
	.ascii	"_temp_1651\0"
	.align
_Label_1667:
	.byte	'?'
	.ascii	"_temp_1650\0"
	.align
_Label_1668:
	.byte	'?'
	.ascii	"_temp_1649\0"
	.align
_Label_1669:
	.byte	'C'
	.ascii	"_temp_1648\0"
	.align
_Label_1670:
	.byte	'?'
	.ascii	"_temp_1645\0"
	.align
_Label_1671:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1672:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1673:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1674:
	.byte	'I'
	.ascii	"fromAddr\0"
	.align
! 
! ===============  METHOD CopyBytesToVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_20:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_20,r1
	push	r1
	mov	11,r1
_Label_1837:
	push	r0
	sub	r1,1,r1
	bne	_Label_1837
	mov	1492,r13		! source line 1492
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1503,r13		! source line 1503
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1675
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1675
	jmp	_Label_1676
_Label_1675:
! THEN...
	mov	1504,r13		! source line 1504
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1504,r13		! source line 1504
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1677
_Label_1676:
! ELSE...
	mov	1505,r13		! source line 1505
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1505,r13		! source line 1505
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1679		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1679
!	jmp	_Label_1678
_Label_1678:
! THEN...
	mov	1506,r13		! source line 1506
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1506,r13		! source line 1506
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1679:
! END IF...
_Label_1677:
! ASSIGNMENT STATEMENT...
	mov	1508,r13		! source line 1508
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1509,r13		! source line 1509
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1510,r13		! source line 1510
	mov	"\0\0WH",r10
_Label_1680:
!	jmp	_Label_1681
_Label_1681:
	mov	1510,r13		! source line 1510
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1511,r13		! source line 1511
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1686		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1686
	jmp	_Label_1683
_Label_1686:
	mov	1512,r13		! source line 1512
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1688) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1687  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1687 then goto _Label_1685 else goto _Label_1683
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1683
	jmp	_Label_1685
_Label_1685:
	mov	1513,r13		! source line 1513
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1690) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1689  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1689 then goto _Label_1684 else goto _Label_1683
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1683
	jmp	_Label_1684
_Label_1683:
! THEN...
	mov	1514,r13		! source line 1514
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1514,r13		! source line 1514
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1684:
! ASSIGNMENT STATEMENT...
	mov	1516,r13		! source line 1516
	mov	"\0\0AS",r10
	mov	1516,r13		! source line 1516
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1692) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1691  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_1691 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1517,r13		! source line 1517
	mov	"\0\0WH",r10
_Label_1693:
!   if offset >= 8192 then goto _Label_1695		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1695
!	jmp	_Label_1694
_Label_1694:
	mov	1517,r13		! source line 1517
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1518,r13		! source line 1518
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1696 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_1696  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1519,r13		! source line 1519
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1520,r13		! source line 1520
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1521,r13		! source line 1521
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1522,r13		! source line 1522
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1523,r13		! source line 1523
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1698		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1698
!	jmp	_Label_1697
_Label_1697:
! THEN...
	mov	1524,r13		! source line 1524
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1524,r13		! source line 1524
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1698:
! END WHILE...
	jmp	_Label_1693
_Label_1695:
! ASSIGNMENT STATEMENT...
	mov	1527,r13		! source line 1527
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1528,r13		! source line 1528
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_1680
_Label_1682:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_1699
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1700
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1701
	.word	12
	.word	4
	.word	_Label_1702
	.word	16
	.word	4
	.word	_Label_1703
	.word	20
	.word	4
	.word	_Label_1704
	.word	-9
	.word	1
	.word	_Label_1705
	.word	-16
	.word	4
	.word	_Label_1706
	.word	-20
	.word	4
	.word	_Label_1707
	.word	-24
	.word	4
	.word	_Label_1708
	.word	-10
	.word	1
	.word	_Label_1709
	.word	-28
	.word	4
	.word	_Label_1710
	.word	-11
	.word	1
	.word	_Label_1711
	.word	-32
	.word	4
	.word	_Label_1712
	.word	-36
	.word	4
	.word	_Label_1713
	.word	-40
	.word	4
	.word	_Label_1714
	.word	-44
	.word	4
	.word	0
_Label_1699:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_1700:
	.ascii	"Pself\0"
	.align
_Label_1701:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1702:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1703:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1704:
	.byte	'C'
	.ascii	"_temp_1696\0"
	.align
_Label_1705:
	.byte	'?'
	.ascii	"_temp_1692\0"
	.align
_Label_1706:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1707:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1708:
	.byte	'C'
	.ascii	"_temp_1689\0"
	.align
_Label_1709:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1710:
	.byte	'C'
	.ascii	"_temp_1687\0"
	.align
_Label_1711:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1712:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1713:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1714:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
! 
! ===============  METHOD GetStringFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_21:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_21,r1
	push	r1
	mov	13,r1
_Label_1838:
	push	r0
	sub	r1,1,r1
	bne	_Label_1838
	mov	1534,r13		! source line 1534
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1558,r13		! source line 1558
	mov	"\0\0IF",r10
	mov	1558,r13		! source line 1558
	mov	"\0\0SE",r10
!   _temp_1718 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_1719) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1718  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=virtAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_1717  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_1717 >= 4 then goto _Label_1716		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1716
!	jmp	_Label_1715
_Label_1715:
! THEN...
	mov	1561,r13		! source line 1561
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1561,r13		! source line 1561
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1716:
! IF STATEMENT...
	mov	1565,r13		! source line 1565
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_1721		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1721
!	jmp	_Label_1720
_Label_1720:
! THEN...
	mov	1566,r13		! source line 1566
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1566,r13		! source line 1566
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1721:
! ASSIGNMENT STATEMENT...
	mov	1569,r13		! source line 1569
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kernelAddr = sourceSize  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1571,r13		! source line 1571
	mov	"\0\0RE",r10
	mov	1571,r13		! source line 1571
	mov	"\0\0SE",r10
!   _temp_1724 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_1723 = _temp_1724 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_1725 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_1726) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_1723  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_1725  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sourceSize  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_1722  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_1722  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_21:
	.word	_sourceFileName
	.word	_Label_1727
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1728
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1729
	.word	12
	.word	4
	.word	_Label_1730
	.word	16
	.word	4
	.word	_Label_1731
	.word	20
	.word	4
	.word	_Label_1732
	.word	-12
	.word	4
	.word	_Label_1733
	.word	-16
	.word	4
	.word	_Label_1734
	.word	-20
	.word	4
	.word	_Label_1735
	.word	-24
	.word	4
	.word	_Label_1736
	.word	-28
	.word	4
	.word	_Label_1737
	.word	-32
	.word	4
	.word	_Label_1738
	.word	-36
	.word	4
	.word	_Label_1739
	.word	-40
	.word	4
	.word	_Label_1740
	.word	-44
	.word	4
	.word	0
_Label_1727:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_1728:
	.ascii	"Pself\0"
	.align
_Label_1729:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_1730:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1731:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1725\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1736:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1719\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1740:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
