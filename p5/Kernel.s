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
	.export	_P_Kernel_InitFirstProcess
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
! The following class and its methods are from this package
	.export	_P_Kernel_DiskDriver
	.export	_Method_P_Kernel_DiskDriver_1
	.export	_Method_P_Kernel_DiskDriver_2
	.export	_Method_P_Kernel_DiskDriver_3
	.export	_Method_P_Kernel_DiskDriver_4
	.export	_Method_P_Kernel_DiskDriver_5
! The following class and its methods are from this package
	.export	_P_Kernel_FileManager
	.export	_Method_P_Kernel_FileManager_1
	.export	_Method_P_Kernel_FileManager_2
	.export	_Method_P_Kernel_FileManager_3
	.export	_Method_P_Kernel_FileManager_4
	.export	_Method_P_Kernel_FileManager_5
	.export	_Method_P_Kernel_FileManager_6
	.export	_Method_P_Kernel_FileManager_7
	.export	_Method_P_Kernel_FileManager_8
! The following class and its methods are from this package
	.export	_P_Kernel_FileControlBlock
	.export	_Method_P_Kernel_FileControlBlock_1
	.export	_Method_P_Kernel_FileControlBlock_2
! The following class and its methods are from this package
	.export	_P_Kernel_OpenFile
	.export	_Method_P_Kernel_OpenFile_1
	.export	_Method_P_Kernel_OpenFile_2
	.export	_Method_P_Kernel_OpenFile_3
	.export	_Method_P_Kernel_OpenFile_4
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
	.export	_P_Kernel_diskDriver
	.export	_P_Kernel_fileManager
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
_P_Kernel_diskDriver:
	.skip	68
_P_Kernel_fileManager:
	.skip	800
	.align
! String constants
_StringConst_208:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_207:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_206:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_205:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_204:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_203:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_202:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_201:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_200:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_199:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_198:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_197:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_196:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_195:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_194:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_193:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_192:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_191:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_190:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_189:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_188:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_187:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_186:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_185:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_184:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_183:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_182:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_181:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_180:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_179:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_178:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_177:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_176:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_175:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_174:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_173:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_172:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_171:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_170:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_169:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_168:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_167:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_166:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_165:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_164:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_163:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_162:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_161:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_160:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_159:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_158:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_157:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_156:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_155:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_154:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_153:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_152:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_151:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_150:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_149:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_148:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_147:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_146:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_145:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_144:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_143:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_142:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_141:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_140:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_139:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_138:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_137:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_136:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_135:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_134:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_133:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_132:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_131:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_130:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_129:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_128:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_127:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_126:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_125:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_124:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_123:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_122:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_121:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_120:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_119:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_118:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_117:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_116:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_115:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_114:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_113:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_112:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_111:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_110:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_109:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_108:
	.word	6			! length
	.ascii	"THREAD"
	.align
_StringConst_107:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_106:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_105:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_104:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_103:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_102:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_101:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_100:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_99:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_98:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_97:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_96:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_95:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_94:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_93:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_92:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_91:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_90:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_89:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_88:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_87:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_86:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_85:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_84:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_83:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_82:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_81:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_80:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_79:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_78:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_77:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_76:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_75:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_74:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_73:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_72:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_71:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_70:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_69:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_68:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_67:
	.word	14			! length
	.ascii	"Invalid memory"
	.align
_StringConst_66:
	.word	15			! length
	.ascii	"Can\'t open file"
	.align
_StringConst_65:
	.word	12			! length
	.ascii	"TestProgram1"
	.align
_StringConst_64:
	.word	11			! length
	.ascii	"UserProgram"
	.align
_StringConst_63:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_62:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_61:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_60:
	.word	25			! length
	.ascii	"Handle_Sys_Close invoked!"
	.align
_StringConst_59:
	.word	16			! length
	.ascii	"newCurrentPos = "
	.align
_StringConst_58:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_57:
	.word	24			! length
	.ascii	"Handle_Sys_Seek invoked!"
	.align
_StringConst_56:
	.word	14			! length
	.ascii	"sizeInBytes = "
	.align
_StringConst_55:
	.word	25			! length
	.ascii	"virtual addr of buffer = "
	.align
_StringConst_54:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_53:
	.word	25			! length
	.ascii	"Handle_Sys_Write invoked!"
	.align
_StringConst_52:
	.word	14			! length
	.ascii	"sizeInBytes = "
	.align
_StringConst_51:
	.word	25			! length
	.ascii	"virtual addr of buffer = "
	.align
_StringConst_50:
	.word	11			! length
	.ascii	"fileDesc = "
	.align
_StringConst_49:
	.word	24			! length
	.ascii	"Handle_Sys_Read invoked!"
	.align
_StringConst_48:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_47:
	.word	24			! length
	.ascii	"virt addr of filename = "
	.align
_StringConst_46:
	.word	24			! length
	.ascii	"Handle_Sys_Open invoked!"
	.align
_StringConst_45:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_44:
	.word	24			! length
	.ascii	"virt addr of filename = "
	.align
_StringConst_43:
	.word	26			! length
	.ascii	"Handle_Sys_Create invoked!"
	.align
_StringConst_42:
	.word	12			! length
	.ascii	"processID = "
	.align
_StringConst_41:
	.word	24			! length
	.ascii	"Handle_Sys_Join invoked!"
	.align
_StringConst_40:
	.word	24			! length
	.ascii	"Handle_Sys_Fork invoked!"
	.align
_StringConst_39:
	.word	25			! length
	.ascii	"Handle_Sys_Yield invoked!"
	.align
_StringConst_38:
	.word	47			! length
	.ascii	"Syscall \'Shutdown\' was invoked by a user thread"
	.align
_StringConst_37:
	.word	15			! length
	.ascii	"returnStatus = "
	.align
_StringConst_36:
	.word	24			! length
	.ascii	"Handle_Sys_Exit invoked!"
	.align
_StringConst_35:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_34:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_33:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_32:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_31:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_30:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_29:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_28:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_25:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_24:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
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
	set	0x28a504ce,r4		! myHashVal = 681903310
	cmp	r3,r4
	be	_Label_217
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
_Label_217:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_218
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_218
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_218
_Label_218:
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
_Label_2990:
	push	r0
	sub	r1,1,r1
	bne	_Label_2990
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_219 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_219  sizeInBytes=4
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
_Label_2991:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2991
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_223 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_224 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_223  sizeInBytes=4
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
!   _temp_225 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_226 = _temp_225 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_226 = 3  (sizeInBytes=4)
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
_Label_2992:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2992
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_228 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_229 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_228  sizeInBytes=4
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
!   _temp_230 = _function_216_IdleFunction
	set	_function_216_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_231 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_230  sizeInBytes=4
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
	.word	_Label_232
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_233
	.word	-12
	.word	4
	.word	_Label_234
	.word	-16
	.word	4
	.word	_Label_235
	.word	-20
	.word	4
	.word	_Label_236
	.word	-24
	.word	4
	.word	_Label_237
	.word	-28
	.word	4
	.word	_Label_238
	.word	-32
	.word	4
	.word	_Label_239
	.word	-36
	.word	4
	.word	_Label_240
	.word	-40
	.word	4
	.word	_Label_241
	.word	-44
	.word	4
	.word	_Label_242
	.word	-48
	.word	4
	.word	_Label_243
	.word	-52
	.word	4
	.word	_Label_244
	.word	-56
	.word	4
	.word	_Label_245
	.word	-60
	.word	4
	.word	0
_Label_232:
	.ascii	"InitializeScheduler\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_238:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_216_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_216_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_2993:
	push	r0
	sub	r1,1,r1
	bne	_Label_2993
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_246:
!	jmp	_Label_247
_Label_247:
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
!   _temp_251 = &_P_Kernel_readyList
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
!   if result==true then goto _Label_249 else goto _Label_250
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_250
	jmp	_Label_249
_Label_249:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_252
_Label_250:
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
_Label_252:
! END WHILE...
	jmp	_Label_246
_Label_248:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_216_IdleFunction:
	.word	_sourceFileName
	.word	_Label_253
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_254
	.word	8
	.word	4
	.word	_Label_255
	.word	-12
	.word	4
	.word	_Label_256
	.word	-16
	.word	4
	.word	0
_Label_253:
	.ascii	"IdleFunction\0"
	.align
_Label_254:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_256:
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
_Label_2994:
	push	r0
	sub	r1,1,r1
	bne	_Label_2994
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
!   _temp_259 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_259 ) then goto _Label_258		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_258
!	jmp	_Label_257
_Label_257:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_261 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_261 [0 ] into _temp_262
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
!   _temp_260 = _temp_262		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_260  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_258:
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
!   _temp_263 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_263 = 3  (sizeInBytes=4)
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
_Label_264:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_268 = &_P_Kernel_threadsToBeDestroyed
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
!   Retrieve Result: targetName=_temp_267  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_267 then goto _Label_266 else goto _Label_265
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_265
	jmp	_Label_266
_Label_265:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_269 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_270 = &_P_Kernel_threadManager
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
	jmp	_Label_264
_Label_266:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_273 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_273 ) then goto _Label_272		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_272
!	jmp	_Label_271
_Label_271:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_275 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_275 [0 ] into _temp_276
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
!   _temp_274 = _temp_276		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_274  sizeInBytes=4
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
!   _temp_278 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_277 = *_temp_278  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_277) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_279 = _temp_277 + 32
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
_Label_272:
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
	.word	_Label_280
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_281
	.word	8
	.word	4
	.word	_Label_282
	.word	-16
	.word	4
	.word	_Label_283
	.word	-20
	.word	4
	.word	_Label_284
	.word	-24
	.word	4
	.word	_Label_285
	.word	-28
	.word	4
	.word	_Label_286
	.word	-32
	.word	4
	.word	_Label_287
	.word	-36
	.word	4
	.word	_Label_288
	.word	-40
	.word	4
	.word	_Label_289
	.word	-44
	.word	4
	.word	_Label_290
	.word	-48
	.word	4
	.word	_Label_291
	.word	-52
	.word	4
	.word	_Label_292
	.word	-9
	.word	1
	.word	_Label_293
	.word	-56
	.word	4
	.word	_Label_294
	.word	-60
	.word	4
	.word	_Label_295
	.word	-64
	.word	4
	.word	_Label_296
	.word	-68
	.word	4
	.word	_Label_297
	.word	-72
	.word	4
	.word	_Label_298
	.word	-76
	.word	4
	.word	_Label_299
	.word	-80
	.word	4
	.word	0
_Label_280:
	.ascii	"Run\0"
	.align
_Label_281:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_276\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_274\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_289:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_292:
	.byte	'C'
	.ascii	"_temp_267\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_298:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_299:
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
_Label_2995:
	push	r0
	sub	r1,1,r1
	bne	_Label_2995
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
!   _temp_300 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_300  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_301 = _function_215_ThreadPrintShort
	set	_function_215_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_302 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_301  sizeInBytes=4
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
	.word	_Label_303
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_304
	.word	-12
	.word	4
	.word	_Label_305
	.word	-16
	.word	4
	.word	_Label_306
	.word	-20
	.word	4
	.word	_Label_307
	.word	-24
	.word	4
	.word	0
_Label_303:
	.ascii	"PrintReadyList\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_307:
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
_Label_2996:
	push	r0
	sub	r1,1,r1
	bne	_Label_2996
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
!   _temp_308 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_308  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_310 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_309 = *_temp_310  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_309  sizeInBytes=4
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
!   _temp_311 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_311  sizeInBytes=4
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
	.word	_Label_312
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_313
	.word	-12
	.word	4
	.word	_Label_314
	.word	-16
	.word	4
	.word	_Label_315
	.word	-20
	.word	4
	.word	_Label_316
	.word	-24
	.word	4
	.word	_Label_317
	.word	-28
	.word	4
	.word	_Label_318
	.word	-32
	.word	4
	.word	0
_Label_312:
	.ascii	"ThreadStartMain\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_317:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_318:
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
_Label_2997:
	push	r0
	sub	r1,1,r1
	bne	_Label_2997
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
!   _temp_319 = &_P_Kernel_threadsToBeDestroyed
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
!   _temp_320 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_320  sizeInBytes=4
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
	.word	_Label_321
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_322
	.word	-12
	.word	4
	.word	_Label_323
	.word	-16
	.word	4
	.word	_Label_324
	.word	-20
	.word	4
	.word	0
_Label_321:
	.ascii	"ThreadFinish\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_323:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_324:
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
_Label_2998:
	push	r0
	sub	r1,1,r1
	bne	_Label_2998
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
!   _temp_325 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_325  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_327		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_327
!	jmp	_Label_326
_Label_326:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_328 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_328  sizeInBytes=4
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
!   _temp_330 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_329 = *_temp_330  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_329  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_327:
! CALL STATEMENT...
!   _temp_331 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_331  sizeInBytes=4
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
!   _temp_332 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_332  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_333 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_333  sizeInBytes=4
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
	.word	_Label_334
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_335
	.word	8
	.word	4
	.word	_Label_336
	.word	-12
	.word	4
	.word	_Label_337
	.word	-16
	.word	4
	.word	_Label_338
	.word	-20
	.word	4
	.word	_Label_339
	.word	-24
	.word	4
	.word	_Label_340
	.word	-28
	.word	4
	.word	_Label_341
	.word	-32
	.word	4
	.word	_Label_342
	.word	-36
	.word	4
	.word	_Label_343
	.word	-40
	.word	4
	.word	0
_Label_334:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_335:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_336:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_337:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
_Label_340:
	.byte	'?'
	.ascii	"_temp_329\0"
	.align
_Label_341:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_342:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_343:
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
_Label_2999:
	push	r0
	sub	r1,1,r1
	bne	_Label_2999
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
!   if newStatus != 1 then goto _Label_345		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_345
!	jmp	_Label_344
_Label_344:
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
	jmp	_Label_346
_Label_345:
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
_Label_346:
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
	.word	_Label_347
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_348
	.word	8
	.word	4
	.word	_Label_349
	.word	-12
	.word	4
	.word	0
_Label_347:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_348:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_349:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_215_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_215_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3000:
	push	r0
	sub	r1,1,r1
	bne	_Label_3000
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
!   if t == 0 then goto _Label_353		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_353
!   _temp_352 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_354
_Label_353:
!   _temp_352 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_354:
!   if _temp_352 then goto _Label_351 else goto _Label_350
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_350
	jmp	_Label_351
_Label_350:
! THEN...
	mov	701,r13		! source line 701
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_355 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_355  sizeInBytes=4
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
_Label_351:
! CALL STATEMENT...
!   _temp_356 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_356  sizeInBytes=4
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
!   _temp_358 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_357 = *_temp_358  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_357  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	705,r13		! source line 705
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_359 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_359  sizeInBytes=4
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
!   _temp_368 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_367 = *_temp_368  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_362
	cmp	r1,2
	be	_Label_363
	cmp	r1,3
	be	_Label_364
	cmp	r1,4
	be	_Label_365
	cmp	r1,5
	be	_Label_366
	jmp	_Label_360
! CASE 1...
_Label_362:
! CALL STATEMENT...
!   _temp_369 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_369  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	709,r13		! source line 709
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	710,r13		! source line 710
	mov	"\0\0BR",r10
	jmp	_Label_361
! CASE 2...
_Label_363:
! CALL STATEMENT...
!   _temp_370 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_370  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	712,r13		! source line 712
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	713,r13		! source line 713
	mov	"\0\0BR",r10
	jmp	_Label_361
! CASE 3...
_Label_364:
! CALL STATEMENT...
!   _temp_371 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_371  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	715,r13		! source line 715
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	716,r13		! source line 716
	mov	"\0\0BR",r10
	jmp	_Label_361
! CASE 4...
_Label_365:
! CALL STATEMENT...
!   _temp_372 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_372  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	718,r13		! source line 718
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	719,r13		! source line 719
	mov	"\0\0BR",r10
	jmp	_Label_361
! CASE 5...
_Label_366:
! CALL STATEMENT...
!   _temp_373 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_373  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	721,r13		! source line 721
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	722,r13		! source line 722
	mov	"\0\0BR",r10
	jmp	_Label_361
! DEFAULT CASE...
_Label_360:
! CALL STATEMENT...
!   _temp_374 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_374  sizeInBytes=4
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
_Label_361:
! CALL STATEMENT...
!   _temp_375 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_375  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	726,r13		! source line 726
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_376 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_376  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	727,r13		! source line 727
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_377 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_377  sizeInBytes=4
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
_RoutineDescriptor__function_215_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_378
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_379
	.word	8
	.word	4
	.word	_Label_380
	.word	-16
	.word	4
	.word	_Label_381
	.word	-20
	.word	4
	.word	_Label_382
	.word	-24
	.word	4
	.word	_Label_383
	.word	-28
	.word	4
	.word	_Label_384
	.word	-32
	.word	4
	.word	_Label_385
	.word	-36
	.word	4
	.word	_Label_386
	.word	-40
	.word	4
	.word	_Label_387
	.word	-44
	.word	4
	.word	_Label_388
	.word	-48
	.word	4
	.word	_Label_389
	.word	-52
	.word	4
	.word	_Label_390
	.word	-56
	.word	4
	.word	_Label_391
	.word	-60
	.word	4
	.word	_Label_392
	.word	-64
	.word	4
	.word	_Label_393
	.word	-68
	.word	4
	.word	_Label_394
	.word	-72
	.word	4
	.word	_Label_395
	.word	-76
	.word	4
	.word	_Label_396
	.word	-9
	.word	1
	.word	_Label_397
	.word	-80
	.word	4
	.word	0
_Label_378:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_379:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_386:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
_Label_387:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
_Label_388:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_389:
	.byte	'?'
	.ascii	"_temp_368\0"
	.align
_Label_390:
	.byte	'?'
	.ascii	"_temp_367\0"
	.align
_Label_391:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_392:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_394:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_396:
	.byte	'C'
	.ascii	"_temp_352\0"
	.align
_Label_397:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_214_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_214_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3001:
	push	r0
	sub	r1,1,r1
	bne	_Label_3001
	mov	1073,r13		! source line 1073
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_398 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_398  sizeInBytes=4
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
_RoutineDescriptor__function_214_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_399
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_400
	.word	8
	.word	4
	.word	_Label_401
	.word	-12
	.word	4
	.word	0
_Label_399:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_400:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_398\0"
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
_Label_3002:
	push	r0
	sub	r1,1,r1
	bne	_Label_3002
	mov	1083,r13		! source line 1083
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_402 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_402  sizeInBytes=4
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
	.word	_Label_403
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_404
	.word	8
	.word	4
	.word	_Label_405
	.word	-12
	.word	4
	.word	0
_Label_403:
	.ascii	"ProcessFinish\0"
	.align
_Label_404:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_402\0"
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
_Label_3003:
	push	r0
	sub	r1,1,r1
	bne	_Label_3003
	mov	1582,r13		! source line 1582
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1592,r13		! source line 1592
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1594,r13		! source line 1594
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
	mov	1595,r13		! source line 1595
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1595,r13		! source line 1595
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
	.word	_Label_406
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_406:
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
	mov	7,r1
_Label_3004:
	push	r0
	sub	r1,1,r1
	bne	_Label_3004
	mov	1600,r13		! source line 1600
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1611,r13		! source line 1611
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1613,r13		! source line 1613
	mov	"\0\0IF",r10
!   _temp_410 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_411 = _temp_410 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_409 = *_temp_411  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_409 == 0 then goto _Label_408		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_408
!	jmp	_Label_407
_Label_407:
! THEN...
	mov	1614,r13		! source line 1614
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1614,r13		! source line 1614
	mov	"\0\0SE",r10
!   _temp_413 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_414 = _temp_413 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_412 = *_temp_414  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_412) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_408:
! RETURN STATEMENT...
	mov	1613,r13		! source line 1613
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_415
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_416
	.word	-12
	.word	4
	.word	_Label_417
	.word	-16
	.word	4
	.word	_Label_418
	.word	-20
	.word	4
	.word	_Label_419
	.word	-24
	.word	4
	.word	_Label_420
	.word	-28
	.word	4
	.word	_Label_421
	.word	-32
	.word	4
	.word	0
_Label_415:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_410\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_409\0"
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
	mov	1621,r13		! source line 1621
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1630,r13		! source line 1630
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1630,r13		! source line 1630
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
	.word	_Label_422
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_422:
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
_Label_3005:
	push	r0
	sub	r1,1,r1
	bne	_Label_3005
	mov	1635,r13		! source line 1635
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1641,r13		! source line 1641
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_423 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_423  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1642,r13		! source line 1642
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1642,r13		! source line 1642
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
	.word	_Label_424
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_425
	.word	-12
	.word	4
	.word	0
_Label_424:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_423\0"
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
_Label_3006:
	push	r0
	sub	r1,1,r1
	bne	_Label_3006
	mov	1647,r13		! source line 1647
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1653,r13		! source line 1653
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_426 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_426  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1654,r13		! source line 1654
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1654,r13		! source line 1654
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
	.word	_Label_427
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_428
	.word	-12
	.word	4
	.word	0
_Label_427:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_426\0"
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
_Label_3007:
	push	r0
	sub	r1,1,r1
	bne	_Label_3007
	mov	1659,r13		! source line 1659
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1665,r13		! source line 1665
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_429 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_429  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1666,r13		! source line 1666
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1666,r13		! source line 1666
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
	.word	_Label_430
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_431
	.word	-12
	.word	4
	.word	0
_Label_430:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_429\0"
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
_Label_3008:
	push	r0
	sub	r1,1,r1
	bne	_Label_3008
	mov	1671,r13		! source line 1671
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1677,r13		! source line 1677
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_432 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_432  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1678,r13		! source line 1678
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1678,r13		! source line 1678
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
	.word	_Label_433
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_434
	.word	-12
	.word	4
	.word	0
_Label_433:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_434:
	.byte	'?'
	.ascii	"_temp_432\0"
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
_Label_3009:
	push	r0
	sub	r1,1,r1
	bne	_Label_3009
	mov	1683,r13		! source line 1683
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1689,r13		! source line 1689
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_435 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_435  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1690,r13		! source line 1690
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1690,r13		! source line 1690
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
	.word	_Label_436
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_437
	.word	-12
	.word	4
	.word	0
_Label_436:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_437:
	.byte	'?'
	.ascii	"_temp_435\0"
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
_Label_3010:
	push	r0
	sub	r1,1,r1
	bne	_Label_3010
	mov	1695,r13		! source line 1695
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1701,r13		! source line 1701
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_438 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_438  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1702,r13		! source line 1702
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1702,r13		! source line 1702
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
	.word	_Label_439
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_440
	.word	-12
	.word	4
	.word	0
_Label_439:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_438\0"
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
_Label_3011:
	push	r0
	sub	r1,1,r1
	bne	_Label_3011
	mov	1707,r13		! source line 1707
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1713,r13		! source line 1713
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_441 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_441  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1714,r13		! source line 1714
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1714,r13		! source line 1714
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
	.word	_Label_442
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_443
	.word	-12
	.word	4
	.word	0
_Label_442:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_443:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_213_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_213_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3012:
	push	r0
	sub	r1,1,r1
	bne	_Label_3012
	mov	1719,r13		! source line 1719
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_444 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_444  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1724,r13		! source line 1724
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1725,r13		! source line 1725
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_445 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_445  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1726,r13		! source line 1726
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1729,r13		! source line 1729
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_449 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_448 = *_temp_449  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_448 == 0 then goto _Label_447		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_447
!	jmp	_Label_446
_Label_446:
! THEN...
	mov	1730,r13		! source line 1730
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1730,r13		! source line 1730
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_451 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_450 = *_temp_451  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_450) then goto _runtimeErrorNullPointer
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
	jmp	_Label_452
_Label_447:
! ELSE...
	mov	1732,r13		! source line 1732
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_453 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_453  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1732,r13		! source line 1732
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_452:
! SEND STATEMENT...
	mov	1734,r13		! source line 1734
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
	mov	1740,r13		! source line 1740
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1740,r13		! source line 1740
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_213_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_454
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_455
	.word	8
	.word	4
	.word	_Label_456
	.word	-12
	.word	4
	.word	_Label_457
	.word	-16
	.word	4
	.word	_Label_458
	.word	-20
	.word	4
	.word	_Label_459
	.word	-24
	.word	4
	.word	_Label_460
	.word	-28
	.word	4
	.word	_Label_461
	.word	-32
	.word	4
	.word	_Label_462
	.word	-36
	.word	4
	.word	0
_Label_454:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_455:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_449\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_445\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_444\0"
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
_Label_3013:
	push	r0
	sub	r1,1,r1
	bne	_Label_3013
	mov	1745,r13		! source line 1745
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1752,r13		! source line 1752
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1766,r13		! source line 1766
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3014
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_463
_Label_3014:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_463
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_463
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_477,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_477:
	jmp	_Label_469	! 1:	
	jmp	_Label_476	! 2:	
	jmp	_Label_466	! 3:	
	jmp	_Label_465	! 4:	
	jmp	_Label_468	! 5:	
	jmp	_Label_467	! 6:	
	jmp	_Label_470	! 7:	
	jmp	_Label_471	! 8:	
	jmp	_Label_472	! 9:	
	jmp	_Label_473	! 10:	
	jmp	_Label_474	! 11:	
	jmp	_Label_475	! 12:	
! CASE 4...
_Label_465:
! RETURN STATEMENT...
	mov	1768,r13		! source line 1768
	mov	"\0\0RE",r10
!   Call the function
	mov	1768,r13		! source line 1768
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_478  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_478  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_466:
! CALL STATEMENT...
!   Call the function
	mov	1770,r13		! source line 1770
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1771,r13		! source line 1771
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_467:
! RETURN STATEMENT...
	mov	1773,r13		! source line 1773
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1773,r13		! source line 1773
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_479  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_479  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_468:
! RETURN STATEMENT...
	mov	1775,r13		! source line 1775
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1775,r13		! source line 1775
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_480  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_480  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_469:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1777,r13		! source line 1777
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1778,r13		! source line 1778
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_470:
! RETURN STATEMENT...
	mov	1780,r13		! source line 1780
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1780,r13		! source line 1780
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_481  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_481  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_471:
! RETURN STATEMENT...
	mov	1782,r13		! source line 1782
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1782,r13		! source line 1782
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_482  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_482  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_472:
! RETURN STATEMENT...
	mov	1784,r13		! source line 1784
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
	mov	1784,r13		! source line 1784
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_483  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_483  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_473:
! RETURN STATEMENT...
	mov	1786,r13		! source line 1786
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
	mov	1786,r13		! source line 1786
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_484  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_484  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_474:
! RETURN STATEMENT...
	mov	1788,r13		! source line 1788
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1788,r13		! source line 1788
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_485  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_485  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_475:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1790,r13		! source line 1790
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1791,r13		! source line 1791
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_476:
! CALL STATEMENT...
!   Call the function
	mov	1793,r13		! source line 1793
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1794,r13		! source line 1794
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_463:
! CALL STATEMENT...
!   _temp_486 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_486  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1796,r13		! source line 1796
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1797,r13		! source line 1797
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1798,r13		! source line 1798
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_487 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_487  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1799,r13		! source line 1799
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_464:
! RETURN STATEMENT...
	mov	1801,r13		! source line 1801
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
	.word	_Label_488
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_489
	.word	8
	.word	4
	.word	_Label_490
	.word	12
	.word	4
	.word	_Label_491
	.word	16
	.word	4
	.word	_Label_492
	.word	20
	.word	4
	.word	_Label_493
	.word	24
	.word	4
	.word	_Label_494
	.word	-12
	.word	4
	.word	_Label_495
	.word	-16
	.word	4
	.word	_Label_496
	.word	-20
	.word	4
	.word	_Label_497
	.word	-24
	.word	4
	.word	_Label_498
	.word	-28
	.word	4
	.word	_Label_499
	.word	-32
	.word	4
	.word	_Label_500
	.word	-36
	.word	4
	.word	_Label_501
	.word	-40
	.word	4
	.word	_Label_502
	.word	-44
	.word	4
	.word	_Label_503
	.word	-48
	.word	4
	.word	0
_Label_488:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_489:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_490:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_491:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_492:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_493:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_494:
	.byte	'?'
	.ascii	"_temp_487\0"
	.align
_Label_495:
	.byte	'?'
	.ascii	"_temp_486\0"
	.align
_Label_496:
	.byte	'?'
	.ascii	"_temp_485\0"
	.align
_Label_497:
	.byte	'?'
	.ascii	"_temp_484\0"
	.align
_Label_498:
	.byte	'?'
	.ascii	"_temp_483\0"
	.align
_Label_499:
	.byte	'?'
	.ascii	"_temp_482\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_481\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_480\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_479\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_478\0"
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
	mov	3,r1
_Label_3015:
	push	r0
	sub	r1,1,r1
	bne	_Label_3015
	mov	1806,r13		! source line 1806
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_504 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_504  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1807,r13		! source line 1807
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1808,r13		! source line 1808
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_505 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_505  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1809,r13		! source line 1809
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1810,r13		! source line 1810
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1811,r13		! source line 1811
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1811,r13		! source line 1811
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_506
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_507
	.word	8
	.word	4
	.word	_Label_508
	.word	-12
	.word	4
	.word	_Label_509
	.word	-16
	.word	4
	.word	0
_Label_506:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_507:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
_Label_508:
	.byte	'?'
	.ascii	"_temp_505\0"
	.align
_Label_509:
	.byte	'?'
	.ascii	"_temp_504\0"
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
	mov	2,r1
_Label_3016:
	push	r0
	sub	r1,1,r1
	bne	_Label_3016
	mov	1816,r13		! source line 1816
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_510 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_510  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1817,r13		! source line 1817
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1817,r13		! source line 1817
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_511
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_512
	.word	-12
	.word	4
	.word	0
_Label_511:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_510\0"
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
	mov	2,r1
_Label_3017:
	push	r0
	sub	r1,1,r1
	bne	_Label_3017
	mov	1822,r13		! source line 1822
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_513 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_513  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1823,r13		! source line 1823
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1824,r13		! source line 1824
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1824,r13		! source line 1824
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_514
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_515
	.word	-12
	.word	4
	.word	0
_Label_514:
	.ascii	"Handle_Sys_Yield\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_513\0"
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
	mov	2,r1
_Label_3018:
	push	r0
	sub	r1,1,r1
	bne	_Label_3018
	mov	1829,r13		! source line 1829
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_516 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_516  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1830,r13		! source line 1830
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1831,r13		! source line 1831
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1832,r13		! source line 1832
	mov	"\0\0RE",r10
!   ReturnResult: 1000  (sizeInBytes=4)
	mov	1000,r1
	store	r1,[r14+8]
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_517
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_518
	.word	-12
	.word	4
	.word	0
_Label_517:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_516\0"
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
	mov	3,r1
_Label_3019:
	push	r0
	sub	r1,1,r1
	bne	_Label_3019
	mov	1837,r13		! source line 1837
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_519 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_519  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1838,r13		! source line 1838
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1839,r13		! source line 1839
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_520 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_520  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1840,r13		! source line 1840
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=processID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1841,r13		! source line 1841
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1842,r13		! source line 1842
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1843,r13		! source line 1843
	mov	"\0\0RE",r10
!   ReturnResult: 2000  (sizeInBytes=4)
	mov	2000,r1
	store	r1,[r14+8]
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_521
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_522
	.word	8
	.word	4
	.word	_Label_523
	.word	-12
	.word	4
	.word	_Label_524
	.word	-16
	.word	4
	.word	0
_Label_521:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_522:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_523:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
_Label_524:
	.byte	'?'
	.ascii	"_temp_519\0"
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
	mov	65,r1
_Label_3020:
	push	r0
	sub	r1,1,r1
	bne	_Label_3020
	mov	1848,r13		! source line 1848
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-224,r4
	mov	23,r3
_Label_3021:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3021
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-224]
! SEND STATEMENT...
	mov	1865,r13		! source line 1865
	mov	"\0\0SE",r10
!   _temp_526 = &newAddrSpace
	add	r14,-224,r1
	store	r1,[r14+-108]
!   Send message Init
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1866,r13		! source line 1866
	mov	"\0\0AS",r10
	mov	1866,r13		! source line 1866
	mov	"\0\0SE",r10
!   _temp_527 = &strBuffer
	add	r14,-248,r1
	store	r1,[r14+-104]
!   _temp_528 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_530 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-92]
!   Data Move: _temp_529 = *_temp_530  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_529) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_531 = _temp_529 + 32
	load	[r14+-96],r1
	add	r1,32,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=_temp_527  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_528  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	1867,r13		! source line 1867
	mov	"\0\0IF",r10
!   if i >= 0 then goto _Label_533		(int)
	load	[r14+-252],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_533
!	jmp	_Label_532
_Label_532:
! THEN...
	mov	1868,r13		! source line 1868
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1868,r13		! source line 1868
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,264,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_533:
! ASSIGNMENT STATEMENT...
	mov	1871,r13		! source line 1871
	mov	"\0\0AS",r10
	mov	1871,r13		! source line 1871
	mov	"\0\0SE",r10
!   _temp_534 = &strBuffer
	add	r14,-248,r1
	store	r1,[r14+-84]
!   _temp_535 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_534  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=f_Open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	1872,r13		! source line 1872
	mov	"\0\0IF",r10
!   if intIsZero (f_Open) then goto _Label_536
	load	[r14+-116],r1
	cmp	r1,r0
	be	_Label_536
	jmp	_Label_537
_Label_536:
! THEN...
	mov	1873,r13		! source line 1873
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1873,r13		! source line 1873
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,264,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_537:
! ASSIGNMENT STATEMENT...
	mov	1876,r13		! source line 1876
	mov	"\0\0AS",r10
	mov	1876,r13		! source line 1876
	mov	"\0\0SE",r10
!   _temp_538 = &newAddrSpace
	add	r14,-224,r1
	store	r1,[r14+-76]
!   if intIsZero (f_Open) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_538  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-120]
! SEND STATEMENT...
	mov	1877,r13		! source line 1877
	mov	"\0\0SE",r10
!   _temp_539 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=f_Open  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	1878,r13		! source line 1878
	mov	"\0\0IF",r10
!   if initPC >= 0 then goto _Label_541		(int)
	load	[r14+-120],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_541
!	jmp	_Label_540
_Label_540:
! THEN...
	mov	1879,r13		! source line 1879
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1879,r13		! source line 1879
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,264,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_541:
! SEND STATEMENT...
	mov	1883,r13		! source line 1883
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_544 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: _temp_543 = *_temp_544  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_543) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_545 = _temp_543 + 32
	load	[r14+-64],r1
	add	r1,32,r1
	store	r1,[r14+-56]
!   _temp_542 = _temp_545		(4 bytes)
	load	[r14+-56],r1
	store	r1,[r14+-68]
!   _temp_546 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_542  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1886,r13		! source line 1886
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_548 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-44]
!   Data Move: _temp_547 = *_temp_548  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_547) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_549 = _temp_547 + 32
	load	[r14+-48],r1
	add	r1,32,r1
	store	r1,[r14+-40]
!   Data Move: *_temp_549 = newAddrSpace  (sizeInBytes=92)
	add	r14,-224,r5
	load	[r14+-40],r4
	mov	23,r3
_Label_3022:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3022
! ASSIGNMENT STATEMENT...
	mov	1888,r13		! source line 1888
	mov	"\0\0AS",r10
!   _temp_551 = &newAddrSpace
	add	r14,-224,r1
	store	r1,[r14+-32]
!   _temp_552 = _temp_551 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_550 = *_temp_552  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = _temp_550 * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
! ASSIGNMENT STATEMENT...
	mov	1889,r13		! source line 1889
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_553 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_553 [999 ] into _temp_554
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
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
	store	r2,[r14+-20]
!   initSystemStackTop = _temp_554		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	1891,r13		! source line 1891
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1891,r13		! source line 1891
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! SEND STATEMENT...
	mov	1892,r13		! source line 1892
	mov	"\0\0SE",r10
!   _temp_555 = &newAddrSpace
	add	r14,-224,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1893,r13		! source line 1893
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_556 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_556 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-12],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+8]
!   Call the function
	mov	1894,r13		! source line 1894
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1895,r13		! source line 1895
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,264,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_557
	.word	4		! total size of parameters
	.word	260		! frame size = 260
	.word	_Label_558
	.word	8
	.word	4
	.word	_Label_559
	.word	-12
	.word	4
	.word	_Label_560
	.word	-16
	.word	4
	.word	_Label_561
	.word	-20
	.word	4
	.word	_Label_562
	.word	-24
	.word	4
	.word	_Label_563
	.word	-28
	.word	4
	.word	_Label_564
	.word	-32
	.word	4
	.word	_Label_565
	.word	-36
	.word	4
	.word	_Label_566
	.word	-40
	.word	4
	.word	_Label_567
	.word	-44
	.word	4
	.word	_Label_568
	.word	-48
	.word	4
	.word	_Label_569
	.word	-52
	.word	4
	.word	_Label_570
	.word	-56
	.word	4
	.word	_Label_571
	.word	-60
	.word	4
	.word	_Label_572
	.word	-64
	.word	4
	.word	_Label_573
	.word	-68
	.word	4
	.word	_Label_574
	.word	-72
	.word	4
	.word	_Label_575
	.word	-76
	.word	4
	.word	_Label_576
	.word	-80
	.word	4
	.word	_Label_577
	.word	-84
	.word	4
	.word	_Label_578
	.word	-88
	.word	4
	.word	_Label_579
	.word	-92
	.word	4
	.word	_Label_580
	.word	-96
	.word	4
	.word	_Label_581
	.word	-100
	.word	4
	.word	_Label_582
	.word	-104
	.word	4
	.word	_Label_583
	.word	-108
	.word	4
	.word	_Label_584
	.word	-112
	.word	4
	.word	_Label_585
	.word	-116
	.word	4
	.word	_Label_586
	.word	-120
	.word	4
	.word	_Label_587
	.word	-124
	.word	4
	.word	_Label_588
	.word	-128
	.word	4
	.word	_Label_589
	.word	-132
	.word	4
	.word	_Label_590
	.word	-224
	.word	92
	.word	_Label_591
	.word	-248
	.word	24
	.word	_Label_592
	.word	-252
	.word	4
	.word	0
_Label_557:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_558:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_559:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_560:
	.byte	'?'
	.ascii	"_temp_555\0"
	.align
_Label_561:
	.byte	'?'
	.ascii	"_temp_554\0"
	.align
_Label_562:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
_Label_563:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
_Label_564:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_565:
	.byte	'?'
	.ascii	"_temp_550\0"
	.align
_Label_566:
	.byte	'?'
	.ascii	"_temp_549\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_568:
	.byte	'?'
	.ascii	"_temp_547\0"
	.align
_Label_569:
	.byte	'?'
	.ascii	"_temp_546\0"
	.align
_Label_570:
	.byte	'?'
	.ascii	"_temp_545\0"
	.align
_Label_571:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_572:
	.byte	'?'
	.ascii	"_temp_543\0"
	.align
_Label_573:
	.byte	'?'
	.ascii	"_temp_542\0"
	.align
_Label_574:
	.byte	'?'
	.ascii	"_temp_539\0"
	.align
_Label_575:
	.byte	'?'
	.ascii	"_temp_538\0"
	.align
_Label_576:
	.byte	'?'
	.ascii	"_temp_535\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_534\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_531\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_530\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_529\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_528\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_583:
	.byte	'?'
	.ascii	"_temp_526\0"
	.align
_Label_584:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
_Label_585:
	.byte	'P'
	.ascii	"f_Open\0"
	.align
_Label_586:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_587:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_588:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_589:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_590:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_591:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_592:
	.byte	'I'
	.ascii	"i\0"
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
	mov	21,r1
_Label_3023:
	push	r0
	sub	r1,1,r1
	bne	_Label_3023
	mov	1900,r13		! source line 1900
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1904,r13		! source line 1904
	mov	"\0\0AS",r10
	mov	1904,r13		! source line 1904
	mov	"\0\0SE",r10
!   _temp_593 = &strBuffer
	add	r14,-72,r1
	store	r1,[r14+-48]
!   _temp_594 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_596 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_595 = *_temp_596  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_595) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_597 = _temp_595 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_593  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_594  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! IF STATEMENT...
	mov	1905,r13		! source line 1905
	mov	"\0\0IF",r10
!   if i >= 0 then goto _Label_599		(int)
	load	[r14+-76],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_599
!	jmp	_Label_598
_Label_598:
! THEN...
	mov	1906,r13		! source line 1906
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1906,r13		! source line 1906
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_599:
! CALL STATEMENT...
!   _temp_600 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_600  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1909,r13		! source line 1909
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1910,r13		! source line 1910
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_601 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_601  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1911,r13		! source line 1911
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_602 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_602  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1912,r13		! source line 1912
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1913,r13		! source line 1913
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_603 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_603  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1914,r13		! source line 1914
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_604 = &strBuffer
	add	r14,-72,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_604  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1915,r13		! source line 1915
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1916,r13		! source line 1916
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1917,r13		! source line 1917
	mov	"\0\0RE",r10
!   ReturnResult: 4000  (sizeInBytes=4)
	mov	4000,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_605
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_606
	.word	8
	.word	4
	.word	_Label_607
	.word	-12
	.word	4
	.word	_Label_608
	.word	-16
	.word	4
	.word	_Label_609
	.word	-20
	.word	4
	.word	_Label_610
	.word	-24
	.word	4
	.word	_Label_611
	.word	-28
	.word	4
	.word	_Label_612
	.word	-32
	.word	4
	.word	_Label_613
	.word	-36
	.word	4
	.word	_Label_614
	.word	-40
	.word	4
	.word	_Label_615
	.word	-44
	.word	4
	.word	_Label_616
	.word	-48
	.word	4
	.word	_Label_617
	.word	-72
	.word	24
	.word	_Label_618
	.word	-76
	.word	4
	.word	0
_Label_605:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_606:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_612:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_613:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_614:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_615:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_617:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_618:
	.byte	'I'
	.ascii	"i\0"
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
	mov	21,r1
_Label_3024:
	push	r0
	sub	r1,1,r1
	bne	_Label_3024
	mov	1922,r13		! source line 1922
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1926,r13		! source line 1926
	mov	"\0\0AS",r10
	mov	1926,r13		! source line 1926
	mov	"\0\0SE",r10
!   _temp_619 = &strBuffer
	add	r14,-72,r1
	store	r1,[r14+-48]
!   _temp_620 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_622 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-36]
!   Data Move: _temp_621 = *_temp_622  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_621) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_623 = _temp_621 + 32
	load	[r14+-40],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_619  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_620  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! IF STATEMENT...
	mov	1927,r13		! source line 1927
	mov	"\0\0IF",r10
!   if i >= 0 then goto _Label_625		(int)
	load	[r14+-76],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_625
!	jmp	_Label_624
_Label_624:
! THEN...
	mov	1928,r13		! source line 1928
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1928,r13		! source line 1928
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_625:
! CALL STATEMENT...
!   _temp_626 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_626  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1931,r13		! source line 1931
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1932,r13		! source line 1932
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_627 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_627  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1933,r13		! source line 1933
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_628 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_628  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1934,r13		! source line 1934
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1935,r13		! source line 1935
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_629 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_629  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1936,r13		! source line 1936
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_630 = &strBuffer
	add	r14,-72,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_630  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1937,r13		! source line 1937
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1938,r13		! source line 1938
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1939,r13		! source line 1939
	mov	"\0\0RE",r10
!   ReturnResult: 5000  (sizeInBytes=4)
	mov	5000,r1
	store	r1,[r14+8]
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_631
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_632
	.word	8
	.word	4
	.word	_Label_633
	.word	-12
	.word	4
	.word	_Label_634
	.word	-16
	.word	4
	.word	_Label_635
	.word	-20
	.word	4
	.word	_Label_636
	.word	-24
	.word	4
	.word	_Label_637
	.word	-28
	.word	4
	.word	_Label_638
	.word	-32
	.word	4
	.word	_Label_639
	.word	-36
	.word	4
	.word	_Label_640
	.word	-40
	.word	4
	.word	_Label_641
	.word	-44
	.word	4
	.word	_Label_642
	.word	-48
	.word	4
	.word	_Label_643
	.word	-72
	.word	24
	.word	_Label_644
	.word	-76
	.word	4
	.word	0
_Label_631:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_632:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_633:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_634:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_628\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_627\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_626\0"
	.align
_Label_638:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_639:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_640:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_641:
	.byte	'?'
	.ascii	"_temp_620\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_619\0"
	.align
_Label_643:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
_Label_644:
	.byte	'I'
	.ascii	"i\0"
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
	mov	6,r1
_Label_3025:
	push	r0
	sub	r1,1,r1
	bne	_Label_3025
	mov	1944,r13		! source line 1944
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_645 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_645  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1946,r13		! source line 1946
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1947,r13		! source line 1947
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_646 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_646  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1948,r13		! source line 1948
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1949,r13		! source line 1949
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1950,r13		! source line 1950
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_647 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_647  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1951,r13		! source line 1951
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_648 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_648  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1952,r13		! source line 1952
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1953,r13		! source line 1953
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_649 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_649  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1954,r13		! source line 1954
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1955,r13		! source line 1955
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1956,r13		! source line 1956
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1957,r13		! source line 1957
	mov	"\0\0RE",r10
!   ReturnResult: 6000  (sizeInBytes=4)
	mov	6000,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_650
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_651
	.word	8
	.word	4
	.word	_Label_652
	.word	12
	.word	4
	.word	_Label_653
	.word	16
	.word	4
	.word	_Label_654
	.word	-12
	.word	4
	.word	_Label_655
	.word	-16
	.word	4
	.word	_Label_656
	.word	-20
	.word	4
	.word	_Label_657
	.word	-24
	.word	4
	.word	_Label_658
	.word	-28
	.word	4
	.word	0
_Label_650:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_651:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_652:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_653:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_649\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_647\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_646\0"
	.align
_Label_658:
	.byte	'?'
	.ascii	"_temp_645\0"
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
	mov	6,r1
_Label_3026:
	push	r0
	sub	r1,1,r1
	bne	_Label_3026
	mov	1962,r13		! source line 1962
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_659 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_659  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1963,r13		! source line 1963
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1964,r13		! source line 1964
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_660 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_660  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1965,r13		! source line 1965
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1966,r13		! source line 1966
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1967,r13		! source line 1967
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_661 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_661  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1968,r13		! source line 1968
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_662 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_662  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1969,r13		! source line 1969
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1970,r13		! source line 1970
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_663 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_663  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1971,r13		! source line 1971
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1972,r13		! source line 1972
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1973,r13		! source line 1973
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1974,r13		! source line 1974
	mov	"\0\0RE",r10
!   ReturnResult: 7000  (sizeInBytes=4)
	mov	7000,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_664
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_665
	.word	8
	.word	4
	.word	_Label_666
	.word	12
	.word	4
	.word	_Label_667
	.word	16
	.word	4
	.word	_Label_668
	.word	-12
	.word	4
	.word	_Label_669
	.word	-16
	.word	4
	.word	_Label_670
	.word	-20
	.word	4
	.word	_Label_671
	.word	-24
	.word	4
	.word	_Label_672
	.word	-28
	.word	4
	.word	0
_Label_664:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_665:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_666:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_667:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_668:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_669:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_670:
	.byte	'?'
	.ascii	"_temp_661\0"
	.align
_Label_671:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_672:
	.byte	'?'
	.ascii	"_temp_659\0"
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
	mov	4,r1
_Label_3027:
	push	r0
	sub	r1,1,r1
	bne	_Label_3027
	mov	1979,r13		! source line 1979
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_673 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_673  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1980,r13		! source line 1980
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1981,r13		! source line 1981
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_674 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_674  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1982,r13		! source line 1982
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1983,r13		! source line 1983
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1984,r13		! source line 1984
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_675 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_675  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1985,r13		! source line 1985
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1986,r13		! source line 1986
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1987,r13		! source line 1987
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1988,r13		! source line 1988
	mov	"\0\0RE",r10
!   ReturnResult: 8000  (sizeInBytes=4)
	mov	8000,r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_676
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_677
	.word	8
	.word	4
	.word	_Label_678
	.word	12
	.word	4
	.word	_Label_679
	.word	-12
	.word	4
	.word	_Label_680
	.word	-16
	.word	4
	.word	_Label_681
	.word	-20
	.word	4
	.word	0
_Label_676:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_677:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_678:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_674\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_673\0"
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
	mov	3,r1
_Label_3028:
	push	r0
	sub	r1,1,r1
	bne	_Label_3028
	mov	1993,r13		! source line 1993
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_682 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_682  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1994,r13		! source line 1994
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1995,r13		! source line 1995
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_683 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_683  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1996,r13		! source line 1996
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1997,r13		! source line 1997
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1998,r13		! source line 1998
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1998,r13		! source line 1998
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_684
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_685
	.word	8
	.word	4
	.word	_Label_686
	.word	-12
	.word	4
	.word	_Label_687
	.word	-16
	.word	4
	.word	0
_Label_684:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_685:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_686:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_687:
	.byte	'?'
	.ascii	"_temp_682\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_212_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_212_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3029:
	push	r0
	sub	r1,1,r1
	bne	_Label_3029
	mov	2588,r13		! source line 2588
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2590,r13		! source line 2590
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2591,r13		! source line 2591
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2592,r13		! source line 2592
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_688 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_688  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2593,r13		! source line 2593
	mov	"\0\0AS",r10
!   _temp_689 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_689) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_691 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_691) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_690 = *_temp_691  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_689 = _temp_690  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2594,r13		! source line 2594
	mov	"\0\0AS",r10
!   _temp_692 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_692) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_694 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_694) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_693 = *_temp_694  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_692 = _temp_693  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2595,r13		! source line 2595
	mov	"\0\0AS",r10
!   _temp_695 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_695) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_697 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_697) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_696 = *_temp_697  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_695 = _temp_696  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2595,r13		! source line 2595
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_212_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_698
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_699
	.word	8
	.word	4
	.word	_Label_700
	.word	12
	.word	4
	.word	_Label_701
	.word	-16
	.word	4
	.word	_Label_702
	.word	-9
	.word	1
	.word	_Label_703
	.word	-20
	.word	4
	.word	_Label_704
	.word	-24
	.word	4
	.word	_Label_705
	.word	-10
	.word	1
	.word	_Label_706
	.word	-28
	.word	4
	.word	_Label_707
	.word	-32
	.word	4
	.word	_Label_708
	.word	-11
	.word	1
	.word	_Label_709
	.word	-36
	.word	4
	.word	_Label_710
	.word	-12
	.word	1
	.word	_Label_711
	.word	-40
	.word	4
	.word	_Label_712
	.word	-44
	.word	4
	.word	0
_Label_698:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_699:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_700:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_697\0"
	.align
_Label_702:
	.byte	'C'
	.ascii	"_temp_696\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_695\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_694\0"
	.align
_Label_705:
	.byte	'C'
	.ascii	"_temp_693\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_692\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_708:
	.byte	'C'
	.ascii	"_temp_690\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_710:
	.byte	'C'
	.ascii	"_temp_688\0"
	.align
_Label_711:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_712:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_211_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_211_printFCB,r1
	push	r1
	mov	3,r1
_Label_3030:
	push	r0
	sub	r1,1,r1
	bne	_Label_3030
	mov	2598,r13		! source line 2598
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_714 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_713 = *_temp_714  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_713  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2599,r13		! source line 2599
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2600,r13		! source line 2600
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2600,r13		! source line 2600
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_211_printFCB:
	.word	_sourceFileName
	.word	_Label_715
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_716
	.word	8
	.word	4
	.word	_Label_717
	.word	-12
	.word	4
	.word	_Label_718
	.word	-16
	.word	4
	.word	0
_Label_715:
	.ascii	"printFCB\0"
	.align
_Label_716:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_714\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_713\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_210_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_210_printOpen,r1
	push	r1
	mov	4,r1
_Label_3031:
	push	r0
	sub	r1,1,r1
	bne	_Label_3031
	mov	2603,r13		! source line 2603
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_719 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_719  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2604,r13		! source line 2604
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_720 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_720  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2605,r13		! source line 2605
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_721 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_721  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2606,r13		! source line 2606
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2607,r13		! source line 2607
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2607,r13		! source line 2607
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_210_printOpen:
	.word	_sourceFileName
	.word	_Label_722
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_723
	.word	8
	.word	4
	.word	_Label_724
	.word	-12
	.word	4
	.word	_Label_725
	.word	-16
	.word	4
	.word	_Label_726
	.word	-20
	.word	4
	.word	0
_Label_722:
	.ascii	"printOpen\0"
	.align
_Label_723:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_721\0"
	.align
_Label_725:
	.byte	'?'
	.ascii	"_temp_720\0"
	.align
_Label_726:
	.byte	'?'
	.ascii	"_temp_719\0"
	.align
! 
! ===============  FUNCTION InitFirstProcess  ===============
! 
_P_Kernel_InitFirstProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitFirstProcess,r1
	push	r1
	mov	8,r1
_Label_3032:
	push	r0
	sub	r1,1,r1
	bne	_Label_3032
	mov	2868,r13		! source line 2868
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2878,r13		! source line 2878
	mov	"\0\0AS",r10
	mov	2878,r13		! source line 2878
	mov	"\0\0SE",r10
!   _temp_727 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-24]
!   Send message GetANewThread
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	2879,r13		! source line 2879
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_728 = th + 72
	load	[r14+-28],r1
	add	r1,72,r1
	store	r1,[r14+-20]
!   _temp_729 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_728 = _temp_729  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2880,r13		! source line 2880
	mov	"\0\0SE",r10
!   _temp_730 = _function_209_StartUserProcess
	set	_function_209_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_730  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2880,r13		! source line 2880
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_731
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_732
	.word	-12
	.word	4
	.word	_Label_733
	.word	-16
	.word	4
	.word	_Label_734
	.word	-20
	.word	4
	.word	_Label_735
	.word	-24
	.word	4
	.word	_Label_736
	.word	-28
	.word	4
	.word	0
_Label_731:
	.ascii	"InitFirstProcess\0"
	.align
_Label_732:
	.byte	'?'
	.ascii	"_temp_730\0"
	.align
_Label_733:
	.byte	'?'
	.ascii	"_temp_729\0"
	.align
_Label_734:
	.byte	'?'
	.ascii	"_temp_728\0"
	.align
_Label_735:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_736:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_209_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_209_StartUserProcess,r1
	push	r1
	mov	24,r1
_Label_3033:
	push	r0
	sub	r1,1,r1
	bne	_Label_3033
	mov	2885,r13		! source line 2885
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2897,r13		! source line 2897
	mov	"\0\0AS",r10
	mov	2897,r13		! source line 2897
	mov	"\0\0SE",r10
!   _temp_737 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-64]
!   Send message GetANewProcess
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=PCB  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-68]
! ASSIGNMENT STATEMENT...
	mov	2898,r13		! source line 2898
	mov	"\0\0AS",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_738 = PCB + 24
	load	[r14+-68],r1
	add	r1,24,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_738 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-60],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2899,r13		! source line 2899
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_739 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_739 = PCB  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r14+-56],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2906,r13		! source line 2906
	mov	"\0\0AS",r10
	mov	2906,r13		! source line 2906
	mov	"\0\0SE",r10
!   _temp_740 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-52]
!   _temp_741 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_740  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=f_Open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! IF STATEMENT...
	mov	2907,r13		! source line 2907
	mov	"\0\0IF",r10
!   if intIsZero (f_Open) then goto _Label_742
	load	[r14+-72],r1
	cmp	r1,r0
	be	_Label_742
	jmp	_Label_743
_Label_742:
! THEN...
	mov	2908,r13		! source line 2908
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_744 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_744  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2908,r13		! source line 2908
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_743:
! ASSIGNMENT STATEMENT...
	mov	2911,r13		! source line 2911
	mov	"\0\0AS",r10
!   if intIsZero (PCB) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_745 = PCB + 32
	load	[r14+-68],r1
	add	r1,32,r1
	store	r1,[r14+-40]
!   logical_addrSpace = _temp_745		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-80]
! ASSIGNMENT STATEMENT...
	mov	2912,r13		! source line 2912
	mov	"\0\0AS",r10
	mov	2912,r13		! source line 2912
	mov	"\0\0SE",r10
!   if intIsZero (f_Open) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=logical_addrSpace  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! IF STATEMENT...
	mov	2913,r13		! source line 2913
	mov	"\0\0IF",r10
!   if initPC != -1 then goto _Label_747		(int)
	load	[r14+-76],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_747
!	jmp	_Label_746
_Label_746:
! THEN...
	mov	2914,r13		! source line 2914
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_748 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_748  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2914,r13		! source line 2914
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_747:
! SEND STATEMENT...
	mov	2917,r13		! source line 2917
	mov	"\0\0SE",r10
!   _temp_749 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=f_Open  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2922,r13		! source line 2922
	mov	"\0\0AS",r10
!   if intIsZero (logical_addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_751 = logical_addrSpace + 4
	load	[r14+-80],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: _temp_750 = *_temp_751  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   initUserStackTop = _temp_750 * 8192		(int)
	load	[r14+-28],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	2927,r13		! source line 2927
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_752 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_752 [999 ] into _temp_753
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
!   initSystemStackTop = _temp_753		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	2931,r13		! source line 2931
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2931,r13		! source line 2931
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
! SEND STATEMENT...
	mov	2932,r13		! source line 2932
	mov	"\0\0SE",r10
!   if intIsZero (logical_addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message SetToThisPageTable
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2933,r13		! source line 2933
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_754 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_754 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-12],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+8]
!   Call the function
	mov	2936,r13		! source line 2936
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	2936,r13		! source line 2936
	mov	"\0\0RE",r10
	add	r15,100,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_209_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_755
	.word	4		! total size of parameters
	.word	96		! frame size = 96
	.word	_Label_756
	.word	8
	.word	4
	.word	_Label_757
	.word	-12
	.word	4
	.word	_Label_758
	.word	-16
	.word	4
	.word	_Label_759
	.word	-20
	.word	4
	.word	_Label_760
	.word	-24
	.word	4
	.word	_Label_761
	.word	-28
	.word	4
	.word	_Label_762
	.word	-32
	.word	4
	.word	_Label_763
	.word	-36
	.word	4
	.word	_Label_764
	.word	-40
	.word	4
	.word	_Label_765
	.word	-44
	.word	4
	.word	_Label_766
	.word	-48
	.word	4
	.word	_Label_767
	.word	-52
	.word	4
	.word	_Label_768
	.word	-56
	.word	4
	.word	_Label_769
	.word	-60
	.word	4
	.word	_Label_770
	.word	-64
	.word	4
	.word	_Label_771
	.word	-68
	.word	4
	.word	_Label_772
	.word	-72
	.word	4
	.word	_Label_773
	.word	-76
	.word	4
	.word	_Label_774
	.word	-80
	.word	4
	.word	_Label_775
	.word	-84
	.word	4
	.word	_Label_776
	.word	-88
	.word	4
	.word	_Label_777
	.word	-92
	.word	4
	.word	0
_Label_755:
	.ascii	"StartUserProcess\0"
	.align
_Label_756:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_757:
	.byte	'?'
	.ascii	"_temp_754\0"
	.align
_Label_758:
	.byte	'?'
	.ascii	"_temp_753\0"
	.align
_Label_759:
	.byte	'?'
	.ascii	"_temp_752\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_762:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_763:
	.byte	'?'
	.ascii	"_temp_748\0"
	.align
_Label_764:
	.byte	'?'
	.ascii	"_temp_745\0"
	.align
_Label_765:
	.byte	'?'
	.ascii	"_temp_744\0"
	.align
_Label_766:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_739\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_771:
	.byte	'P'
	.ascii	"PCB\0"
	.align
_Label_772:
	.byte	'P'
	.ascii	"f_Open\0"
	.align
_Label_773:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_774:
	.byte	'P'
	.ascii	"logical_addrSpace\0"
	.align
_Label_775:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_776:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_777:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_778
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_778:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_779
	.word	_sourceFileName
	.word	124		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_779:
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
_Label_3034:
	push	r0
	sub	r1,1,r1
	bne	_Label_3034
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_781		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_781
!	jmp	_Label_780
_Label_780:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_782 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_782  sizeInBytes=4
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
_Label_781:
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
	.word	_Label_784
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_785
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_786
	.word	12
	.word	4
	.word	_Label_787
	.word	-12
	.word	4
	.word	_Label_788
	.word	-16
	.word	4
	.word	0
_Label_784:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_785:
	.ascii	"Pself\0"
	.align
_Label_786:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_782\0"
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
_Label_3035:
	push	r0
	sub	r1,1,r1
	bne	_Label_3035
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
!   if count != 2147483647 then goto _Label_790		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_790
!	jmp	_Label_789
_Label_789:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_791 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_791  sizeInBytes=4
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
_Label_790:
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
!   if count > 0 then goto _Label_793		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_793
!	jmp	_Label_792
_Label_792:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_794 = &waitingThreads
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
!   _temp_795 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_795 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_796 = &_P_Kernel_readyList
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
_Label_793:
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
	.word	_Label_797
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_798
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_799
	.word	-12
	.word	4
	.word	_Label_800
	.word	-16
	.word	4
	.word	_Label_801
	.word	-20
	.word	4
	.word	_Label_802
	.word	-24
	.word	4
	.word	_Label_803
	.word	-28
	.word	4
	.word	_Label_804
	.word	-32
	.word	4
	.word	0
_Label_797:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_798:
	.ascii	"Pself\0"
	.align
_Label_799:
	.byte	'?'
	.ascii	"_temp_796\0"
	.align
_Label_800:
	.byte	'?'
	.ascii	"_temp_795\0"
	.align
_Label_801:
	.byte	'?'
	.ascii	"_temp_794\0"
	.align
_Label_802:
	.byte	'?'
	.ascii	"_temp_791\0"
	.align
_Label_803:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_804:
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
_Label_3036:
	push	r0
	sub	r1,1,r1
	bne	_Label_3036
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
!   if count != -2147483648 then goto _Label_806		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_806
!	jmp	_Label_805
_Label_805:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_807 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_807  sizeInBytes=4
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
_Label_806:
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
!   if count >= 0 then goto _Label_809		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_809
!	jmp	_Label_808
_Label_808:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_810 = &waitingThreads
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
_Label_809:
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
	.word	_Label_811
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_812
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_813
	.word	-12
	.word	4
	.word	_Label_814
	.word	-16
	.word	4
	.word	_Label_815
	.word	-20
	.word	4
	.word	0
_Label_811:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_812:
	.ascii	"Pself\0"
	.align
_Label_813:
	.byte	'?'
	.ascii	"_temp_810\0"
	.align
_Label_814:
	.byte	'?'
	.ascii	"_temp_807\0"
	.align
_Label_815:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_816
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_816:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_817
	.word	_sourceFileName
	.word	137		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_817:
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
_Label_3037:
	push	r0
	sub	r1,1,r1
	bne	_Label_3037
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
	.word	_Label_819
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_820
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_821
	.word	-12
	.word	4
	.word	0
_Label_819:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_820:
	.ascii	"Pself\0"
	.align
_Label_821:
	.byte	'?'
	.ascii	"_temp_818\0"
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
_Label_3038:
	push	r0
	sub	r1,1,r1
	bne	_Label_3038
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_823		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_823
!	jmp	_Label_822
_Label_822:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_824 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_824  sizeInBytes=4
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
_Label_823:
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
!   if heldBy == 0 then goto _Label_828		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_828
!   _temp_827 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_829
_Label_828:
!   _temp_827 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_829:
!   if _temp_827 then goto _Label_826 else goto _Label_825
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_825
	jmp	_Label_826
_Label_825:
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
	jmp	_Label_830
_Label_826:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_831 = &waitingThreads
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
_Label_830:
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
	.word	_Label_832
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_833
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_834
	.word	-16
	.word	4
	.word	_Label_835
	.word	-9
	.word	1
	.word	_Label_836
	.word	-20
	.word	4
	.word	_Label_837
	.word	-24
	.word	4
	.word	0
_Label_832:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_833:
	.ascii	"Pself\0"
	.align
_Label_834:
	.byte	'?'
	.ascii	"_temp_831\0"
	.align
_Label_835:
	.byte	'C'
	.ascii	"_temp_827\0"
	.align
_Label_836:
	.byte	'?'
	.ascii	"_temp_824\0"
	.align
_Label_837:
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
_Label_3039:
	push	r0
	sub	r1,1,r1
	bne	_Label_3039
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_839		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_839
!	jmp	_Label_838
_Label_838:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_840 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_840  sizeInBytes=4
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
_Label_839:
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
!   _temp_841 = &waitingThreads
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
!   if t == 0 then goto _Label_843		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_843
!	jmp	_Label_842
_Label_842:
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
!   _temp_844 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_844 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_845 = &_P_Kernel_readyList
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
	jmp	_Label_846
_Label_843:
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
_Label_846:
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
	.word	_Label_847
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_848
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_849
	.word	-12
	.word	4
	.word	_Label_850
	.word	-16
	.word	4
	.word	_Label_851
	.word	-20
	.word	4
	.word	_Label_852
	.word	-24
	.word	4
	.word	_Label_853
	.word	-28
	.word	4
	.word	_Label_854
	.word	-32
	.word	4
	.word	0
_Label_847:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_848:
	.ascii	"Pself\0"
	.align
_Label_849:
	.byte	'?'
	.ascii	"_temp_845\0"
	.align
_Label_850:
	.byte	'?'
	.ascii	"_temp_844\0"
	.align
_Label_851:
	.byte	'?'
	.ascii	"_temp_841\0"
	.align
_Label_852:
	.byte	'?'
	.ascii	"_temp_840\0"
	.align
_Label_853:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_854:
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
_Label_3040:
	push	r0
	sub	r1,1,r1
	bne	_Label_3040
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_857		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_857
!	jmp	_Label_856
_Label_856:
!   _temp_855 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_858
_Label_857:
!   _temp_855 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_858:
!   ReturnResult: _temp_855  (sizeInBytes=1)
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
	.word	_Label_859
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_860
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_861
	.word	-9
	.word	1
	.word	0
_Label_859:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_860:
	.ascii	"Pself\0"
	.align
_Label_861:
	.byte	'C'
	.ascii	"_temp_855\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_862
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_862:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_863
	.word	_sourceFileName
	.word	151		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_863:
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
_Label_3041:
	push	r0
	sub	r1,1,r1
	bne	_Label_3041
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
	.word	_Label_865
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_866
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_867
	.word	-12
	.word	4
	.word	0
_Label_865:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_866:
	.ascii	"Pself\0"
	.align
_Label_867:
	.byte	'?'
	.ascii	"_temp_864\0"
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
_Label_3042:
	push	r0
	sub	r1,1,r1
	bne	_Label_3042
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
!   Retrieve Result: targetName=_temp_870  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_870 then goto _Label_869 else goto _Label_868
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_868
	jmp	_Label_869
_Label_868:
! THEN...
	mov	390,r13		! source line 390
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_871 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_871  sizeInBytes=4
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
_Label_869:
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
!   _temp_872 = &waitingThreads
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
	.word	_Label_873
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_874
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_875
	.word	12
	.word	4
	.word	_Label_876
	.word	-16
	.word	4
	.word	_Label_877
	.word	-20
	.word	4
	.word	_Label_878
	.word	-9
	.word	1
	.word	_Label_879
	.word	-24
	.word	4
	.word	0
_Label_873:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_874:
	.ascii	"Pself\0"
	.align
_Label_875:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_876:
	.byte	'?'
	.ascii	"_temp_872\0"
	.align
_Label_877:
	.byte	'?'
	.ascii	"_temp_871\0"
	.align
_Label_878:
	.byte	'C'
	.ascii	"_temp_870\0"
	.align
_Label_879:
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
_Label_3043:
	push	r0
	sub	r1,1,r1
	bne	_Label_3043
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
!   Retrieve Result: targetName=_temp_882  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_882 then goto _Label_881 else goto _Label_880
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_880
	jmp	_Label_881
_Label_880:
! THEN...
	mov	407,r13		! source line 407
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_883 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_883  sizeInBytes=4
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
_Label_881:
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
!   _temp_884 = &waitingThreads
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
!   if t == 0 then goto _Label_886		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_886
!	jmp	_Label_885
_Label_885:
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
!   _temp_887 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_887 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0SE",r10
!   _temp_888 = &_P_Kernel_readyList
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
_Label_886:
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
	.word	_Label_889
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_890
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_891
	.word	12
	.word	4
	.word	_Label_892
	.word	-16
	.word	4
	.word	_Label_893
	.word	-20
	.word	4
	.word	_Label_894
	.word	-24
	.word	4
	.word	_Label_895
	.word	-28
	.word	4
	.word	_Label_896
	.word	-9
	.word	1
	.word	_Label_897
	.word	-32
	.word	4
	.word	_Label_898
	.word	-36
	.word	4
	.word	0
_Label_889:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_890:
	.ascii	"Pself\0"
	.align
_Label_891:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_892:
	.byte	'?'
	.ascii	"_temp_888\0"
	.align
_Label_893:
	.byte	'?'
	.ascii	"_temp_887\0"
	.align
_Label_894:
	.byte	'?'
	.ascii	"_temp_884\0"
	.align
_Label_895:
	.byte	'?'
	.ascii	"_temp_883\0"
	.align
_Label_896:
	.byte	'C'
	.ascii	"_temp_882\0"
	.align
_Label_897:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_898:
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
_Label_3044:
	push	r0
	sub	r1,1,r1
	bne	_Label_3044
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
!   Retrieve Result: targetName=_temp_901  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_901 then goto _Label_900 else goto _Label_899
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_899
	jmp	_Label_900
_Label_899:
! THEN...
	mov	425,r13		! source line 425
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_902 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_902  sizeInBytes=4
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
_Label_900:
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
_Label_903:
!	jmp	_Label_904
_Label_904:
	mov	428,r13		! source line 428
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0AS",r10
	mov	429,r13		! source line 429
	mov	"\0\0SE",r10
!   _temp_906 = &waitingThreads
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
!   if intIsZero (t) then goto _Label_907
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_907
	jmp	_Label_908
_Label_907:
! THEN...
	mov	431,r13		! source line 431
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0BR",r10
	jmp	_Label_905
! END IF...
_Label_908:
! ASSIGNMENT STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_909 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_909 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0SE",r10
!   _temp_910 = &_P_Kernel_readyList
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
	jmp	_Label_903
_Label_905:
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
	.word	_Label_911
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_912
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_913
	.word	12
	.word	4
	.word	_Label_914
	.word	-16
	.word	4
	.word	_Label_915
	.word	-20
	.word	4
	.word	_Label_916
	.word	-24
	.word	4
	.word	_Label_917
	.word	-28
	.word	4
	.word	_Label_918
	.word	-9
	.word	1
	.word	_Label_919
	.word	-32
	.word	4
	.word	_Label_920
	.word	-36
	.word	4
	.word	0
_Label_911:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_912:
	.ascii	"Pself\0"
	.align
_Label_913:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_914:
	.byte	'?'
	.ascii	"_temp_910\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_909\0"
	.align
_Label_916:
	.byte	'?'
	.ascii	"_temp_906\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_902\0"
	.align
_Label_918:
	.byte	'C'
	.ascii	"_temp_901\0"
	.align
_Label_919:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_920:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS HoareCondition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareCondition:
	.word	_Label_921
	jmp	_Method_P_Kernel_HoareCondition_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareCondition_2	! 8:	Wait
	jmp	_Method_P_Kernel_HoareCondition_3	! 12:	Signal
	.word	0
! 
! Class descriptor:
! 
_Label_921:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_922
	.word	_sourceFileName
	.word	164		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_HoareCondition
	.word	_P_System_Object
	.word	0
_Label_922:
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
_Label_3045:
	push	r0
	sub	r1,1,r1
	bne	_Label_3045
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
	.word	_Label_924
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_925
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_926
	.word	-12
	.word	4
	.word	0
_Label_924:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_925:
	.ascii	"Pself\0"
	.align
_Label_926:
	.byte	'?'
	.ascii	"_temp_923\0"
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
_Label_3046:
	push	r0
	sub	r1,1,r1
	bne	_Label_3046
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
!   Retrieve Result: targetName=_temp_929  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_929 then goto _Label_928 else goto _Label_927
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_927
	jmp	_Label_928
_Label_927:
! THEN...
	mov	459,r13		! source line 459
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_930 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_930  sizeInBytes=4
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
_Label_928:
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
!   _temp_931 = &WaitingThreads
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
	.word	_Label_932
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_933
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_934
	.word	12
	.word	4
	.word	_Label_935
	.word	-16
	.word	4
	.word	_Label_936
	.word	-20
	.word	4
	.word	_Label_937
	.word	-9
	.word	1
	.word	_Label_938
	.word	-24
	.word	4
	.word	0
_Label_932:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_933:
	.ascii	"Pself\0"
	.align
_Label_934:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_935:
	.byte	'?'
	.ascii	"_temp_931\0"
	.align
_Label_936:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_937:
	.byte	'C'
	.ascii	"_temp_929\0"
	.align
_Label_938:
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
_Label_3047:
	push	r0
	sub	r1,1,r1
	bne	_Label_3047
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
!   Retrieve Result: targetName=_temp_941  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_941 then goto _Label_940 else goto _Label_939
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_939
	jmp	_Label_940
_Label_939:
! THEN...
	mov	474,r13		! source line 474
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_942 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_942  sizeInBytes=4
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
_Label_940:
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
!   _temp_943 = &WaitingThreads
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
!   if t == 0 then goto _Label_945		(int)
	load	[r14+-40],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_945
!	jmp	_Label_944
_Label_944:
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
!   _temp_946 = t + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_946 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-24],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0SE",r10
!   _temp_947 = &_P_Kernel_readyList
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
_Label_945:
! ASSIGNMENT STATEMENT...
	mov	486,r13		! source line 486
	mov	"\0\0AS",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_948 = mutex + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_948 = t  (sizeInBytes=4)
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
	.word	_Label_949
	.word	8		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_950
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_951
	.word	12
	.word	4
	.word	_Label_952
	.word	-16
	.word	4
	.word	_Label_953
	.word	-20
	.word	4
	.word	_Label_954
	.word	-24
	.word	4
	.word	_Label_955
	.word	-28
	.word	4
	.word	_Label_956
	.word	-32
	.word	4
	.word	_Label_957
	.word	-9
	.word	1
	.word	_Label_958
	.word	-36
	.word	4
	.word	_Label_959
	.word	-40
	.word	4
	.word	0
_Label_949:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_950:
	.ascii	"Pself\0"
	.align
_Label_951:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_952:
	.byte	'?'
	.ascii	"_temp_948\0"
	.align
_Label_953:
	.byte	'?'
	.ascii	"_temp_947\0"
	.align
_Label_954:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
_Label_955:
	.byte	'?'
	.ascii	"_temp_943\0"
	.align
_Label_956:
	.byte	'?'
	.ascii	"_temp_942\0"
	.align
_Label_957:
	.byte	'C'
	.ascii	"_temp_941\0"
	.align
_Label_958:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_959:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_960
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
_Label_960:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_961
	.word	_sourceFileName
	.word	176		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_961:
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
_Label_3048:
	push	r0
	sub	r1,1,r1
	bne	_Label_3048
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
!   _temp_962 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_962) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_962 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	508,r13		! source line 508
	mov	"\0\0AS",r10
!   _temp_963 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_963 [0 ] into _temp_964
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
!   Data Move: *_temp_964 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	509,r13		! source line 509
	mov	"\0\0AS",r10
!   _temp_965 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_965 [999 ] into _temp_966
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
!   Data Move: *_temp_966 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	510,r13		! source line 510
	mov	"\0\0AS",r10
!   _temp_967 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_967 [999 ] into _temp_968
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
!   stackTop = _temp_968		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	511,r13		! source line 511
	mov	"\0\0AS",r10
!   _temp_969 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_971 = &_temp_970
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_971 = _temp_971 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_973:
!   Data Move: *_temp_971 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_971 = _temp_971 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_972 = _temp_972 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_972) then goto _Label_973
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_973
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_974 = &_temp_970
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3049
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3049:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_969 = *_temp_974  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3050:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3050
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
!   _temp_975 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_977 = &_temp_976
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_977 = _temp_977 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_979:
!   Data Move: *_temp_977 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_977 = _temp_977 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_978 = _temp_978 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_978) then goto _Label_979
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_979
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_980 = &_temp_976
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3051
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3051:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_975 = *_temp_980  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3052:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3052
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
	.word	_Label_981
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_982
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_983
	.word	12
	.word	4
	.word	_Label_984
	.word	-12
	.word	4
	.word	_Label_985
	.word	-16
	.word	4
	.word	_Label_986
	.word	-20
	.word	4
	.word	_Label_987
	.word	-84
	.word	64
	.word	_Label_988
	.word	-88
	.word	4
	.word	_Label_989
	.word	-92
	.word	4
	.word	_Label_990
	.word	-96
	.word	4
	.word	_Label_991
	.word	-100
	.word	4
	.word	_Label_992
	.word	-156
	.word	56
	.word	_Label_993
	.word	-160
	.word	4
	.word	_Label_994
	.word	-164
	.word	4
	.word	_Label_995
	.word	-168
	.word	4
	.word	_Label_996
	.word	-172
	.word	4
	.word	_Label_997
	.word	-176
	.word	4
	.word	_Label_998
	.word	-180
	.word	4
	.word	_Label_999
	.word	-184
	.word	4
	.word	_Label_1000
	.word	-188
	.word	4
	.word	0
_Label_981:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_982:
	.ascii	"Pself\0"
	.align
_Label_983:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_984:
	.byte	'?'
	.ascii	"_temp_980\0"
	.align
_Label_985:
	.byte	'?'
	.ascii	"_temp_978\0"
	.align
_Label_986:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
_Label_987:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_988:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_989:
	.byte	'?'
	.ascii	"_temp_974\0"
	.align
_Label_990:
	.byte	'?'
	.ascii	"_temp_972\0"
	.align
_Label_991:
	.byte	'?'
	.ascii	"_temp_971\0"
	.align
_Label_992:
	.byte	'?'
	.ascii	"_temp_970\0"
	.align
_Label_993:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
_Label_994:
	.byte	'?'
	.ascii	"_temp_968\0"
	.align
_Label_995:
	.byte	'?'
	.ascii	"_temp_967\0"
	.align
_Label_996:
	.byte	'?'
	.ascii	"_temp_966\0"
	.align
_Label_997:
	.byte	'?'
	.ascii	"_temp_965\0"
	.align
_Label_998:
	.byte	'?'
	.ascii	"_temp_964\0"
	.align
_Label_999:
	.byte	'?'
	.ascii	"_temp_963\0"
	.align
_Label_1000:
	.byte	'?'
	.ascii	"_temp_962\0"
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
_Label_3053:
	push	r0
	sub	r1,1,r1
	bne	_Label_3053
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
!   _temp_1001 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1001  (sizeInBytes=4)
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
!   _temp_1003 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1002  sizeInBytes=4
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
	.word	_Label_1004
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1005
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1006
	.word	12
	.word	4
	.word	_Label_1007
	.word	16
	.word	4
	.word	_Label_1008
	.word	-12
	.word	4
	.word	_Label_1009
	.word	-16
	.word	4
	.word	_Label_1010
	.word	-20
	.word	4
	.word	_Label_1011
	.word	-24
	.word	4
	.word	_Label_1012
	.word	-28
	.word	4
	.word	0
_Label_1004:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1005:
	.ascii	"Pself\0"
	.align
_Label_1006:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1007:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1008:
	.byte	'?'
	.ascii	"_temp_1003\0"
	.align
_Label_1009:
	.byte	'?'
	.ascii	"_temp_1002\0"
	.align
_Label_1010:
	.byte	'?'
	.ascii	"_temp_1001\0"
	.align
_Label_1011:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1012:
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
_Label_3054:
	push	r0
	sub	r1,1,r1
	bne	_Label_3054
	mov	542,r13		! source line 542
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	558,r13		! source line 558
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1015 == _P_Kernel_currentThread then goto _Label_1014		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1014
!	jmp	_Label_1013
_Label_1013:
! THEN...
	mov	559,r13		! source line 559
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1016 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1016  sizeInBytes=4
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
_Label_1014:
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
!   _temp_1017 = &_P_Kernel_readyList
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
!   if nextTh == 0 then goto _Label_1019		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1019
!	jmp	_Label_1018
_Label_1018:
! THEN...
	mov	570,r13		! source line 570
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1021		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1021
!	jmp	_Label_1020
_Label_1020:
! THEN...
	mov	571,r13		! source line 571
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1022 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1022  sizeInBytes=4
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
_Label_1021:
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
!   _temp_1024 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1023  sizeInBytes=4
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
_Label_1019:
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
	.word	_Label_1025
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1026
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1027
	.word	-12
	.word	4
	.word	_Label_1028
	.word	-16
	.word	4
	.word	_Label_1029
	.word	-20
	.word	4
	.word	_Label_1030
	.word	-24
	.word	4
	.word	_Label_1031
	.word	-28
	.word	4
	.word	_Label_1032
	.word	-32
	.word	4
	.word	_Label_1033
	.word	-36
	.word	4
	.word	_Label_1034
	.word	-40
	.word	4
	.word	_Label_1035
	.word	-44
	.word	4
	.word	0
_Label_1025:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1026:
	.ascii	"Pself\0"
	.align
_Label_1027:
	.byte	'?'
	.ascii	"_temp_1024\0"
	.align
_Label_1028:
	.byte	'?'
	.ascii	"_temp_1023\0"
	.align
_Label_1029:
	.byte	'?'
	.ascii	"_temp_1022\0"
	.align
_Label_1030:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
_Label_1031:
	.byte	'?'
	.ascii	"_temp_1016\0"
	.align
_Label_1032:
	.byte	'?'
	.ascii	"_temp_1015\0"
	.align
_Label_1033:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1034:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1035:
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
_Label_3055:
	push	r0
	sub	r1,1,r1
	bne	_Label_3055
	mov	582,r13		! source line 582
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	594,r13		! source line 594
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1037		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1037
!	jmp	_Label_1036
_Label_1036:
! THEN...
	mov	595,r13		! source line 595
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1038 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1038  sizeInBytes=4
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
_Label_1037:
! IF STATEMENT...
	mov	598,r13		! source line 598
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1041 == _P_Kernel_currentThread then goto _Label_1040		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1040
!	jmp	_Label_1039
_Label_1039:
! THEN...
	mov	599,r13		! source line 599
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1042 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1042  sizeInBytes=4
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
_Label_1040:
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
!   _temp_1043 = &_P_Kernel_readyList
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
!   if intIsZero (nextTh) then goto _Label_1044
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1044
	jmp	_Label_1045
_Label_1044:
! THEN...
	mov	607,r13		! source line 607
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1046 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1046  sizeInBytes=4
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
_Label_1045:
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
	.word	_Label_1047
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1048
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1049
	.word	-12
	.word	4
	.word	_Label_1050
	.word	-16
	.word	4
	.word	_Label_1051
	.word	-20
	.word	4
	.word	_Label_1052
	.word	-24
	.word	4
	.word	_Label_1053
	.word	-28
	.word	4
	.word	_Label_1054
	.word	-32
	.word	4
	.word	0
_Label_1047:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1048:
	.ascii	"Pself\0"
	.align
_Label_1049:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1050:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1051:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1052:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1053:
	.byte	'?'
	.ascii	"_temp_1038\0"
	.align
_Label_1054:
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
_Label_3056:
	push	r0
	sub	r1,1,r1
	bne	_Label_3056
	mov	614,r13		! source line 614
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	620,r13		! source line 620
	mov	"\0\0IF",r10
!   _temp_1058 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1058 [0 ] into _temp_1059
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
!   Data Move: _temp_1057 = *_temp_1059  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1057 == 606348324 then goto _Label_1056		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1056
!	jmp	_Label_1055
_Label_1055:
! THEN...
	mov	621,r13		! source line 621
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1060 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1060  sizeInBytes=4
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
	jmp	_Label_1061
_Label_1056:
! ELSE...
	mov	622,r13		! source line 622
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	622,r13		! source line 622
	mov	"\0\0IF",r10
!   _temp_1065 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1065 [999 ] into _temp_1066
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
!   Data Move: _temp_1064 = *_temp_1066  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1064 == 606348324 then goto _Label_1063		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1063
!	jmp	_Label_1062
_Label_1062:
! THEN...
	mov	623,r13		! source line 623
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1067 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1067  sizeInBytes=4
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
_Label_1063:
! END IF...
_Label_1061:
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
	.word	_Label_1068
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1069
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1070
	.word	-12
	.word	4
	.word	_Label_1071
	.word	-16
	.word	4
	.word	_Label_1072
	.word	-20
	.word	4
	.word	_Label_1073
	.word	-24
	.word	4
	.word	_Label_1074
	.word	-28
	.word	4
	.word	_Label_1075
	.word	-32
	.word	4
	.word	_Label_1076
	.word	-36
	.word	4
	.word	_Label_1077
	.word	-40
	.word	4
	.word	0
_Label_1068:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1069:
	.ascii	"Pself\0"
	.align
_Label_1070:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1071:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1072:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1073:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1074:
	.byte	'?'
	.ascii	"_temp_1060\0"
	.align
_Label_1075:
	.byte	'?'
	.ascii	"_temp_1059\0"
	.align
_Label_1076:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1077:
	.byte	'?'
	.ascii	"_temp_1057\0"
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
_Label_3057:
	push	r0
	sub	r1,1,r1
	bne	_Label_3057
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
!   _temp_1078 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1078  sizeInBytes=4
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
!   _temp_1079 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1079  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	638,r13		! source line 638
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1080  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	639,r13		! source line 639
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1081 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1081  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	640,r13		! source line 640
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1082 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1082  sizeInBytes=4
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
!   _temp_1087 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1088 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1087  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1083:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1088 then goto _Label_1086		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1086
_Label_1084:
	mov	642,r13		! source line 642
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1089 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1089  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	643,r13		! source line 643
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1090 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1090  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	644,r13		! source line 644
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1091 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1091  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	645,r13		! source line 645
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1093 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1093 [i ] into _temp_1094
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
!   Data Move: _temp_1092 = *_temp_1094  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1092  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	646,r13		! source line 646
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1095 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1095  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	647,r13		! source line 647
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1097 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1097 [i ] into _temp_1098
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
!   Data Move: _temp_1096 = *_temp_1098  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1096  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	648,r13		! source line 648
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1099 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1099  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	649,r13		! source line 649
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1085:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1083
! END FOR
_Label_1086:
! CALL STATEMENT...
!   _temp_1100 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-116]
!   _temp_1101 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1100  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1101  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	651,r13		! source line 651
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1102 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-108]
!   _temp_1104 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1104 [0 ] into _temp_1105
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
!   _temp_1103 = _temp_1105		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1102  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1103  sizeInBytes=4
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
	be	_Label_1108
	cmp	r1,2
	be	_Label_1109
	cmp	r1,3
	be	_Label_1110
	cmp	r1,4
	be	_Label_1111
	cmp	r1,5
	be	_Label_1112
	jmp	_Label_1106
! CASE 1...
_Label_1108:
! CALL STATEMENT...
!   _temp_1113 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1113  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	655,r13		! source line 655
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	656,r13		! source line 656
	mov	"\0\0BR",r10
	jmp	_Label_1107
! CASE 2...
_Label_1109:
! CALL STATEMENT...
!   _temp_1114 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1114  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	659,r13		! source line 659
	mov	"\0\0BR",r10
	jmp	_Label_1107
! CASE 3...
_Label_1110:
! CALL STATEMENT...
!   _temp_1115 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1115  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	662,r13		! source line 662
	mov	"\0\0BR",r10
	jmp	_Label_1107
! CASE 4...
_Label_1111:
! CALL STATEMENT...
!   _temp_1116 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1116  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	664,r13		! source line 664
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	665,r13		! source line 665
	mov	"\0\0BR",r10
	jmp	_Label_1107
! CASE 5...
_Label_1112:
! CALL STATEMENT...
!   _temp_1117 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1117  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	668,r13		! source line 668
	mov	"\0\0BR",r10
	jmp	_Label_1107
! DEFAULT CASE...
_Label_1106:
! CALL STATEMENT...
!   _temp_1118 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1118  sizeInBytes=4
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
_Label_1107:
! CALL STATEMENT...
!   _temp_1119 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1119  sizeInBytes=4
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
!   _temp_1120 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1120  sizeInBytes=4
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
!   _temp_1125 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1126 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1125  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1121:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1126 then goto _Label_1124		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1124
_Label_1122:
	mov	676,r13		! source line 676
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1127 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1127  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	677,r13		! source line 677
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1128 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1128  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	678,r13		! source line 678
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1129 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1129  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	679,r13		! source line 679
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1131 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1131 [i ] into _temp_1132
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
!   Data Move: _temp_1130 = *_temp_1132  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1130  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	680,r13		! source line 680
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1133 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1133  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	681,r13		! source line 681
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1135 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1135 [i ] into _temp_1136
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
!   Data Move: _temp_1134 = *_temp_1136  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1134  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	682,r13		! source line 682
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1137 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1137  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	683,r13		! source line 683
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1123:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1121
! END FOR
_Label_1124:
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
	.word	_Label_1138
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1139
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1140
	.word	-12
	.word	4
	.word	_Label_1141
	.word	-16
	.word	4
	.word	_Label_1142
	.word	-20
	.word	4
	.word	_Label_1143
	.word	-24
	.word	4
	.word	_Label_1144
	.word	-28
	.word	4
	.word	_Label_1145
	.word	-32
	.word	4
	.word	_Label_1146
	.word	-36
	.word	4
	.word	_Label_1147
	.word	-40
	.word	4
	.word	_Label_1148
	.word	-44
	.word	4
	.word	_Label_1149
	.word	-48
	.word	4
	.word	_Label_1150
	.word	-52
	.word	4
	.word	_Label_1151
	.word	-56
	.word	4
	.word	_Label_1152
	.word	-60
	.word	4
	.word	_Label_1153
	.word	-64
	.word	4
	.word	_Label_1154
	.word	-68
	.word	4
	.word	_Label_1155
	.word	-72
	.word	4
	.word	_Label_1156
	.word	-76
	.word	4
	.word	_Label_1157
	.word	-80
	.word	4
	.word	_Label_1158
	.word	-84
	.word	4
	.word	_Label_1159
	.word	-88
	.word	4
	.word	_Label_1160
	.word	-92
	.word	4
	.word	_Label_1161
	.word	-96
	.word	4
	.word	_Label_1162
	.word	-100
	.word	4
	.word	_Label_1163
	.word	-104
	.word	4
	.word	_Label_1164
	.word	-108
	.word	4
	.word	_Label_1165
	.word	-112
	.word	4
	.word	_Label_1166
	.word	-116
	.word	4
	.word	_Label_1167
	.word	-120
	.word	4
	.word	_Label_1168
	.word	-124
	.word	4
	.word	_Label_1169
	.word	-128
	.word	4
	.word	_Label_1170
	.word	-132
	.word	4
	.word	_Label_1171
	.word	-136
	.word	4
	.word	_Label_1172
	.word	-140
	.word	4
	.word	_Label_1173
	.word	-144
	.word	4
	.word	_Label_1174
	.word	-148
	.word	4
	.word	_Label_1175
	.word	-152
	.word	4
	.word	_Label_1176
	.word	-156
	.word	4
	.word	_Label_1177
	.word	-160
	.word	4
	.word	_Label_1178
	.word	-164
	.word	4
	.word	_Label_1179
	.word	-168
	.word	4
	.word	_Label_1180
	.word	-172
	.word	4
	.word	_Label_1181
	.word	-176
	.word	4
	.word	_Label_1182
	.word	-180
	.word	4
	.word	_Label_1183
	.word	-184
	.word	4
	.word	_Label_1184
	.word	-188
	.word	4
	.word	_Label_1185
	.word	-192
	.word	4
	.word	_Label_1186
	.word	-196
	.word	4
	.word	0
_Label_1138:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1139:
	.ascii	"Pself\0"
	.align
_Label_1140:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1141:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1142:
	.byte	'?'
	.ascii	"_temp_1135\0"
	.align
_Label_1143:
	.byte	'?'
	.ascii	"_temp_1134\0"
	.align
_Label_1144:
	.byte	'?'
	.ascii	"_temp_1133\0"
	.align
_Label_1145:
	.byte	'?'
	.ascii	"_temp_1132\0"
	.align
_Label_1146:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1147:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1148:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1149:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1150:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1151:
	.byte	'?'
	.ascii	"_temp_1126\0"
	.align
_Label_1152:
	.byte	'?'
	.ascii	"_temp_1125\0"
	.align
_Label_1153:
	.byte	'?'
	.ascii	"_temp_1120\0"
	.align
_Label_1154:
	.byte	'?'
	.ascii	"_temp_1119\0"
	.align
_Label_1155:
	.byte	'?'
	.ascii	"_temp_1118\0"
	.align
_Label_1156:
	.byte	'?'
	.ascii	"_temp_1117\0"
	.align
_Label_1157:
	.byte	'?'
	.ascii	"_temp_1116\0"
	.align
_Label_1158:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
_Label_1159:
	.byte	'?'
	.ascii	"_temp_1114\0"
	.align
_Label_1160:
	.byte	'?'
	.ascii	"_temp_1113\0"
	.align
_Label_1161:
	.byte	'?'
	.ascii	"_temp_1105\0"
	.align
_Label_1162:
	.byte	'?'
	.ascii	"_temp_1104\0"
	.align
_Label_1163:
	.byte	'?'
	.ascii	"_temp_1103\0"
	.align
_Label_1164:
	.byte	'?'
	.ascii	"_temp_1102\0"
	.align
_Label_1165:
	.byte	'?'
	.ascii	"_temp_1101\0"
	.align
_Label_1166:
	.byte	'?'
	.ascii	"_temp_1100\0"
	.align
_Label_1167:
	.byte	'?'
	.ascii	"_temp_1099\0"
	.align
_Label_1168:
	.byte	'?'
	.ascii	"_temp_1098\0"
	.align
_Label_1169:
	.byte	'?'
	.ascii	"_temp_1097\0"
	.align
_Label_1170:
	.byte	'?'
	.ascii	"_temp_1096\0"
	.align
_Label_1171:
	.byte	'?'
	.ascii	"_temp_1095\0"
	.align
_Label_1172:
	.byte	'?'
	.ascii	"_temp_1094\0"
	.align
_Label_1173:
	.byte	'?'
	.ascii	"_temp_1093\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1092\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1091\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1090\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1089\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1087\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1181:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1182:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1184:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1185:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1186:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1187
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1187:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1188
	.word	_sourceFileName
	.word	203		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1188:
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
_Label_3058:
	push	r0
	sub	r1,1,r1
	bne	_Label_3058
	mov	740,r13		! source line 740
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1189 = _StringConst_107
	set	_StringConst_107,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1189  sizeInBytes=4
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
!   _temp_1191 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1193 = &_temp_1192
	set	-45896,r1
	add	r14,r1,r1
	store	r1,[r14+-4252]
!   _temp_1193 = _temp_1193 + 4
	load	[r14+-4252],r1
	add	r1,4,r1
	store	r1,[r14+-4252]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1195 = zeros  (sizeInBytes=4164)
	add	r14,-4244,r4
	mov	1041,r3
_Label_3059:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3059
!   _temp_1195 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4244]
	mov	10,r1
	store	r1,[r14+-4248]
_Label_1197:
!   Data Move: *_temp_1193 = _temp_1195  (sizeInBytes=4164)
	add	r14,-4244,r5
	load	[r14+-4252],r4
	mov	1041,r3
_Label_3060:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3060
!   _temp_1193 = _temp_1193 + 4164
	load	[r14+-4252],r1
	add	r1,4164,r1
	store	r1,[r14+-4252]
!   _temp_1194 = _temp_1194 + -1
	load	[r14+-4248],r1
	add	r1,-1,r1
	store	r1,[r14+-4248]
!   if intNotZero (_temp_1194) then goto _Label_1197
	load	[r14+-4248],r1
	cmp	r1,r0
	bne	_Label_1197
!   Initialize the array size...
	mov	10,r1
	set	-45896,r2
	store	r1,[r14+r2]
!   _temp_1198 = &_temp_1192
	set	-45896,r1
	add	r14,r1,r1
	store	r1,[r14+-76]
!   make sure array has size 10
	set	-45900,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3061
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3061:
!   make sure array has size 10
	load	[r14+-76],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1191 = *_temp_1198  (sizeInBytes=41644)
	load	[r14+-76],r5
	set	-45900,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3062:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3062
! FOR STATEMENT...
	mov	753,r13		! source line 753
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1203 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-72]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1204 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-68]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1203  (sizeInBytes=4)
	load	[r14+-72],r1
	set	-45912,r2
	store	r1,[r14+r2]
_Label_1199:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1204 then goto _Label_1202		
	set	-45912,r1
	load	[r14+r1],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1202
_Label_1200:
	mov	753,r13		! source line 753
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	754,r13		! source line 754
	mov	"\0\0SE",r10
!   _temp_1205 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-64]
!   _temp_1206 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Move address of _temp_1206 [i ] into _temp_1207
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
!   Prepare Argument: offset=12  value=_temp_1205  sizeInBytes=4
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
!   _temp_1208 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_1208 [i ] into _temp_1209
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
!   _temp_1210 = _temp_1209 + 76
	load	[r14+-48],r1
	add	r1,76,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_1210 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-44],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	756,r13		! source line 756
	mov	"\0\0SE",r10
!   _temp_1212 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1212 [i ] into _temp_1213
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
!   _temp_1211 = _temp_1213		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-40]
!   _temp_1214 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1211  sizeInBytes=4
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
_Label_1201:
!   i = i + 1
	set	-45912,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45912,r2
	store	r1,[r14+r2]
	jmp	_Label_1199
! END FOR
_Label_1202:
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
!   _temp_1216 = &threadManagerLock
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
!   _temp_1218 = &aThreadBecameFree
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
	.word	_Label_1219
	.word	4		! total size of parameters
	.word	45912		! frame size = 45912
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
	.word	_Label_1229
	.word	-44
	.word	4
	.word	_Label_1230
	.word	-48
	.word	4
	.word	_Label_1231
	.word	-52
	.word	4
	.word	_Label_1232
	.word	-56
	.word	4
	.word	_Label_1233
	.word	-60
	.word	4
	.word	_Label_1234
	.word	-64
	.word	4
	.word	_Label_1235
	.word	-68
	.word	4
	.word	_Label_1236
	.word	-72
	.word	4
	.word	_Label_1237
	.word	-76
	.word	4
	.word	_Label_1238
	.word	-80
	.word	4
	.word	_Label_1239
	.word	-4244
	.word	4164
	.word	_Label_1240
	.word	-4248
	.word	4
	.word	_Label_1241
	.word	-4252
	.word	4
	.word	_Label_1242
	.word	-45896
	.word	41644
	.word	_Label_1243
	.word	-45900
	.word	4
	.word	_Label_1244
	.word	-45904
	.word	4
	.word	_Label_1245
	.word	-45908
	.word	4
	.word	_Label_1246
	.word	-45912
	.word	4
	.word	0
_Label_1219:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
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
	.ascii	"_temp_1213\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1212\0"
	.align
_Label_1228:
	.byte	'?'
	.ascii	"_temp_1211\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1210\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1209\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1208\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1207\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1234:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1235:
	.byte	'?'
	.ascii	"_temp_1204\0"
	.align
_Label_1236:
	.byte	'?'
	.ascii	"_temp_1203\0"
	.align
_Label_1237:
	.byte	'?'
	.ascii	"_temp_1198\0"
	.align
_Label_1238:
	.byte	'?'
	.ascii	"_temp_1196\0"
	.align
_Label_1239:
	.byte	'?'
	.ascii	"_temp_1195\0"
	.align
_Label_1240:
	.byte	'?'
	.ascii	"_temp_1194\0"
	.align
_Label_1241:
	.byte	'?'
	.ascii	"_temp_1193\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1192\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1191\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1190\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1189\0"
	.align
_Label_1246:
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
_Label_3063:
	push	r0
	sub	r1,1,r1
	bne	_Label_3063
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
!   _temp_1247 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1247  sizeInBytes=4
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
!   _temp_1252 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1253 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1252  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1248:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1253 then goto _Label_1251		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1251
_Label_1249:
	mov	784,r13		! source line 784
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1254 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1254  sizeInBytes=4
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
!   _temp_1255 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1255  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	787,r13		! source line 787
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1257 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1257 [i ] into _temp_1258
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
!   _temp_1256 = _temp_1258		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1256  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	788,r13		! source line 788
	mov	"\0\0CA",r10
	call	_function_215_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1250:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1248
! END FOR
_Label_1251:
! CALL STATEMENT...
!   _temp_1259 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1259  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	790,r13		! source line 790
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	791,r13		! source line 791
	mov	"\0\0SE",r10
!   _temp_1260 = _function_214_PrintObjectAddr
	set	_function_214_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1261 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1260  sizeInBytes=4
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
	.word	_Label_1262
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1263
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1264
	.word	-12
	.word	4
	.word	_Label_1265
	.word	-16
	.word	4
	.word	_Label_1266
	.word	-20
	.word	4
	.word	_Label_1267
	.word	-24
	.word	4
	.word	_Label_1268
	.word	-28
	.word	4
	.word	_Label_1269
	.word	-32
	.word	4
	.word	_Label_1270
	.word	-36
	.word	4
	.word	_Label_1271
	.word	-40
	.word	4
	.word	_Label_1272
	.word	-44
	.word	4
	.word	_Label_1273
	.word	-48
	.word	4
	.word	_Label_1274
	.word	-52
	.word	4
	.word	_Label_1275
	.word	-56
	.word	4
	.word	_Label_1276
	.word	-60
	.word	4
	.word	0
_Label_1262:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1263:
	.ascii	"Pself\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1265:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1266:
	.byte	'?'
	.ascii	"_temp_1259\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1257\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1256\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1255\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1254\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1253\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1275:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1276:
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
_Label_3064:
	push	r0
	sub	r1,1,r1
	bne	_Label_3064
	mov	798,r13		! source line 798
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	808,r13		! source line 808
	mov	"\0\0SE",r10
!   _temp_1277 = &threadManagerLock
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
_Label_1278:
	mov	814,r13		! source line 814
	mov	"\0\0SE",r10
!   _temp_1281 = &freeList
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
!   if result==true then goto _Label_1279 else goto _Label_1280
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1280
	jmp	_Label_1279
_Label_1279:
	mov	814,r13		! source line 814
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	815,r13		! source line 815
	mov	"\0\0SE",r10
!   _temp_1282 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1283 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1282  sizeInBytes=4
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
	jmp	_Label_1278
_Label_1280:
! ASSIGNMENT STATEMENT...
	mov	823,r13		! source line 823
	mov	"\0\0AS",r10
	mov	823,r13		! source line 823
	mov	"\0\0SE",r10
!   _temp_1284 = &freeList
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
!   _temp_1285 = th + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1285 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	825,r13		! source line 825
	mov	"\0\0SE",r10
!   _temp_1286 = &threadManagerLock
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
	.word	_Label_1287
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1288
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1289
	.word	-12
	.word	4
	.word	_Label_1290
	.word	-16
	.word	4
	.word	_Label_1291
	.word	-20
	.word	4
	.word	_Label_1292
	.word	-24
	.word	4
	.word	_Label_1293
	.word	-28
	.word	4
	.word	_Label_1294
	.word	-32
	.word	4
	.word	_Label_1295
	.word	-36
	.word	4
	.word	_Label_1296
	.word	-40
	.word	4
	.word	0
_Label_1287:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1288:
	.ascii	"Pself\0"
	.align
_Label_1289:
	.byte	'?'
	.ascii	"_temp_1286\0"
	.align
_Label_1290:
	.byte	'?'
	.ascii	"_temp_1285\0"
	.align
_Label_1291:
	.byte	'?'
	.ascii	"_temp_1284\0"
	.align
_Label_1292:
	.byte	'?'
	.ascii	"_temp_1283\0"
	.align
_Label_1293:
	.byte	'?'
	.ascii	"_temp_1282\0"
	.align
_Label_1294:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
_Label_1295:
	.byte	'?'
	.ascii	"_temp_1277\0"
	.align
_Label_1296:
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
_Label_3065:
	push	r0
	sub	r1,1,r1
	bne	_Label_3065
	mov	833,r13		! source line 833
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	842,r13		! source line 842
	mov	"\0\0SE",r10
!   _temp_1297 = &threadManagerLock
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
!   _temp_1298 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1298 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	844,r13		! source line 844
	mov	"\0\0SE",r10
!   _temp_1299 = &freeList
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
!   _temp_1300 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1301 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1300  sizeInBytes=4
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
!   _temp_1302 = &threadManagerLock
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
	.word	_Label_1303
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1304
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1305
	.word	12
	.word	4
	.word	_Label_1306
	.word	-12
	.word	4
	.word	_Label_1307
	.word	-16
	.word	4
	.word	_Label_1308
	.word	-20
	.word	4
	.word	_Label_1309
	.word	-24
	.word	4
	.word	_Label_1310
	.word	-28
	.word	4
	.word	_Label_1311
	.word	-32
	.word	4
	.word	0
_Label_1303:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1304:
	.ascii	"Pself\0"
	.align
_Label_1305:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1306:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1307:
	.byte	'?'
	.ascii	"_temp_1301\0"
	.align
_Label_1308:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1309:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1310:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1311:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1312
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1312:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1313
	.word	_sourceFileName
	.word	225		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1313:
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
_Label_3066:
	push	r0
	sub	r1,1,r1
	bne	_Label_3066
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
_Label_3067:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3067
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	863,r13		! source line 863
	mov	"\0\0SE",r10
!   _temp_1315 = &addrSpace
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
	.word	_Label_1316
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1317
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1318
	.word	-12
	.word	4
	.word	_Label_1319
	.word	-16
	.word	4
	.word	0
_Label_1316:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1317:
	.ascii	"Pself\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1314\0"
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
_Label_3068:
	push	r0
	sub	r1,1,r1
	bne	_Label_3068
	mov	873,r13		! source line 873
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	878,r13		! source line 878
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1320) then goto _runtimeErrorNullPointer
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
!   _temp_1321 = &addrSpace
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
!   _temp_1322 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1322  sizeInBytes=4
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
	call	_function_215_ThreadPrintShort
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
	.word	_Label_1323
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1324
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1325
	.word	-12
	.word	4
	.word	_Label_1326
	.word	-16
	.word	4
	.word	_Label_1327
	.word	-20
	.word	4
	.word	0
_Label_1323:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1324:
	.ascii	"Pself\0"
	.align
_Label_1325:
	.byte	'?'
	.ascii	"_temp_1322\0"
	.align
_Label_1326:
	.byte	'?'
	.ascii	"_temp_1321\0"
	.align
_Label_1327:
	.byte	'?'
	.ascii	"_temp_1320\0"
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
_Label_3069:
	push	r0
	sub	r1,1,r1
	bne	_Label_3069
	mov	896,r13		! source line 896
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1328 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1328  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	900,r13		! source line 900
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1329  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	901,r13		! source line 901
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1330 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1330  sizeInBytes=4
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
!   _temp_1331 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1331  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	904,r13		! source line 904
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	905,r13		! source line 905
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1333		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1333
!	jmp	_Label_1332
_Label_1332:
! THEN...
	mov	906,r13		! source line 906
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1334 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1334  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	906,r13		! source line 906
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1335
_Label_1333:
! ELSE...
	mov	907,r13		! source line 907
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	907,r13		! source line 907
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1337		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1337
!	jmp	_Label_1336
_Label_1336:
! THEN...
	mov	908,r13		! source line 908
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1338 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1338  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	908,r13		! source line 908
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1339
_Label_1337:
! ELSE...
	mov	909,r13		! source line 909
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	909,r13		! source line 909
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1341		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1341
!	jmp	_Label_1340
_Label_1340:
! THEN...
	mov	910,r13		! source line 910
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1342 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1342  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	910,r13		! source line 910
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1343
_Label_1341:
! ELSE...
	mov	912,r13		! source line 912
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1344 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1344  sizeInBytes=4
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
_Label_1343:
! END IF...
_Label_1339:
! END IF...
_Label_1335:
! CALL STATEMENT...
!   _temp_1345 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1345  sizeInBytes=4
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
!   _temp_1346 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1346  sizeInBytes=4
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
	.word	_Label_1347
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1348
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1349
	.word	-12
	.word	4
	.word	_Label_1350
	.word	-16
	.word	4
	.word	_Label_1351
	.word	-20
	.word	4
	.word	_Label_1352
	.word	-24
	.word	4
	.word	_Label_1353
	.word	-28
	.word	4
	.word	_Label_1354
	.word	-32
	.word	4
	.word	_Label_1355
	.word	-36
	.word	4
	.word	_Label_1356
	.word	-40
	.word	4
	.word	_Label_1357
	.word	-44
	.word	4
	.word	_Label_1358
	.word	-48
	.word	4
	.word	0
_Label_1347:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1348:
	.ascii	"Pself\0"
	.align
_Label_1349:
	.byte	'?'
	.ascii	"_temp_1346\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1345\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1342\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1328\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1359
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1359:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1360
	.word	_sourceFileName
	.word	245		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1360:
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
_Label_3070:
	push	r0
	sub	r1,1,r1
	bne	_Label_3070
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
!   _temp_1361 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1468]
!   NEW ARRAY Constructor...
!   _temp_1363 = &_temp_1362
	add	r14,-1464,r1
	store	r1,[r14+-220]
!   _temp_1363 = _temp_1363 + 4
	load	[r14+-220],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1365 = zeros  (sizeInBytes=124)
	add	r14,-212,r4
	mov	31,r3
_Label_3071:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3071
!   _temp_1365 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-212]
	mov	10,r1
	store	r1,[r14+-216]
_Label_1367:
!   Data Move: *_temp_1363 = _temp_1365  (sizeInBytes=124)
	add	r14,-212,r5
	load	[r14+-220],r4
	mov	31,r3
_Label_3072:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3072
!   _temp_1363 = _temp_1363 + 124
	load	[r14+-220],r1
	add	r1,124,r1
	store	r1,[r14+-220]
!   _temp_1364 = _temp_1364 + -1
	load	[r14+-216],r1
	add	r1,-1,r1
	store	r1,[r14+-216]
!   if intNotZero (_temp_1364) then goto _Label_1367
	load	[r14+-216],r1
	cmp	r1,r0
	bne	_Label_1367
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1464]
!   _temp_1368 = &_temp_1362
	add	r14,-1464,r1
	store	r1,[r14+-84]
!   make sure array has size 10
	load	[r14+-1468],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3073
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3073:
!   make sure array has size 10
	load	[r14+-84],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1361 = *_temp_1368  (sizeInBytes=1244)
	load	[r14+-84],r5
	load	[r14+-1468],r4
	mov	311,r3
_Label_3074:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3074
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
!   _temp_1374 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-76]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1375 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-72]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1374  (sizeInBytes=4)
	load	[r14+-76],r1
	store	r1,[r14+-1472]
_Label_1370:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1375 then goto _Label_1373		
	load	[r14+-1472],r1
	load	[r14+-72],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1373
_Label_1371:
	mov	944,r13		! source line 944
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	945,r13		! source line 945
	mov	"\0\0SE",r10
!   _temp_1376 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-68]
!   Move address of _temp_1376 [i ] into _temp_1377
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
!   _temp_1378 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Move address of _temp_1378 [i ] into _temp_1379
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
!   _temp_1380 = _temp_1379 + 20
	load	[r14+-56],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_1380 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-52],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	947,r13		! source line 947
	mov	"\0\0SE",r10
!   _temp_1382 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1382 [i ] into _temp_1383
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
!   _temp_1381 = _temp_1383		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_1384 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1381  sizeInBytes=4
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
_Label_1372:
!   i = i + 1
	load	[r14+-1472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1472]
	jmp	_Label_1370
! END FOR
_Label_1373:
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
!   _temp_1386 = &processManagerLock
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
!   _temp_1388 = &aProcessBecameFree
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
!   _temp_1390 = &aProcessDied
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
	.word	_Label_1391
	.word	4		! total size of parameters
	.word	1472		! frame size = 1472
	.word	_Label_1392
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1393
	.word	-12
	.word	4
	.word	_Label_1394
	.word	-16
	.word	4
	.word	_Label_1395
	.word	-20
	.word	4
	.word	_Label_1396
	.word	-24
	.word	4
	.word	_Label_1397
	.word	-28
	.word	4
	.word	_Label_1398
	.word	-32
	.word	4
	.word	_Label_1399
	.word	-36
	.word	4
	.word	_Label_1400
	.word	-40
	.word	4
	.word	_Label_1401
	.word	-44
	.word	4
	.word	_Label_1402
	.word	-48
	.word	4
	.word	_Label_1403
	.word	-52
	.word	4
	.word	_Label_1404
	.word	-56
	.word	4
	.word	_Label_1405
	.word	-60
	.word	4
	.word	_Label_1406
	.word	-64
	.word	4
	.word	_Label_1407
	.word	-68
	.word	4
	.word	_Label_1408
	.word	-72
	.word	4
	.word	_Label_1409
	.word	-76
	.word	4
	.word	_Label_1410
	.word	-80
	.word	4
	.word	_Label_1411
	.word	-84
	.word	4
	.word	_Label_1412
	.word	-88
	.word	4
	.word	_Label_1413
	.word	-212
	.word	124
	.word	_Label_1414
	.word	-216
	.word	4
	.word	_Label_1415
	.word	-220
	.word	4
	.word	_Label_1416
	.word	-1464
	.word	1244
	.word	_Label_1417
	.word	-1468
	.word	4
	.word	_Label_1418
	.word	-1472
	.word	4
	.word	0
_Label_1391:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1392:
	.ascii	"Pself\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1388\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1386\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1404:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
_Label_1405:
	.byte	'?'
	.ascii	"_temp_1378\0"
	.align
_Label_1406:
	.byte	'?'
	.ascii	"_temp_1377\0"
	.align
_Label_1407:
	.byte	'?'
	.ascii	"_temp_1376\0"
	.align
_Label_1408:
	.byte	'?'
	.ascii	"_temp_1375\0"
	.align
_Label_1409:
	.byte	'?'
	.ascii	"_temp_1374\0"
	.align
_Label_1410:
	.byte	'?'
	.ascii	"_temp_1369\0"
	.align
_Label_1411:
	.byte	'?'
	.ascii	"_temp_1368\0"
	.align
_Label_1412:
	.byte	'?'
	.ascii	"_temp_1366\0"
	.align
_Label_1413:
	.byte	'?'
	.ascii	"_temp_1365\0"
	.align
_Label_1414:
	.byte	'?'
	.ascii	"_temp_1364\0"
	.align
_Label_1415:
	.byte	'?'
	.ascii	"_temp_1363\0"
	.align
_Label_1416:
	.byte	'?'
	.ascii	"_temp_1362\0"
	.align
_Label_1417:
	.byte	'?'
	.ascii	"_temp_1361\0"
	.align
_Label_1418:
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
_Label_3075:
	push	r0
	sub	r1,1,r1
	bne	_Label_3075
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
!   _temp_1419 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1419  sizeInBytes=4
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
!   _temp_1424 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1425 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1424  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1420:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1425 then goto _Label_1423		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1423
_Label_1421:
	mov	980,r13		! source line 980
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1426 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1426  sizeInBytes=4
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
!   _temp_1427 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1427  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	983,r13		! source line 983
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	984,r13		! source line 984
	mov	"\0\0SE",r10
!   _temp_1428 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1428 [i ] into _temp_1429
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
_Label_1422:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1420
! END FOR
_Label_1423:
! CALL STATEMENT...
!   _temp_1430 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1430  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	986,r13		! source line 986
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	987,r13		! source line 987
	mov	"\0\0SE",r10
!   _temp_1431 = _function_214_PrintObjectAddr
	set	_function_214_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1432 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1431  sizeInBytes=4
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
	.word	_Label_1433
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1434
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1435
	.word	-12
	.word	4
	.word	_Label_1436
	.word	-16
	.word	4
	.word	_Label_1437
	.word	-20
	.word	4
	.word	_Label_1438
	.word	-24
	.word	4
	.word	_Label_1439
	.word	-28
	.word	4
	.word	_Label_1440
	.word	-32
	.word	4
	.word	_Label_1441
	.word	-36
	.word	4
	.word	_Label_1442
	.word	-40
	.word	4
	.word	_Label_1443
	.word	-44
	.word	4
	.word	_Label_1444
	.word	-48
	.word	4
	.word	_Label_1445
	.word	-52
	.word	4
	.word	_Label_1446
	.word	-56
	.word	4
	.word	0
_Label_1433:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1434:
	.ascii	"Pself\0"
	.align
_Label_1435:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1436:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1437:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1426\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1424\0"
	.align
_Label_1444:
	.byte	'?'
	.ascii	"_temp_1419\0"
	.align
_Label_1445:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1446:
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
_Label_3076:
	push	r0
	sub	r1,1,r1
	bne	_Label_3076
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
!   _temp_1447 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1447  sizeInBytes=4
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
!   _temp_1452 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1453 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1452  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1448:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1453 then goto _Label_1451		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1451
_Label_1449:
	mov	1003,r13		! source line 1003
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1454 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1454  sizeInBytes=4
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
!   _temp_1455 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1455 [i ] into _temp_1456
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
_Label_1450:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1448
! END FOR
_Label_1451:
! CALL STATEMENT...
!   _temp_1457 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1457  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1008,r13		! source line 1008
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1009,r13		! source line 1009
	mov	"\0\0SE",r10
!   _temp_1458 = _function_214_PrintObjectAddr
	set	_function_214_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1459 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1458  sizeInBytes=4
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
	.word	_Label_1460
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1461
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1462
	.word	-12
	.word	4
	.word	_Label_1463
	.word	-16
	.word	4
	.word	_Label_1464
	.word	-20
	.word	4
	.word	_Label_1465
	.word	-24
	.word	4
	.word	_Label_1466
	.word	-28
	.word	4
	.word	_Label_1467
	.word	-32
	.word	4
	.word	_Label_1468
	.word	-36
	.word	4
	.word	_Label_1469
	.word	-40
	.word	4
	.word	_Label_1470
	.word	-44
	.word	4
	.word	_Label_1471
	.word	-48
	.word	4
	.word	_Label_1472
	.word	-52
	.word	4
	.word	0
_Label_1460:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1461:
	.ascii	"Pself\0"
	.align
_Label_1462:
	.byte	'?'
	.ascii	"_temp_1459\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1458\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1457\0"
	.align
_Label_1465:
	.byte	'?'
	.ascii	"_temp_1456\0"
	.align
_Label_1466:
	.byte	'?'
	.ascii	"_temp_1455\0"
	.align
_Label_1467:
	.byte	'?'
	.ascii	"_temp_1454\0"
	.align
_Label_1468:
	.byte	'?'
	.ascii	"_temp_1453\0"
	.align
_Label_1469:
	.byte	'?'
	.ascii	"_temp_1452\0"
	.align
_Label_1470:
	.byte	'?'
	.ascii	"_temp_1447\0"
	.align
_Label_1471:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1472:
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
_Label_3077:
	push	r0
	sub	r1,1,r1
	bne	_Label_3077
	mov	1016,r13		! source line 1016
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1023,r13		! source line 1023
	mov	"\0\0SE",r10
!   _temp_1473 = &processManagerLock
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
_Label_1474:
	mov	1030,r13		! source line 1030
	mov	"\0\0SE",r10
!   _temp_1477 = &freeList
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
!   if result==true then goto _Label_1475 else goto _Label_1476
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1476
	jmp	_Label_1475
_Label_1475:
	mov	1030,r13		! source line 1030
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1031,r13		! source line 1031
	mov	"\0\0SE",r10
!   _temp_1478 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   _temp_1479 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1478  sizeInBytes=4
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
	jmp	_Label_1474
_Label_1476:
! ASSIGNMENT STATEMENT...
	mov	1039,r13		! source line 1039
	mov	"\0\0AS",r10
	mov	1039,r13		! source line 1039
	mov	"\0\0SE",r10
!   _temp_1480 = &freeList
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
!   _temp_1481 = pro + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1481 = nextPid  (sizeInBytes=4)
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
!   _temp_1482 = pro + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1482 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1044,r13		! source line 1044
	mov	"\0\0SE",r10
!   _temp_1483 = &processManagerLock
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
	.word	_Label_1484
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1485
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1486
	.word	-12
	.word	4
	.word	_Label_1487
	.word	-16
	.word	4
	.word	_Label_1488
	.word	-20
	.word	4
	.word	_Label_1489
	.word	-24
	.word	4
	.word	_Label_1490
	.word	-28
	.word	4
	.word	_Label_1491
	.word	-32
	.word	4
	.word	_Label_1492
	.word	-36
	.word	4
	.word	_Label_1493
	.word	-40
	.word	4
	.word	_Label_1494
	.word	-44
	.word	4
	.word	0
_Label_1484:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1485:
	.ascii	"Pself\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1481\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1480\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1493:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1494:
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
_Label_3078:
	push	r0
	sub	r1,1,r1
	bne	_Label_3078
	mov	1050,r13		! source line 1050
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1060,r13		! source line 1060
	mov	"\0\0SE",r10
!   _temp_1495 = &processManagerLock
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
!   _temp_1496 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1496 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1062,r13		! source line 1062
	mov	"\0\0SE",r10
!   _temp_1497 = &freeList
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
!   _temp_1498 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1499 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1498  sizeInBytes=4
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
!   _temp_1500 = &processManagerLock
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
	.word	_Label_1501
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1502
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1503
	.word	12
	.word	4
	.word	_Label_1504
	.word	-12
	.word	4
	.word	_Label_1505
	.word	-16
	.word	4
	.word	_Label_1506
	.word	-20
	.word	4
	.word	_Label_1507
	.word	-24
	.word	4
	.word	_Label_1508
	.word	-28
	.word	4
	.word	_Label_1509
	.word	-32
	.word	4
	.word	0
_Label_1501:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1502:
	.ascii	"Pself\0"
	.align
_Label_1503:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1504:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1505:
	.byte	'?'
	.ascii	"_temp_1499\0"
	.align
_Label_1506:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1497\0"
	.align
_Label_1508:
	.byte	'?'
	.ascii	"_temp_1496\0"
	.align
_Label_1509:
	.byte	'?'
	.ascii	"_temp_1495\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1510
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1510:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1511
	.word	_sourceFileName
	.word	268		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1511:
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
_Label_3079:
	push	r0
	sub	r1,1,r1
	bne	_Label_3079
	mov	1098,r13		! source line 1098
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1512 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1512  sizeInBytes=4
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
!   _temp_1514 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=100  sizeInBytes=4
	mov	100,r1
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
!   numberFreeFrames = 100		(4 bytes)
	mov	100,r1
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
!   _temp_1516 = &frameManagerLock
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
!   _temp_1518 = &newFramesAvailable
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
!   _temp_1523 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1524 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1523  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1519:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1524 then goto _Label_1522		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1522
_Label_1520:
	mov	1117,r13		! source line 1117
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1120,r13		! source line 1120
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1527 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1527) then goto _Label_1526
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1526
!	jmp	_Label_1525
_Label_1525:
! THEN...
	mov	1121,r13		! source line 1121
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1528 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1528  sizeInBytes=4
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
_Label_1526:
!   Increment the FOR-LOOP index variable and jump back
_Label_1521:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1519
! END FOR
_Label_1522:
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
	.word	_Label_1529
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1530
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1531
	.word	-12
	.word	4
	.word	_Label_1532
	.word	-16
	.word	4
	.word	_Label_1533
	.word	-20
	.word	4
	.word	_Label_1534
	.word	-24
	.word	4
	.word	_Label_1535
	.word	-28
	.word	4
	.word	_Label_1536
	.word	-32
	.word	4
	.word	_Label_1537
	.word	-36
	.word	4
	.word	_Label_1538
	.word	-40
	.word	4
	.word	_Label_1539
	.word	-44
	.word	4
	.word	_Label_1540
	.word	-48
	.word	4
	.word	_Label_1541
	.word	-52
	.word	4
	.word	_Label_1542
	.word	-56
	.word	4
	.word	0
_Label_1529:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1530:
	.ascii	"Pself\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1527\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1524\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1523\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1517\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1516\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1515\0"
	.align
_Label_1539:
	.byte	'?'
	.ascii	"_temp_1514\0"
	.align
_Label_1540:
	.byte	'?'
	.ascii	"_temp_1513\0"
	.align
_Label_1541:
	.byte	'?'
	.ascii	"_temp_1512\0"
	.align
_Label_1542:
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
_Label_3080:
	push	r0
	sub	r1,1,r1
	bne	_Label_3080
	mov	1128,r13		! source line 1128
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1132,r13		! source line 1132
	mov	"\0\0SE",r10
!   _temp_1543 = &frameManagerLock
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
!   _temp_1544 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1544  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1133,r13		! source line 1133
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1545 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1545  sizeInBytes=4
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
!   _temp_1546 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1546  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1135,r13		! source line 1135
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1136,r13		! source line 1136
	mov	"\0\0SE",r10
!   _temp_1547 = &framesInUse
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
!   _temp_1548 = &frameManagerLock
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
	.word	_Label_1549
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1550
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1551
	.word	-12
	.word	4
	.word	_Label_1552
	.word	-16
	.word	4
	.word	_Label_1553
	.word	-20
	.word	4
	.word	_Label_1554
	.word	-24
	.word	4
	.word	_Label_1555
	.word	-28
	.word	4
	.word	_Label_1556
	.word	-32
	.word	4
	.word	0
_Label_1549:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1550:
	.ascii	"Pself\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1548\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1547\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1545\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1544\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1543\0"
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
_Label_3081:
	push	r0
	sub	r1,1,r1
	bne	_Label_3081
	mov	1142,r13		! source line 1142
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1150,r13		! source line 1150
	mov	"\0\0SE",r10
!   _temp_1557 = &frameManagerLock
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
_Label_1558:
!   if numberFreeFrames >= 1 then goto _Label_1560		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1560
!	jmp	_Label_1559
_Label_1559:
	mov	1153,r13		! source line 1153
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1154,r13		! source line 1154
	mov	"\0\0SE",r10
!   _temp_1561 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1562 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1561  sizeInBytes=4
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
	jmp	_Label_1558
_Label_1560:
! ASSIGNMENT STATEMENT...
	mov	1158,r13		! source line 1158
	mov	"\0\0AS",r10
	mov	1158,r13		! source line 1158
	mov	"\0\0SE",r10
!   _temp_1563 = &framesInUse
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
!   _temp_1564 = &frameManagerLock
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
!   _temp_1565 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1565		(int)
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
	.word	_Label_1566
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1567
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1568
	.word	-12
	.word	4
	.word	_Label_1569
	.word	-16
	.word	4
	.word	_Label_1570
	.word	-20
	.word	4
	.word	_Label_1571
	.word	-24
	.word	4
	.word	_Label_1572
	.word	-28
	.word	4
	.word	_Label_1573
	.word	-32
	.word	4
	.word	_Label_1574
	.word	-36
	.word	4
	.word	_Label_1575
	.word	-40
	.word	4
	.word	0
_Label_1566:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1567:
	.ascii	"Pself\0"
	.align
_Label_1568:
	.byte	'?'
	.ascii	"_temp_1565\0"
	.align
_Label_1569:
	.byte	'?'
	.ascii	"_temp_1564\0"
	.align
_Label_1570:
	.byte	'?'
	.ascii	"_temp_1563\0"
	.align
_Label_1571:
	.byte	'?'
	.ascii	"_temp_1562\0"
	.align
_Label_1572:
	.byte	'?'
	.ascii	"_temp_1561\0"
	.align
_Label_1573:
	.byte	'?'
	.ascii	"_temp_1557\0"
	.align
_Label_1574:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1575:
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
_Label_3082:
	push	r0
	sub	r1,1,r1
	bne	_Label_3082
	mov	1172,r13		! source line 1172
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1175,r13		! source line 1175
	mov	"\0\0SE",r10
!   _temp_1576 = &frameManagerLock
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
_Label_1577:
!   if numFramesNeeded <= numberFreeFrames then goto _Label_1579		(int)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_1579
!	jmp	_Label_1578
_Label_1578:
	mov	1178,r13		! source line 1178
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1179,r13		! source line 1179
	mov	"\0\0SE",r10
!   _temp_1580 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_1581 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1580  sizeInBytes=4
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
	jmp	_Label_1577
_Label_1579:
! FOR STATEMENT...
	mov	1185,r13		! source line 1185
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1586 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1587 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1586  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-56]
_Label_1582:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1587 then goto _Label_1585		
	load	[r14+-56],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1585
_Label_1583:
	mov	1185,r13		! source line 1185
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1186,r13		! source line 1186
	mov	"\0\0AS",r10
	mov	1186,r13		! source line 1186
	mov	"\0\0SE",r10
!   _temp_1588 = &framesInUse
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
!   _temp_1589 = f * 8192		(int)
	load	[r14+-48],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_1589		(int)
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
_Label_1584:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1582
! END FOR
_Label_1585:
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
!   _temp_1590 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1590 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1195,r13		! source line 1195
	mov	"\0\0SE",r10
!   _temp_1591 = &frameManagerLock
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
	mov	1195,r13		! source line 1195
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
	.word	_Label_1592
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1593
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1594
	.word	12
	.word	4
	.word	_Label_1595
	.word	16
	.word	4
	.word	_Label_1596
	.word	-12
	.word	4
	.word	_Label_1597
	.word	-16
	.word	4
	.word	_Label_1598
	.word	-20
	.word	4
	.word	_Label_1599
	.word	-24
	.word	4
	.word	_Label_1600
	.word	-28
	.word	4
	.word	_Label_1601
	.word	-32
	.word	4
	.word	_Label_1602
	.word	-36
	.word	4
	.word	_Label_1603
	.word	-40
	.word	4
	.word	_Label_1604
	.word	-44
	.word	4
	.word	_Label_1605
	.word	-48
	.word	4
	.word	_Label_1606
	.word	-52
	.word	4
	.word	_Label_1607
	.word	-56
	.word	4
	.word	0
_Label_1592:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1593:
	.ascii	"Pself\0"
	.align
_Label_1594:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1595:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1591\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1590\0"
	.align
_Label_1598:
	.byte	'?'
	.ascii	"_temp_1589\0"
	.align
_Label_1599:
	.byte	'?'
	.ascii	"_temp_1588\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1587\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1586\0"
	.align
_Label_1602:
	.byte	'?'
	.ascii	"_temp_1581\0"
	.align
_Label_1603:
	.byte	'?'
	.ascii	"_temp_1580\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1576\0"
	.align
_Label_1605:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1606:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1607:
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
	mov	16,r1
_Label_3083:
	push	r0
	sub	r1,1,r1
	bne	_Label_3083
	mov	1200,r13		! source line 1200
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1203,r13		! source line 1203
	mov	"\0\0SE",r10
!   _temp_1608 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Send message Lock
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1208,r13		! source line 1208
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1609 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Data Move: numFramesReturned = *_temp_1609  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-64]
! FOR STATEMENT...
	mov	1209,r13		! source line 1209
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1614 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1615 = numFramesReturned - 1		(int)
	load	[r14+-64],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1614  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-56]
_Label_1610:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1615 then goto _Label_1613		
	load	[r14+-56],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1613
_Label_1611:
	mov	1209,r13		! source line 1209
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1210,r13		! source line 1210
	mov	"\0\0AS",r10
	mov	1210,r13		! source line 1210
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-56],r1
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
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	1211,r13		! source line 1211
	mov	"\0\0AS",r10
!   _temp_1616 = frameAddr - 1048576		(int)
	load	[r14+-60],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   bitNumber = _temp_1616 div 8192		(int)
	load	[r14+-32],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
! SEND STATEMENT...
	mov	1212,r13		! source line 1212
	mov	"\0\0SE",r10
!   _temp_1617 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=bitNumber  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1612:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1610
! END FOR
_Label_1613:
! ASSIGNMENT STATEMENT...
	mov	1216,r13		! source line 1216
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames + numFramesReturned		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-64],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1217,r13		! source line 1217
	mov	"\0\0SE",r10
!   _temp_1618 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   _temp_1619 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1618  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1218,r13		! source line 1218
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1620 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1620 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1219,r13		! source line 1219
	mov	"\0\0SE",r10
!   _temp_1621 = &frameManagerLock
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
	mov	1219,r13		! source line 1219
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_1622
	.word	8		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1623
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1624
	.word	12
	.word	4
	.word	_Label_1625
	.word	-12
	.word	4
	.word	_Label_1626
	.word	-16
	.word	4
	.word	_Label_1627
	.word	-20
	.word	4
	.word	_Label_1628
	.word	-24
	.word	4
	.word	_Label_1629
	.word	-28
	.word	4
	.word	_Label_1630
	.word	-32
	.word	4
	.word	_Label_1631
	.word	-36
	.word	4
	.word	_Label_1632
	.word	-40
	.word	4
	.word	_Label_1633
	.word	-44
	.word	4
	.word	_Label_1634
	.word	-48
	.word	4
	.word	_Label_1635
	.word	-52
	.word	4
	.word	_Label_1636
	.word	-56
	.word	4
	.word	_Label_1637
	.word	-60
	.word	4
	.word	_Label_1638
	.word	-64
	.word	4
	.word	0
_Label_1622:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1623:
	.ascii	"Pself\0"
	.align
_Label_1624:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1625:
	.byte	'?'
	.ascii	"_temp_1621\0"
	.align
_Label_1626:
	.byte	'?'
	.ascii	"_temp_1620\0"
	.align
_Label_1627:
	.byte	'?'
	.ascii	"_temp_1619\0"
	.align
_Label_1628:
	.byte	'?'
	.ascii	"_temp_1618\0"
	.align
_Label_1629:
	.byte	'?'
	.ascii	"_temp_1617\0"
	.align
_Label_1630:
	.byte	'?'
	.ascii	"_temp_1616\0"
	.align
_Label_1631:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
_Label_1632:
	.byte	'?'
	.ascii	"_temp_1614\0"
	.align
_Label_1633:
	.byte	'?'
	.ascii	"_temp_1609\0"
	.align
_Label_1634:
	.byte	'?'
	.ascii	"_temp_1608\0"
	.align
_Label_1635:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
_Label_1636:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1637:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1638:
	.byte	'I'
	.ascii	"numFramesReturned\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1639
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
_Label_1639:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1640
	.word	_sourceFileName
	.word	287		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1640:
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
_Label_3084:
	push	r0
	sub	r1,1,r1
	bne	_Label_3084
	mov	1230,r13		! source line 1230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1234,r13		! source line 1234
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1235,r13		! source line 1235
	mov	"\0\0AS",r10
!   _temp_1641 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1643 = &_temp_1642
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1643 = _temp_1643 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1645:
!   Data Move: *_temp_1643 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1643 = _temp_1643 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1644 = _temp_1644 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1644) then goto _Label_1645
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1645
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1646 = &_temp_1642
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3085
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3085:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1641 = *_temp_1646  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3086:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3086
! RETURN STATEMENT...
	mov	1235,r13		! source line 1235
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
	.word	_Label_1647
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1648
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1649
	.word	-12
	.word	4
	.word	_Label_1650
	.word	-16
	.word	4
	.word	_Label_1651
	.word	-20
	.word	4
	.word	_Label_1652
	.word	-104
	.word	84
	.word	_Label_1653
	.word	-108
	.word	4
	.word	0
_Label_1647:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1648:
	.ascii	"Pself\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1646\0"
	.align
_Label_1650:
	.byte	'?'
	.ascii	"_temp_1644\0"
	.align
_Label_1651:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1652:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1653:
	.byte	'?'
	.ascii	"_temp_1641\0"
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
_Label_3087:
	push	r0
	sub	r1,1,r1
	bne	_Label_3087
	mov	1240,r13		! source line 1240
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1654 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1654  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1245,r13		! source line 1245
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1655 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1655  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1246,r13		! source line 1246
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1247,r13		! source line 1247
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1660 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1661 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1660  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1656:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1661 then goto _Label_1659		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1659
_Label_1657:
	mov	1247,r13		! source line 1247
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1662 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1662  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1248,r13		! source line 1248
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1664 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1664 [i ] into _temp_1665
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
!   _temp_1663 = _temp_1665		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1663  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1249,r13		! source line 1249
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1666 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1666  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1250,r13		! source line 1250
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1668 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1668 [i ] into _temp_1669
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
!   Data Move: _temp_1667 = *_temp_1669  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1667  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1251,r13		! source line 1251
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1670 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1670  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1252,r13		! source line 1252
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1671 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1671  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1253,r13		! source line 1253
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1672 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1672  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1254,r13		! source line 1254
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1255,r13		! source line 1255
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1674) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1673  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1673  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1255,r13		! source line 1255
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1675 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1675  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1256,r13		! source line 1256
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1257,r13		! source line 1257
	mov	"\0\0IF",r10
	mov	1257,r13		! source line 1257
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1679) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1678  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1678) then goto _Label_1677
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1677
!	jmp	_Label_1676
_Label_1676:
! THEN...
	mov	1258,r13		! source line 1258
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1258,r13		! source line 1258
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1681) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1680  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1680  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1258,r13		! source line 1258
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1682
_Label_1677:
! ELSE...
	mov	1260,r13		! source line 1260
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1683 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1683  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1260,r13		! source line 1260
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1682:
! CALL STATEMENT...
!   _temp_1684 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1684  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1262,r13		! source line 1262
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1263,r13		! source line 1263
	mov	"\0\0IF",r10
	mov	1263,r13		! source line 1263
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1687) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1685 else goto _Label_1686
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1686
	jmp	_Label_1685
_Label_1685:
! THEN...
	mov	1264,r13		! source line 1264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1688 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1688  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1264,r13		! source line 1264
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1689
_Label_1686:
! ELSE...
	mov	1266,r13		! source line 1266
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1690 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1690  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1266,r13		! source line 1266
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1689:
! CALL STATEMENT...
!   _temp_1691 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1691  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1268,r13		! source line 1268
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1269,r13		! source line 1269
	mov	"\0\0IF",r10
	mov	1269,r13		! source line 1269
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1694) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1692 else goto _Label_1693
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1693
	jmp	_Label_1692
_Label_1692:
! THEN...
	mov	1270,r13		! source line 1270
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1695 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1695  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1270,r13		! source line 1270
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1696
_Label_1693:
! ELSE...
	mov	1272,r13		! source line 1272
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1697 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1697  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1272,r13		! source line 1272
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1696:
! CALL STATEMENT...
!   _temp_1698 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1698  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1274,r13		! source line 1274
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1275,r13		! source line 1275
	mov	"\0\0IF",r10
	mov	1275,r13		! source line 1275
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1701) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1699 else goto _Label_1700
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1700
	jmp	_Label_1699
_Label_1699:
! THEN...
	mov	1276,r13		! source line 1276
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1702 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1702  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1276,r13		! source line 1276
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1703
_Label_1700:
! ELSE...
	mov	1278,r13		! source line 1278
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1704 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1704  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1278,r13		! source line 1278
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1703:
! CALL STATEMENT...
!   _temp_1705 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1705  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1280,r13		! source line 1280
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1281,r13		! source line 1281
	mov	"\0\0IF",r10
	mov	1281,r13		! source line 1281
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1708) then goto _runtimeErrorNullPointer
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
!   if result==true then goto _Label_1706 else goto _Label_1707
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1707
	jmp	_Label_1706
_Label_1706:
! THEN...
	mov	1282,r13		! source line 1282
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1709 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1709  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1282,r13		! source line 1282
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1710
_Label_1707:
! ELSE...
	mov	1284,r13		! source line 1284
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1711 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1711  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1284,r13		! source line 1284
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1710:
! CALL STATEMENT...
!   Call the function
	mov	1286,r13		! source line 1286
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1658:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1656
! END FOR
_Label_1659:
! RETURN STATEMENT...
	mov	1247,r13		! source line 1247
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
	.word	_Label_1712
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1713
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1714
	.word	-12
	.word	4
	.word	_Label_1715
	.word	-16
	.word	4
	.word	_Label_1716
	.word	-20
	.word	4
	.word	_Label_1717
	.word	-24
	.word	4
	.word	_Label_1718
	.word	-28
	.word	4
	.word	_Label_1719
	.word	-32
	.word	4
	.word	_Label_1720
	.word	-36
	.word	4
	.word	_Label_1721
	.word	-40
	.word	4
	.word	_Label_1722
	.word	-44
	.word	4
	.word	_Label_1723
	.word	-48
	.word	4
	.word	_Label_1724
	.word	-52
	.word	4
	.word	_Label_1725
	.word	-56
	.word	4
	.word	_Label_1726
	.word	-60
	.word	4
	.word	_Label_1727
	.word	-64
	.word	4
	.word	_Label_1728
	.word	-68
	.word	4
	.word	_Label_1729
	.word	-72
	.word	4
	.word	_Label_1730
	.word	-76
	.word	4
	.word	_Label_1731
	.word	-80
	.word	4
	.word	_Label_1732
	.word	-84
	.word	4
	.word	_Label_1733
	.word	-88
	.word	4
	.word	_Label_1734
	.word	-92
	.word	4
	.word	_Label_1735
	.word	-96
	.word	4
	.word	_Label_1736
	.word	-100
	.word	4
	.word	_Label_1737
	.word	-104
	.word	4
	.word	_Label_1738
	.word	-108
	.word	4
	.word	_Label_1739
	.word	-112
	.word	4
	.word	_Label_1740
	.word	-116
	.word	4
	.word	_Label_1741
	.word	-120
	.word	4
	.word	_Label_1742
	.word	-124
	.word	4
	.word	_Label_1743
	.word	-128
	.word	4
	.word	_Label_1744
	.word	-132
	.word	4
	.word	_Label_1745
	.word	-136
	.word	4
	.word	_Label_1746
	.word	-140
	.word	4
	.word	_Label_1747
	.word	-144
	.word	4
	.word	_Label_1748
	.word	-148
	.word	4
	.word	_Label_1749
	.word	-152
	.word	4
	.word	_Label_1750
	.word	-156
	.word	4
	.word	_Label_1751
	.word	-160
	.word	4
	.word	_Label_1752
	.word	-164
	.word	4
	.word	_Label_1753
	.word	-168
	.word	4
	.word	0
_Label_1712:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1713:
	.ascii	"Pself\0"
	.align
_Label_1714:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1715:
	.byte	'?'
	.ascii	"_temp_1709\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1708\0"
	.align
_Label_1717:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1718:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1719:
	.byte	'?'
	.ascii	"_temp_1702\0"
	.align
_Label_1720:
	.byte	'?'
	.ascii	"_temp_1701\0"
	.align
_Label_1721:
	.byte	'?'
	.ascii	"_temp_1698\0"
	.align
_Label_1722:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1723:
	.byte	'?'
	.ascii	"_temp_1695\0"
	.align
_Label_1724:
	.byte	'?'
	.ascii	"_temp_1694\0"
	.align
_Label_1725:
	.byte	'?'
	.ascii	"_temp_1691\0"
	.align
_Label_1726:
	.byte	'?'
	.ascii	"_temp_1690\0"
	.align
_Label_1727:
	.byte	'?'
	.ascii	"_temp_1688\0"
	.align
_Label_1728:
	.byte	'?'
	.ascii	"_temp_1687\0"
	.align
_Label_1729:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
_Label_1730:
	.byte	'?'
	.ascii	"_temp_1683\0"
	.align
_Label_1731:
	.byte	'?'
	.ascii	"_temp_1681\0"
	.align
_Label_1732:
	.byte	'?'
	.ascii	"_temp_1680\0"
	.align
_Label_1733:
	.byte	'?'
	.ascii	"_temp_1679\0"
	.align
_Label_1734:
	.byte	'?'
	.ascii	"_temp_1678\0"
	.align
_Label_1735:
	.byte	'?'
	.ascii	"_temp_1675\0"
	.align
_Label_1736:
	.byte	'?'
	.ascii	"_temp_1674\0"
	.align
_Label_1737:
	.byte	'?'
	.ascii	"_temp_1673\0"
	.align
_Label_1738:
	.byte	'?'
	.ascii	"_temp_1672\0"
	.align
_Label_1739:
	.byte	'?'
	.ascii	"_temp_1671\0"
	.align
_Label_1740:
	.byte	'?'
	.ascii	"_temp_1670\0"
	.align
_Label_1741:
	.byte	'?'
	.ascii	"_temp_1669\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1668\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1667\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1666\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1665\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1664\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1749:
	.byte	'?'
	.ascii	"_temp_1661\0"
	.align
_Label_1750:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1751:
	.byte	'?'
	.ascii	"_temp_1655\0"
	.align
_Label_1752:
	.byte	'?'
	.ascii	"_temp_1654\0"
	.align
_Label_1753:
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
_Label_3088:
	push	r0
	sub	r1,1,r1
	bne	_Label_3088
	mov	1292,r13		! source line 1292
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1297,r13		! source line 1297
	mov	"\0\0RE",r10
!   _temp_1756 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1756 [entry ] into _temp_1757
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
!   Data Move: _temp_1755 = *_temp_1757  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1754 = _temp_1755 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1754  (sizeInBytes=4)
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
	.word	_Label_1758
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1759
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1760
	.word	12
	.word	4
	.word	_Label_1761
	.word	-12
	.word	4
	.word	_Label_1762
	.word	-16
	.word	4
	.word	_Label_1763
	.word	-20
	.word	4
	.word	_Label_1764
	.word	-24
	.word	4
	.word	0
_Label_1758:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1759:
	.ascii	"Pself\0"
	.align
_Label_1760:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1757\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1756\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1755\0"
	.align
_Label_1764:
	.byte	'?'
	.ascii	"_temp_1754\0"
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
_Label_3089:
	push	r0
	sub	r1,1,r1
	bne	_Label_3089
	mov	1302,r13		! source line 1302
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1306,r13		! source line 1306
	mov	"\0\0RE",r10
!   _temp_1767 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1767 [entry ] into _temp_1768
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
!   Data Move: _temp_1766 = *_temp_1768  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1765 = _temp_1766 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1765  (sizeInBytes=4)
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
	.word	_Label_1769
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1770
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1771
	.word	12
	.word	4
	.word	_Label_1772
	.word	-12
	.word	4
	.word	_Label_1773
	.word	-16
	.word	4
	.word	_Label_1774
	.word	-20
	.word	4
	.word	_Label_1775
	.word	-24
	.word	4
	.word	0
_Label_1769:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1770:
	.ascii	"Pself\0"
	.align
_Label_1771:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1772:
	.byte	'?'
	.ascii	"_temp_1768\0"
	.align
_Label_1773:
	.byte	'?'
	.ascii	"_temp_1767\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1766\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1765\0"
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
_Label_3090:
	push	r0
	sub	r1,1,r1
	bne	_Label_3090
	mov	1311,r13		! source line 1311
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1316,r13		! source line 1316
	mov	"\0\0AS",r10
!   _temp_1776 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1776 [entry ] into _temp_1777
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
!   _temp_1781 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1781 [entry ] into _temp_1782
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
!   Data Move: _temp_1780 = *_temp_1782  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1779 = _temp_1780 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1778 = _temp_1779 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1777 = _temp_1778  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1316,r13		! source line 1316
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
	.word	_Label_1783
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1784
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1785
	.word	12
	.word	4
	.word	_Label_1786
	.word	16
	.word	4
	.word	_Label_1787
	.word	-12
	.word	4
	.word	_Label_1788
	.word	-16
	.word	4
	.word	_Label_1789
	.word	-20
	.word	4
	.word	_Label_1790
	.word	-24
	.word	4
	.word	_Label_1791
	.word	-28
	.word	4
	.word	_Label_1792
	.word	-32
	.word	4
	.word	_Label_1793
	.word	-36
	.word	4
	.word	0
_Label_1783:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1784:
	.ascii	"Pself\0"
	.align
_Label_1785:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1786:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1787:
	.byte	'?'
	.ascii	"_temp_1782\0"
	.align
_Label_1788:
	.byte	'?'
	.ascii	"_temp_1781\0"
	.align
_Label_1789:
	.byte	'?'
	.ascii	"_temp_1780\0"
	.align
_Label_1790:
	.byte	'?'
	.ascii	"_temp_1779\0"
	.align
_Label_1791:
	.byte	'?'
	.ascii	"_temp_1778\0"
	.align
_Label_1792:
	.byte	'?'
	.ascii	"_temp_1777\0"
	.align
_Label_1793:
	.byte	'?'
	.ascii	"_temp_1776\0"
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
_Label_3091:
	push	r0
	sub	r1,1,r1
	bne	_Label_3091
	mov	1321,r13		! source line 1321
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1325,r13		! source line 1325
	mov	"\0\0RE",r10
!   _temp_1797 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1797 [entry ] into _temp_1798
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
!   Data Move: _temp_1796 = *_temp_1798  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1795 = _temp_1796 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1795) then goto _Label_1799
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1799
!   _temp_1794 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1800
_Label_1799:
!   _temp_1794 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1800:
!   ReturnResult: _temp_1794  (sizeInBytes=1)
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
	.word	_Label_1801
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1802
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1803
	.word	12
	.word	4
	.word	_Label_1804
	.word	-16
	.word	4
	.word	_Label_1805
	.word	-20
	.word	4
	.word	_Label_1806
	.word	-24
	.word	4
	.word	_Label_1807
	.word	-28
	.word	4
	.word	_Label_1808
	.word	-9
	.word	1
	.word	0
_Label_1801:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1802:
	.ascii	"Pself\0"
	.align
_Label_1803:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1798\0"
	.align
_Label_1805:
	.byte	'?'
	.ascii	"_temp_1797\0"
	.align
_Label_1806:
	.byte	'?'
	.ascii	"_temp_1796\0"
	.align
_Label_1807:
	.byte	'?'
	.ascii	"_temp_1795\0"
	.align
_Label_1808:
	.byte	'C'
	.ascii	"_temp_1794\0"
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
_Label_3092:
	push	r0
	sub	r1,1,r1
	bne	_Label_3092
	mov	1330,r13		! source line 1330
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1334,r13		! source line 1334
	mov	"\0\0RE",r10
!   _temp_1812 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1812 [entry ] into _temp_1813
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
!   Data Move: _temp_1811 = *_temp_1813  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1810 = _temp_1811 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1810) then goto _Label_1814
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1814
!   _temp_1809 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1815
_Label_1814:
!   _temp_1809 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1815:
!   ReturnResult: _temp_1809  (sizeInBytes=1)
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
	.word	_Label_1816
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1817
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1818
	.word	12
	.word	4
	.word	_Label_1819
	.word	-16
	.word	4
	.word	_Label_1820
	.word	-20
	.word	4
	.word	_Label_1821
	.word	-24
	.word	4
	.word	_Label_1822
	.word	-28
	.word	4
	.word	_Label_1823
	.word	-9
	.word	1
	.word	0
_Label_1816:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1817:
	.ascii	"Pself\0"
	.align
_Label_1818:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1819:
	.byte	'?'
	.ascii	"_temp_1813\0"
	.align
_Label_1820:
	.byte	'?'
	.ascii	"_temp_1812\0"
	.align
_Label_1821:
	.byte	'?'
	.ascii	"_temp_1811\0"
	.align
_Label_1822:
	.byte	'?'
	.ascii	"_temp_1810\0"
	.align
_Label_1823:
	.byte	'C'
	.ascii	"_temp_1809\0"
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
_Label_3093:
	push	r0
	sub	r1,1,r1
	bne	_Label_3093
	mov	1339,r13		! source line 1339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1343,r13		! source line 1343
	mov	"\0\0RE",r10
!   _temp_1827 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1827 [entry ] into _temp_1828
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
!   Data Move: _temp_1826 = *_temp_1828  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1825 = _temp_1826 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1825) then goto _Label_1829
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1829
!   _temp_1824 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1830
_Label_1829:
!   _temp_1824 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1830:
!   ReturnResult: _temp_1824  (sizeInBytes=1)
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
	.word	_Label_1831
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1832
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1833
	.word	12
	.word	4
	.word	_Label_1834
	.word	-16
	.word	4
	.word	_Label_1835
	.word	-20
	.word	4
	.word	_Label_1836
	.word	-24
	.word	4
	.word	_Label_1837
	.word	-28
	.word	4
	.word	_Label_1838
	.word	-9
	.word	1
	.word	0
_Label_1831:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1832:
	.ascii	"Pself\0"
	.align
_Label_1833:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1834:
	.byte	'?'
	.ascii	"_temp_1828\0"
	.align
_Label_1835:
	.byte	'?'
	.ascii	"_temp_1827\0"
	.align
_Label_1836:
	.byte	'?'
	.ascii	"_temp_1826\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1825\0"
	.align
_Label_1838:
	.byte	'C'
	.ascii	"_temp_1824\0"
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
_Label_3094:
	push	r0
	sub	r1,1,r1
	bne	_Label_3094
	mov	1348,r13		! source line 1348
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1352,r13		! source line 1352
	mov	"\0\0RE",r10
!   _temp_1842 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1842 [entry ] into _temp_1843
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
!   Data Move: _temp_1841 = *_temp_1843  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1840 = _temp_1841 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1840) then goto _Label_1844
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1844
!   _temp_1839 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1845
_Label_1844:
!   _temp_1839 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1845:
!   ReturnResult: _temp_1839  (sizeInBytes=1)
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
	.word	_Label_1846
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1847
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1848
	.word	12
	.word	4
	.word	_Label_1849
	.word	-16
	.word	4
	.word	_Label_1850
	.word	-20
	.word	4
	.word	_Label_1851
	.word	-24
	.word	4
	.word	_Label_1852
	.word	-28
	.word	4
	.word	_Label_1853
	.word	-9
	.word	1
	.word	0
_Label_1846:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1847:
	.ascii	"Pself\0"
	.align
_Label_1848:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1849:
	.byte	'?'
	.ascii	"_temp_1843\0"
	.align
_Label_1850:
	.byte	'?'
	.ascii	"_temp_1842\0"
	.align
_Label_1851:
	.byte	'?'
	.ascii	"_temp_1841\0"
	.align
_Label_1852:
	.byte	'?'
	.ascii	"_temp_1840\0"
	.align
_Label_1853:
	.byte	'C'
	.ascii	"_temp_1839\0"
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
_Label_3095:
	push	r0
	sub	r1,1,r1
	bne	_Label_3095
	mov	1357,r13		! source line 1357
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1361,r13		! source line 1361
	mov	"\0\0AS",r10
!   _temp_1854 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1854 [entry ] into _temp_1855
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
!   _temp_1858 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1858 [entry ] into _temp_1859
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
!   Data Move: _temp_1857 = *_temp_1859  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1856 = _temp_1857 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1855 = _temp_1856  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1361,r13		! source line 1361
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
	.word	_Label_1860
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1861
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1862
	.word	12
	.word	4
	.word	_Label_1863
	.word	-12
	.word	4
	.word	_Label_1864
	.word	-16
	.word	4
	.word	_Label_1865
	.word	-20
	.word	4
	.word	_Label_1866
	.word	-24
	.word	4
	.word	_Label_1867
	.word	-28
	.word	4
	.word	_Label_1868
	.word	-32
	.word	4
	.word	0
_Label_1860:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1861:
	.ascii	"Pself\0"
	.align
_Label_1862:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1859\0"
	.align
_Label_1864:
	.byte	'?'
	.ascii	"_temp_1858\0"
	.align
_Label_1865:
	.byte	'?'
	.ascii	"_temp_1857\0"
	.align
_Label_1866:
	.byte	'?'
	.ascii	"_temp_1856\0"
	.align
_Label_1867:
	.byte	'?'
	.ascii	"_temp_1855\0"
	.align
_Label_1868:
	.byte	'?'
	.ascii	"_temp_1854\0"
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
_Label_3096:
	push	r0
	sub	r1,1,r1
	bne	_Label_3096
	mov	1366,r13		! source line 1366
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1370,r13		! source line 1370
	mov	"\0\0AS",r10
!   _temp_1869 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1869 [entry ] into _temp_1870
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
!   _temp_1873 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1873 [entry ] into _temp_1874
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
!   Data Move: _temp_1872 = *_temp_1874  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1871 = _temp_1872 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1870 = _temp_1871  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1370,r13		! source line 1370
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
	.word	_Label_1875
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1876
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1877
	.word	12
	.word	4
	.word	_Label_1878
	.word	-12
	.word	4
	.word	_Label_1879
	.word	-16
	.word	4
	.word	_Label_1880
	.word	-20
	.word	4
	.word	_Label_1881
	.word	-24
	.word	4
	.word	_Label_1882
	.word	-28
	.word	4
	.word	_Label_1883
	.word	-32
	.word	4
	.word	0
_Label_1875:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1876:
	.ascii	"Pself\0"
	.align
_Label_1877:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1874\0"
	.align
_Label_1879:
	.byte	'?'
	.ascii	"_temp_1873\0"
	.align
_Label_1880:
	.byte	'?'
	.ascii	"_temp_1872\0"
	.align
_Label_1881:
	.byte	'?'
	.ascii	"_temp_1871\0"
	.align
_Label_1882:
	.byte	'?'
	.ascii	"_temp_1870\0"
	.align
_Label_1883:
	.byte	'?'
	.ascii	"_temp_1869\0"
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
_Label_3097:
	push	r0
	sub	r1,1,r1
	bne	_Label_3097
	mov	1375,r13		! source line 1375
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1379,r13		! source line 1379
	mov	"\0\0AS",r10
!   _temp_1884 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1884 [entry ] into _temp_1885
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
!   _temp_1888 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1888 [entry ] into _temp_1889
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
!   Data Move: _temp_1887 = *_temp_1889  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1886 = _temp_1887 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1885 = _temp_1886  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1379,r13		! source line 1379
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
	.word	_Label_1890
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1891
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1892
	.word	12
	.word	4
	.word	_Label_1893
	.word	-12
	.word	4
	.word	_Label_1894
	.word	-16
	.word	4
	.word	_Label_1895
	.word	-20
	.word	4
	.word	_Label_1896
	.word	-24
	.word	4
	.word	_Label_1897
	.word	-28
	.word	4
	.word	_Label_1898
	.word	-32
	.word	4
	.word	0
_Label_1890:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1891:
	.ascii	"Pself\0"
	.align
_Label_1892:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1893:
	.byte	'?'
	.ascii	"_temp_1889\0"
	.align
_Label_1894:
	.byte	'?'
	.ascii	"_temp_1888\0"
	.align
_Label_1895:
	.byte	'?'
	.ascii	"_temp_1887\0"
	.align
_Label_1896:
	.byte	'?'
	.ascii	"_temp_1886\0"
	.align
_Label_1897:
	.byte	'?'
	.ascii	"_temp_1885\0"
	.align
_Label_1898:
	.byte	'?'
	.ascii	"_temp_1884\0"
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
_Label_3098:
	push	r0
	sub	r1,1,r1
	bne	_Label_3098
	mov	1384,r13		! source line 1384
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1388,r13		! source line 1388
	mov	"\0\0AS",r10
!   _temp_1899 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1899 [entry ] into _temp_1900
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
!   _temp_1903 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1903 [entry ] into _temp_1904
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
!   Data Move: _temp_1902 = *_temp_1904  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1901 = _temp_1902 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1900 = _temp_1901  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1388,r13		! source line 1388
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
	.word	_Label_1905
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1906
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1907
	.word	12
	.word	4
	.word	_Label_1908
	.word	-12
	.word	4
	.word	_Label_1909
	.word	-16
	.word	4
	.word	_Label_1910
	.word	-20
	.word	4
	.word	_Label_1911
	.word	-24
	.word	4
	.word	_Label_1912
	.word	-28
	.word	4
	.word	_Label_1913
	.word	-32
	.word	4
	.word	0
_Label_1905:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1906:
	.ascii	"Pself\0"
	.align
_Label_1907:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1904\0"
	.align
_Label_1909:
	.byte	'?'
	.ascii	"_temp_1903\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1902\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1901\0"
	.align
_Label_1912:
	.byte	'?'
	.ascii	"_temp_1900\0"
	.align
_Label_1913:
	.byte	'?'
	.ascii	"_temp_1899\0"
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
_Label_3099:
	push	r0
	sub	r1,1,r1
	bne	_Label_3099
	mov	1393,r13		! source line 1393
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1397,r13		! source line 1397
	mov	"\0\0AS",r10
!   _temp_1914 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1914 [entry ] into _temp_1915
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
!   _temp_1918 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1918 [entry ] into _temp_1919
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
!   Data Move: _temp_1917 = *_temp_1919  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1916 = _temp_1917 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1915 = _temp_1916  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1397,r13		! source line 1397
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
	.word	_Label_1920
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1921
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1922
	.word	12
	.word	4
	.word	_Label_1923
	.word	-12
	.word	4
	.word	_Label_1924
	.word	-16
	.word	4
	.word	_Label_1925
	.word	-20
	.word	4
	.word	_Label_1926
	.word	-24
	.word	4
	.word	_Label_1927
	.word	-28
	.word	4
	.word	_Label_1928
	.word	-32
	.word	4
	.word	0
_Label_1920:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1921:
	.ascii	"Pself\0"
	.align
_Label_1922:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1923:
	.byte	'?'
	.ascii	"_temp_1919\0"
	.align
_Label_1924:
	.byte	'?'
	.ascii	"_temp_1918\0"
	.align
_Label_1925:
	.byte	'?'
	.ascii	"_temp_1917\0"
	.align
_Label_1926:
	.byte	'?'
	.ascii	"_temp_1916\0"
	.align
_Label_1927:
	.byte	'?'
	.ascii	"_temp_1915\0"
	.align
_Label_1928:
	.byte	'?'
	.ascii	"_temp_1914\0"
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
_Label_3100:
	push	r0
	sub	r1,1,r1
	bne	_Label_3100
	mov	1402,r13		! source line 1402
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1406,r13		! source line 1406
	mov	"\0\0AS",r10
!   _temp_1929 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1929 [entry ] into _temp_1930
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
!   _temp_1933 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1933 [entry ] into _temp_1934
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
!   Data Move: _temp_1932 = *_temp_1934  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1931 = _temp_1932 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1930 = _temp_1931  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1406,r13		! source line 1406
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
	.word	_Label_1935
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1936
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1937
	.word	12
	.word	4
	.word	_Label_1938
	.word	-12
	.word	4
	.word	_Label_1939
	.word	-16
	.word	4
	.word	_Label_1940
	.word	-20
	.word	4
	.word	_Label_1941
	.word	-24
	.word	4
	.word	_Label_1942
	.word	-28
	.word	4
	.word	_Label_1943
	.word	-32
	.word	4
	.word	0
_Label_1935:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1936:
	.ascii	"Pself\0"
	.align
_Label_1937:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1938:
	.byte	'?'
	.ascii	"_temp_1934\0"
	.align
_Label_1939:
	.byte	'?'
	.ascii	"_temp_1933\0"
	.align
_Label_1940:
	.byte	'?'
	.ascii	"_temp_1932\0"
	.align
_Label_1941:
	.byte	'?'
	.ascii	"_temp_1931\0"
	.align
_Label_1942:
	.byte	'?'
	.ascii	"_temp_1930\0"
	.align
_Label_1943:
	.byte	'?'
	.ascii	"_temp_1929\0"
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
_Label_3101:
	push	r0
	sub	r1,1,r1
	bne	_Label_3101
	mov	1411,r13		! source line 1411
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1415,r13		! source line 1415
	mov	"\0\0AS",r10
!   _temp_1944 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1944 [entry ] into _temp_1945
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
!   _temp_1948 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1948 [entry ] into _temp_1949
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
!   Data Move: _temp_1947 = *_temp_1949  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1946 = _temp_1947 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1945 = _temp_1946  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1415,r13		! source line 1415
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
	.word	_Label_1950
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1951
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1952
	.word	12
	.word	4
	.word	_Label_1953
	.word	-12
	.word	4
	.word	_Label_1954
	.word	-16
	.word	4
	.word	_Label_1955
	.word	-20
	.word	4
	.word	_Label_1956
	.word	-24
	.word	4
	.word	_Label_1957
	.word	-28
	.word	4
	.word	_Label_1958
	.word	-32
	.word	4
	.word	0
_Label_1950:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1951:
	.ascii	"Pself\0"
	.align
_Label_1952:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1953:
	.byte	'?'
	.ascii	"_temp_1949\0"
	.align
_Label_1954:
	.byte	'?'
	.ascii	"_temp_1948\0"
	.align
_Label_1955:
	.byte	'?'
	.ascii	"_temp_1947\0"
	.align
_Label_1956:
	.byte	'?'
	.ascii	"_temp_1946\0"
	.align
_Label_1957:
	.byte	'?'
	.ascii	"_temp_1945\0"
	.align
_Label_1958:
	.byte	'?'
	.ascii	"_temp_1944\0"
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
_Label_3102:
	push	r0
	sub	r1,1,r1
	bne	_Label_3102
	mov	1420,r13		! source line 1420
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1424,r13		! source line 1424
	mov	"\0\0AS",r10
!   _temp_1959 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1959 [entry ] into _temp_1960
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
!   _temp_1963 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1963 [entry ] into _temp_1964
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
!   Data Move: _temp_1962 = *_temp_1964  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1961 = _temp_1962 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1960 = _temp_1961  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1424,r13		! source line 1424
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
	.word	_Label_1965
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1966
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1967
	.word	12
	.word	4
	.word	_Label_1968
	.word	-12
	.word	4
	.word	_Label_1969
	.word	-16
	.word	4
	.word	_Label_1970
	.word	-20
	.word	4
	.word	_Label_1971
	.word	-24
	.word	4
	.word	_Label_1972
	.word	-28
	.word	4
	.word	_Label_1973
	.word	-32
	.word	4
	.word	0
_Label_1965:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1966:
	.ascii	"Pself\0"
	.align
_Label_1967:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1968:
	.byte	'?'
	.ascii	"_temp_1964\0"
	.align
_Label_1969:
	.byte	'?'
	.ascii	"_temp_1963\0"
	.align
_Label_1970:
	.byte	'?'
	.ascii	"_temp_1962\0"
	.align
_Label_1971:
	.byte	'?'
	.ascii	"_temp_1961\0"
	.align
_Label_1972:
	.byte	'?'
	.ascii	"_temp_1960\0"
	.align
_Label_1973:
	.byte	'?'
	.ascii	"_temp_1959\0"
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
_Label_3103:
	push	r0
	sub	r1,1,r1
	bne	_Label_3103
	mov	1429,r13		! source line 1429
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1975 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1975 [0 ] into _temp_1976
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
!   _temp_1974 = _temp_1976		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1977 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1974  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1977  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1435,r13		! source line 1435
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1435,r13		! source line 1435
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
	.word	_Label_1978
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1979
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1980
	.word	-12
	.word	4
	.word	_Label_1981
	.word	-16
	.word	4
	.word	_Label_1982
	.word	-20
	.word	4
	.word	_Label_1983
	.word	-24
	.word	4
	.word	0
_Label_1978:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1979:
	.ascii	"Pself\0"
	.align
_Label_1980:
	.byte	'?'
	.ascii	"_temp_1977\0"
	.align
_Label_1981:
	.byte	'?'
	.ascii	"_temp_1976\0"
	.align
_Label_1982:
	.byte	'?'
	.ascii	"_temp_1975\0"
	.align
_Label_1983:
	.byte	'?'
	.ascii	"_temp_1974\0"
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
_Label_3104:
	push	r0
	sub	r1,1,r1
	bne	_Label_3104
	mov	1440,r13		! source line 1440
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1455,r13		! source line 1455
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1984
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1984
	jmp	_Label_1985
_Label_1984:
! THEN...
	mov	1456,r13		! source line 1456
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1456,r13		! source line 1456
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1986
_Label_1985:
! ELSE...
	mov	1457,r13		! source line 1457
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1457,r13		! source line 1457
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1988		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1988
!	jmp	_Label_1987
_Label_1987:
! THEN...
	mov	1458,r13		! source line 1458
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1458,r13		! source line 1458
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1988:
! END IF...
_Label_1986:
! ASSIGNMENT STATEMENT...
	mov	1460,r13		! source line 1460
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
	mov	1461,r13		! source line 1461
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
	mov	1464,r13		! source line 1464
	mov	"\0\0WH",r10
_Label_1989:
!	jmp	_Label_1990
_Label_1990:
	mov	1464,r13		! source line 1464
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1465,r13		! source line 1465
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1993		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1993
!	jmp	_Label_1992
_Label_1992:
! THEN...
	mov	1466,r13		! source line 1466
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1994 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1994  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1466,r13		! source line 1466
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1467,r13		! source line 1467
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1993:
! IF STATEMENT...
	mov	1469,r13		! source line 1469
	mov	"\0\0IF",r10
	mov	1469,r13		! source line 1469
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1998) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_1997  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1997 then goto _Label_1996 else goto _Label_1995
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1995
	jmp	_Label_1996
_Label_1995:
! THEN...
	mov	1470,r13		! source line 1470
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1999 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1999  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1470,r13		! source line 1470
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1471,r13		! source line 1471
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1996:
! ASSIGNMENT STATEMENT...
	mov	1473,r13		! source line 1473
	mov	"\0\0AS",r10
	mov	1473,r13		! source line 1473
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2001) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2000  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2000 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1475,r13		! source line 1475
	mov	"\0\0WH",r10
_Label_2002:
!   if offset >= 8192 then goto _Label_2004		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2004
!	jmp	_Label_2003
_Label_2003:
	mov	1475,r13		! source line 1475
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1478,r13		! source line 1478
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2005 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2005  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1479,r13		! source line 1479
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1480,r13		! source line 1480
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1481,r13		! source line 1481
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1482,r13		! source line 1482
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1483,r13		! source line 1483
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2007		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2007
!	jmp	_Label_2006
_Label_2006:
! THEN...
	mov	1484,r13		! source line 1484
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1484,r13		! source line 1484
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2007:
! END WHILE...
	jmp	_Label_2002
_Label_2004:
! ASSIGNMENT STATEMENT...
	mov	1487,r13		! source line 1487
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1488,r13		! source line 1488
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_1989
_Label_1991:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2008
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2009
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2010
	.word	12
	.word	4
	.word	_Label_2011
	.word	16
	.word	4
	.word	_Label_2012
	.word	20
	.word	4
	.word	_Label_2013
	.word	-9
	.word	1
	.word	_Label_2014
	.word	-16
	.word	4
	.word	_Label_2015
	.word	-20
	.word	4
	.word	_Label_2016
	.word	-24
	.word	4
	.word	_Label_2017
	.word	-28
	.word	4
	.word	_Label_2018
	.word	-10
	.word	1
	.word	_Label_2019
	.word	-32
	.word	4
	.word	_Label_2020
	.word	-36
	.word	4
	.word	_Label_2021
	.word	-40
	.word	4
	.word	_Label_2022
	.word	-44
	.word	4
	.word	_Label_2023
	.word	-48
	.word	4
	.word	0
_Label_2008:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2009:
	.ascii	"Pself\0"
	.align
_Label_2010:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2011:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2012:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2013:
	.byte	'C'
	.ascii	"_temp_2005\0"
	.align
_Label_2014:
	.byte	'?'
	.ascii	"_temp_2001\0"
	.align
_Label_2015:
	.byte	'?'
	.ascii	"_temp_2000\0"
	.align
_Label_2016:
	.byte	'?'
	.ascii	"_temp_1999\0"
	.align
_Label_2017:
	.byte	'?'
	.ascii	"_temp_1998\0"
	.align
_Label_2018:
	.byte	'C'
	.ascii	"_temp_1997\0"
	.align
_Label_2019:
	.byte	'?'
	.ascii	"_temp_1994\0"
	.align
_Label_2020:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2021:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2022:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2023:
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
_Label_3105:
	push	r0
	sub	r1,1,r1
	bne	_Label_3105
	mov	1494,r13		! source line 1494
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1505,r13		! source line 1505
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2024
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2024
	jmp	_Label_2025
_Label_2024:
! THEN...
	mov	1506,r13		! source line 1506
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1506,r13		! source line 1506
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2026
_Label_2025:
! ELSE...
	mov	1507,r13		! source line 1507
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1507,r13		! source line 1507
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2028		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2028
!	jmp	_Label_2027
_Label_2027:
! THEN...
	mov	1508,r13		! source line 1508
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1508,r13		! source line 1508
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2028:
! END IF...
_Label_2026:
! ASSIGNMENT STATEMENT...
	mov	1510,r13		! source line 1510
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
	mov	1511,r13		! source line 1511
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
	mov	1512,r13		! source line 1512
	mov	"\0\0WH",r10
_Label_2029:
!	jmp	_Label_2030
_Label_2030:
	mov	1512,r13		! source line 1512
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1513,r13		! source line 1513
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2035		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2035
	jmp	_Label_2032
_Label_2035:
	mov	1514,r13		! source line 1514
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2037) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2036  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2036 then goto _Label_2034 else goto _Label_2032
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2032
	jmp	_Label_2034
_Label_2034:
	mov	1515,r13		! source line 1515
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2039) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2038  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2038 then goto _Label_2033 else goto _Label_2032
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2032
	jmp	_Label_2033
_Label_2032:
! THEN...
	mov	1516,r13		! source line 1516
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1516,r13		! source line 1516
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2033:
! ASSIGNMENT STATEMENT...
	mov	1518,r13		! source line 1518
	mov	"\0\0AS",r10
	mov	1518,r13		! source line 1518
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2041) then goto _runtimeErrorNullPointer
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
!   Retrieve Result: targetName=_temp_2040  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2040 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1519,r13		! source line 1519
	mov	"\0\0WH",r10
_Label_2042:
!   if offset >= 8192 then goto _Label_2044		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2044
!	jmp	_Label_2043
_Label_2043:
	mov	1519,r13		! source line 1519
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1520,r13		! source line 1520
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2045 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2045  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1521,r13		! source line 1521
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1522,r13		! source line 1522
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1523,r13		! source line 1523
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1524,r13		! source line 1524
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1525,r13		! source line 1525
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2047		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2047
!	jmp	_Label_2046
_Label_2046:
! THEN...
	mov	1526,r13		! source line 1526
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1526,r13		! source line 1526
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2047:
! END WHILE...
	jmp	_Label_2042
_Label_2044:
! ASSIGNMENT STATEMENT...
	mov	1529,r13		! source line 1529
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1530,r13		! source line 1530
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2029
_Label_2031:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2048
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2049
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2050
	.word	12
	.word	4
	.word	_Label_2051
	.word	16
	.word	4
	.word	_Label_2052
	.word	20
	.word	4
	.word	_Label_2053
	.word	-9
	.word	1
	.word	_Label_2054
	.word	-16
	.word	4
	.word	_Label_2055
	.word	-20
	.word	4
	.word	_Label_2056
	.word	-24
	.word	4
	.word	_Label_2057
	.word	-10
	.word	1
	.word	_Label_2058
	.word	-28
	.word	4
	.word	_Label_2059
	.word	-11
	.word	1
	.word	_Label_2060
	.word	-32
	.word	4
	.word	_Label_2061
	.word	-36
	.word	4
	.word	_Label_2062
	.word	-40
	.word	4
	.word	_Label_2063
	.word	-44
	.word	4
	.word	0
_Label_2048:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2049:
	.ascii	"Pself\0"
	.align
_Label_2050:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2051:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2052:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2053:
	.byte	'C'
	.ascii	"_temp_2045\0"
	.align
_Label_2054:
	.byte	'?'
	.ascii	"_temp_2041\0"
	.align
_Label_2055:
	.byte	'?'
	.ascii	"_temp_2040\0"
	.align
_Label_2056:
	.byte	'?'
	.ascii	"_temp_2039\0"
	.align
_Label_2057:
	.byte	'C'
	.ascii	"_temp_2038\0"
	.align
_Label_2058:
	.byte	'?'
	.ascii	"_temp_2037\0"
	.align
_Label_2059:
	.byte	'C'
	.ascii	"_temp_2036\0"
	.align
_Label_2060:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2061:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2062:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2063:
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
_Label_3106:
	push	r0
	sub	r1,1,r1
	bne	_Label_3106
	mov	1536,r13		! source line 1536
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1560,r13		! source line 1560
	mov	"\0\0IF",r10
	mov	1560,r13		! source line 1560
	mov	"\0\0SE",r10
!   _temp_2067 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2068) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2067  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2066  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2066 >= 4 then goto _Label_2065		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2065
!	jmp	_Label_2064
_Label_2064:
! THEN...
	mov	1563,r13		! source line 1563
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1563,r13		! source line 1563
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2065:
! IF STATEMENT...
	mov	1567,r13		! source line 1567
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2070		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2070
!	jmp	_Label_2069
_Label_2069:
! THEN...
	mov	1568,r13		! source line 1568
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1568,r13		! source line 1568
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2070:
! ASSIGNMENT STATEMENT...
	mov	1571,r13		! source line 1571
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
	mov	1573,r13		! source line 1573
	mov	"\0\0RE",r10
	mov	1573,r13		! source line 1573
	mov	"\0\0SE",r10
!   _temp_2073 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2072 = _temp_2073 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2074 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2075) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2072  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2074  sizeInBytes=4
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
!   Retrieve Result: targetName=_temp_2071  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2071  (sizeInBytes=4)
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
	.word	_Label_2076
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2077
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2078
	.word	12
	.word	4
	.word	_Label_2079
	.word	16
	.word	4
	.word	_Label_2080
	.word	20
	.word	4
	.word	_Label_2081
	.word	-12
	.word	4
	.word	_Label_2082
	.word	-16
	.word	4
	.word	_Label_2083
	.word	-20
	.word	4
	.word	_Label_2084
	.word	-24
	.word	4
	.word	_Label_2085
	.word	-28
	.word	4
	.word	_Label_2086
	.word	-32
	.word	4
	.word	_Label_2087
	.word	-36
	.word	4
	.word	_Label_2088
	.word	-40
	.word	4
	.word	_Label_2089
	.word	-44
	.word	4
	.word	0
_Label_2076:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2077:
	.ascii	"Pself\0"
	.align
_Label_2078:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2079:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2080:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2081:
	.byte	'?'
	.ascii	"_temp_2075\0"
	.align
_Label_2082:
	.byte	'?'
	.ascii	"_temp_2074\0"
	.align
_Label_2083:
	.byte	'?'
	.ascii	"_temp_2073\0"
	.align
_Label_2084:
	.byte	'?'
	.ascii	"_temp_2072\0"
	.align
_Label_2085:
	.byte	'?'
	.ascii	"_temp_2071\0"
	.align
_Label_2086:
	.byte	'?'
	.ascii	"_temp_2068\0"
	.align
_Label_2087:
	.byte	'?'
	.ascii	"_temp_2067\0"
	.align
_Label_2088:
	.byte	'?'
	.ascii	"_temp_2066\0"
	.align
_Label_2089:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2090
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2090:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2091
	.word	_sourceFileName
	.word	320		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2091:
	.ascii	"DiskDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_DiskDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_1,r1
	push	r1
	mov	7,r1
_Label_3107:
	push	r0
	sub	r1,1,r1
	bne	_Label_3107
	mov	2024,r13		! source line 2024
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2092 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2092  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2025,r13		! source line 2025
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2026,r13		! source line 2026
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2027,r13		! source line 2027
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2028,r13		! source line 2028
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2029,r13		! source line 2029
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2030,r13		! source line 2030
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2031,r13		! source line 2031
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2032,r13		! source line 2032
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: semUsedInSynchMethods = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,28,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   semUsedInSynchMethods = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+28]
! SEND STATEMENT...
	mov	2033,r13		! source line 2033
	mov	"\0\0SE",r10
!   _temp_2094 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2034,r13		! source line 2034
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: diskBusy = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,48,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   diskBusy = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	2035,r13		! source line 2035
	mov	"\0\0SE",r10
!   _temp_2096 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
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
	mov	2035,r13		! source line 2035
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_1:
	.word	_sourceFileName
	.word	_Label_2097
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2098
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2099
	.word	-12
	.word	4
	.word	_Label_2100
	.word	-16
	.word	4
	.word	_Label_2101
	.word	-20
	.word	4
	.word	_Label_2102
	.word	-24
	.word	4
	.word	_Label_2103
	.word	-28
	.word	4
	.word	0
_Label_2097:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2098:
	.ascii	"Pself\0"
	.align
_Label_2099:
	.byte	'?'
	.ascii	"_temp_2096\0"
	.align
_Label_2100:
	.byte	'?'
	.ascii	"_temp_2095\0"
	.align
_Label_2101:
	.byte	'?'
	.ascii	"_temp_2094\0"
	.align
_Label_2102:
	.byte	'?'
	.ascii	"_temp_2093\0"
	.align
_Label_2103:
	.byte	'?'
	.ascii	"_temp_2092\0"
	.align
! 
! ===============  METHOD SynchReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_2,r1
	push	r1
	mov	16,r1
_Label_3108:
	push	r0
	sub	r1,1,r1
	bne	_Label_3108
	mov	2040,r13		! source line 2040
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2053,r13		! source line 2053
	mov	"\0\0SE",r10
!   _temp_2104 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2054,r13		! source line 2054
	mov	"\0\0WH",r10
_Label_2105:
!	jmp	_Label_2106
_Label_2106:
	mov	2054,r13		! source line 2054
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2056,r13		! source line 2056
	mov	"\0\0SE",r10
!   _temp_2108 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2109) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2108  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartReadSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	2058,r13		! source line 2058
	mov	"\0\0SE",r10
!   _temp_2110 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2061,r13		! source line 2061
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2119 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2113
	cmp	r1,2
	be	_Label_2114
	cmp	r1,3
	be	_Label_2115
	cmp	r1,4
	be	_Label_2116
	cmp	r1,5
	be	_Label_2117
	cmp	r1,6
	be	_Label_2118
	jmp	_Label_2111
! CASE 1...
_Label_2113:
! SEND STATEMENT...
	mov	2063,r13		! source line 2063
	mov	"\0\0SE",r10
!   _temp_2120 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2064,r13		! source line 2064
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2114:
! CALL STATEMENT...
!   _temp_2121 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2121  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2066,r13		! source line 2066
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2115:
! CALL STATEMENT...
!   _temp_2122 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2122  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2068,r13		! source line 2068
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2116:
! CALL STATEMENT...
!   _temp_2123 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2123  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2070,r13		! source line 2070
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2117:
! BREAK STATEMENT...
	mov	2074,r13		! source line 2074
	mov	"\0\0BR",r10
	jmp	_Label_2112
! CASE 6...
_Label_2118:
! CALL STATEMENT...
!   _temp_2124 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2124  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2076,r13		! source line 2076
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2111:
! CALL STATEMENT...
!   _temp_2125 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2125  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2078,r13		! source line 2078
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2112:
! END WHILE...
	jmp	_Label_2105
_Label_2107:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2126
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2127
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2128
	.word	12
	.word	4
	.word	_Label_2129
	.word	16
	.word	4
	.word	_Label_2130
	.word	20
	.word	4
	.word	_Label_2131
	.word	-12
	.word	4
	.word	_Label_2132
	.word	-16
	.word	4
	.word	_Label_2133
	.word	-20
	.word	4
	.word	_Label_2134
	.word	-24
	.word	4
	.word	_Label_2135
	.word	-28
	.word	4
	.word	_Label_2136
	.word	-32
	.word	4
	.word	_Label_2137
	.word	-36
	.word	4
	.word	_Label_2138
	.word	-40
	.word	4
	.word	_Label_2139
	.word	-44
	.word	4
	.word	_Label_2140
	.word	-48
	.word	4
	.word	_Label_2141
	.word	-52
	.word	4
	.word	0
_Label_2126:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2127:
	.ascii	"Pself\0"
	.align
_Label_2128:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2129:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2130:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2131:
	.byte	'?'
	.ascii	"_temp_2125\0"
	.align
_Label_2132:
	.byte	'?'
	.ascii	"_temp_2124\0"
	.align
_Label_2133:
	.byte	'?'
	.ascii	"_temp_2123\0"
	.align
_Label_2134:
	.byte	'?'
	.ascii	"_temp_2122\0"
	.align
_Label_2135:
	.byte	'?'
	.ascii	"_temp_2121\0"
	.align
_Label_2136:
	.byte	'?'
	.ascii	"_temp_2120\0"
	.align
_Label_2137:
	.byte	'?'
	.ascii	"_temp_2119\0"
	.align
_Label_2138:
	.byte	'?'
	.ascii	"_temp_2110\0"
	.align
_Label_2139:
	.byte	'?'
	.ascii	"_temp_2109\0"
	.align
_Label_2140:
	.byte	'?'
	.ascii	"_temp_2108\0"
	.align
_Label_2141:
	.byte	'?'
	.ascii	"_temp_2104\0"
	.align
! 
! ===============  METHOD StartReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_3,r1
	push	r1
	mov	2087,r13		! source line 2087
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2102,r13		! source line 2102
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2105,r13		! source line 2105
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2106,r13		! source line 2106
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2107,r13		! source line 2107
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2108,r13		! source line 2108
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2108,r13		! source line 2108
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_3:
	.word	_sourceFileName
	.word	_Label_2142
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2143
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2144
	.word	12
	.word	4
	.word	_Label_2145
	.word	16
	.word	4
	.word	_Label_2146
	.word	20
	.word	4
	.word	_Label_2147
	.word	24
	.word	4
	.word	0
_Label_2142:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2143:
	.ascii	"Pself\0"
	.align
_Label_2144:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2145:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2146:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2147:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  METHOD SynchWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_4,r1
	push	r1
	mov	16,r1
_Label_3109:
	push	r0
	sub	r1,1,r1
	bne	_Label_3109
	mov	2113,r13		! source line 2113
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2125,r13		! source line 2125
	mov	"\0\0SE",r10
!   _temp_2148 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2126,r13		! source line 2126
	mov	"\0\0WH",r10
_Label_2149:
!	jmp	_Label_2150
_Label_2150:
	mov	2126,r13		! source line 2126
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2127,r13		! source line 2127
	mov	"\0\0SE",r10
!   _temp_2152 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2153) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2152  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartWriteSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2129,r13		! source line 2129
	mov	"\0\0SE",r10
!   _temp_2154 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2132,r13		! source line 2132
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2163 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2157
	cmp	r1,2
	be	_Label_2158
	cmp	r1,3
	be	_Label_2159
	cmp	r1,4
	be	_Label_2160
	cmp	r1,5
	be	_Label_2161
	cmp	r1,6
	be	_Label_2162
	jmp	_Label_2155
! CASE 1...
_Label_2157:
! SEND STATEMENT...
	mov	2134,r13		! source line 2134
	mov	"\0\0SE",r10
!   _temp_2164 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2135,r13		! source line 2135
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2158:
! CALL STATEMENT...
!   _temp_2165 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2165  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2137,r13		! source line 2137
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2159:
! CALL STATEMENT...
!   _temp_2166 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2166  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2139,r13		! source line 2139
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2160:
! CALL STATEMENT...
!   _temp_2167 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2167  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2141,r13		! source line 2141
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2161:
! BREAK STATEMENT...
	mov	2145,r13		! source line 2145
	mov	"\0\0BR",r10
	jmp	_Label_2156
! CASE 6...
_Label_2162:
! CALL STATEMENT...
!   _temp_2168 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2168  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2147,r13		! source line 2147
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2155:
! CALL STATEMENT...
!   _temp_2169 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2169  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2149,r13		! source line 2149
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2156:
! END WHILE...
	jmp	_Label_2149
_Label_2151:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2170
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2171
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2172
	.word	12
	.word	4
	.word	_Label_2173
	.word	16
	.word	4
	.word	_Label_2174
	.word	20
	.word	4
	.word	_Label_2175
	.word	-12
	.word	4
	.word	_Label_2176
	.word	-16
	.word	4
	.word	_Label_2177
	.word	-20
	.word	4
	.word	_Label_2178
	.word	-24
	.word	4
	.word	_Label_2179
	.word	-28
	.word	4
	.word	_Label_2180
	.word	-32
	.word	4
	.word	_Label_2181
	.word	-36
	.word	4
	.word	_Label_2182
	.word	-40
	.word	4
	.word	_Label_2183
	.word	-44
	.word	4
	.word	_Label_2184
	.word	-48
	.word	4
	.word	_Label_2185
	.word	-52
	.word	4
	.word	0
_Label_2170:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2171:
	.ascii	"Pself\0"
	.align
_Label_2172:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2173:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2174:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2175:
	.byte	'?'
	.ascii	"_temp_2169\0"
	.align
_Label_2176:
	.byte	'?'
	.ascii	"_temp_2168\0"
	.align
_Label_2177:
	.byte	'?'
	.ascii	"_temp_2167\0"
	.align
_Label_2178:
	.byte	'?'
	.ascii	"_temp_2166\0"
	.align
_Label_2179:
	.byte	'?'
	.ascii	"_temp_2165\0"
	.align
_Label_2180:
	.byte	'?'
	.ascii	"_temp_2164\0"
	.align
_Label_2181:
	.byte	'?'
	.ascii	"_temp_2163\0"
	.align
_Label_2182:
	.byte	'?'
	.ascii	"_temp_2154\0"
	.align
_Label_2183:
	.byte	'?'
	.ascii	"_temp_2153\0"
	.align
_Label_2184:
	.byte	'?'
	.ascii	"_temp_2152\0"
	.align
_Label_2185:
	.byte	'?'
	.ascii	"_temp_2148\0"
	.align
! 
! ===============  METHOD StartWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_5,r1
	push	r1
	mov	2158,r13		! source line 2158
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2173,r13		! source line 2173
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2175,r13		! source line 2175
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2176,r13		! source line 2176
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2177,r13		! source line 2177
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2178,r13		! source line 2178
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2178,r13		! source line 2178
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_5:
	.word	_sourceFileName
	.word	_Label_2186
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2187
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2188
	.word	12
	.word	4
	.word	_Label_2189
	.word	16
	.word	4
	.word	_Label_2190
	.word	20
	.word	4
	.word	_Label_2191
	.word	24
	.word	4
	.word	0
_Label_2186:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2187:
	.ascii	"Pself\0"
	.align
_Label_2188:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2189:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2190:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2191:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2192
	jmp	_Method_P_Kernel_FileManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FileManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FileManager_4	! 12:	FindFCB
	jmp	_Method_P_Kernel_FileManager_3	! 16:	Open
	jmp	_Method_P_Kernel_FileManager_5	! 20:	Close
	jmp	_Method_P_Kernel_FileManager_6	! 24:	Flush
	jmp	_Method_P_Kernel_FileManager_7	! 28:	SynchRead
	jmp	_Method_P_Kernel_FileManager_8	! 32:	SynchWrite
	.word	0
! 
! Class descriptor:
! 
_Label_2192:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2193
	.word	_sourceFileName
	.word	343		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2193:
	.ascii	"FileManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_1,r1
	push	r1
	mov	238,r1
_Label_3110:
	push	r0
	sub	r1,1,r1
	bne	_Label_3110
	mov	2189,r13		! source line 2189
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2194 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2194  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2196,r13		! source line 2196
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2197,r13		! source line 2197
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fileManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   fileManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	2198,r13		! source line 2198
	mov	"\0\0SE",r10
!   _temp_2196 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-932]
!   Send message Init
	load	[r14+-932],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2201,r13		! source line 2201
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fcbFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,444,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   fcbFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+444]
! ASSIGNMENT STATEMENT...
	mov	2202,r13		! source line 2202
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anFCBBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,428,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anFCBBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+428]
! SEND STATEMENT...
	mov	2203,r13		! source line 2203
	mov	"\0\0SE",r10
!   _temp_2199 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-920]
!   Send message Init
	load	[r14+-920],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2204,r13		! source line 2204
	mov	"\0\0AS",r10
!   _temp_2200 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2202 = &_temp_2201
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2202 = _temp_2202 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2204 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3111:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3111
!   _temp_2204 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2206:
!   Data Move: *_temp_2202 = _temp_2204  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3112:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3112
!   _temp_2202 = _temp_2202 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2203 = _temp_2203 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2203) then goto _Label_2206
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2206
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2207 = &_temp_2201
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3113
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3113:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2200 = *_temp_2207  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3114:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3114
! FOR STATEMENT...
	mov	2206,r13		! source line 2206
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2212 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2213 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2212  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2208:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2213 then goto _Label_2211		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2211
_Label_2209:
	mov	2206,r13		! source line 2206
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2207,r13		! source line 2207
	mov	"\0\0AS",r10
!   _temp_2214 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2214 [i ] into _temp_2215
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-444],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-440]
!   _temp_2216 = _temp_2215 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2216 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2208,r13		! source line 2208
	mov	"\0\0SE",r10
!   _temp_2217 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2217 [i ] into _temp_2218
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-432],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-428]
!   Send message Init
	load	[r14+-428],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	2209,r13		! source line 2209
	mov	"\0\0SE",r10
!   _temp_2220 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2220 [i ] into _temp_2221
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-420],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-416]
!   _temp_2219 = _temp_2221		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2222 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2219  sizeInBytes=4
	load	[r14+-424],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-412],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2210:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2208
! END FOR
_Label_2211:
! ASSIGNMENT STATEMENT...
	mov	2213,r13		! source line 2213
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: openFileFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,756,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   openFileFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+756]
! ASSIGNMENT STATEMENT...
	mov	2214,r13		! source line 2214
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anOpenFileBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,740,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anOpenFileBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+740]
! SEND STATEMENT...
	mov	2215,r13		! source line 2215
	mov	"\0\0SE",r10
!   _temp_2225 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-400]
!   Send message Init
	load	[r14+-400],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2216,r13		! source line 2216
	mov	"\0\0AS",r10
!   _temp_2226 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2228 = &_temp_2227
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2228 = _temp_2228 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2230 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3115:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3115
!   _temp_2230 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2232:
!   Data Move: *_temp_2228 = _temp_2230  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3116:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3116
!   _temp_2228 = _temp_2228 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2229 = _temp_2229 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2229) then goto _Label_2232
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2232
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2233 = &_temp_2227
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3117
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3117:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2226 = *_temp_2233  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3118:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3118
! FOR STATEMENT...
	mov	2218,r13		! source line 2218
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2238 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2239 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2238  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2234:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2239 then goto _Label_2237		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2237
_Label_2235:
	mov	2218,r13		! source line 2218
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2219,r13		! source line 2219
	mov	"\0\0AS",r10
!   _temp_2240 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2240 [i ] into _temp_2241
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_2242 = _temp_2241 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2242 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2220,r13		! source line 2220
	mov	"\0\0SE",r10
!   _temp_2244 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2244 [i ] into _temp_2245
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_2243 = _temp_2245		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2246 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2243  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2236:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2234
! END FOR
_Label_2237:
! ASSIGNMENT STATEMENT...
	mov	2224,r13		! source line 2224
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3119:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3119
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2225,r13		! source line 2225
	mov	"\0\0AS",r10
!   _temp_2248 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2249 = _temp_2248 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2249 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2230,r13		! source line 2230
	mov	"\0\0AS",r10
	mov	2230,r13		! source line 2230
	mov	"\0\0SE",r10
!   _temp_2250 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Send message GetAFrame
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=directoryFrame  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+768]
! SEND STATEMENT...
	mov	2231,r13		! source line 2231
	mov	"\0\0SE",r10
!   _temp_2251 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=directoryFrame  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2231,r13		! source line 2231
	mov	"\0\0RE",r10
	add	r15,956,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_1:
	.word	_sourceFileName
	.word	_Label_2252
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2253
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2254
	.word	-12
	.word	4
	.word	_Label_2255
	.word	-16
	.word	4
	.word	_Label_2256
	.word	-20
	.word	4
	.word	_Label_2257
	.word	-24
	.word	4
	.word	_Label_2258
	.word	-28
	.word	4
	.word	_Label_2259
	.word	-32
	.word	4
	.word	_Label_2260
	.word	-36
	.word	4
	.word	_Label_2261
	.word	-40
	.word	4
	.word	_Label_2262
	.word	-44
	.word	4
	.word	_Label_2263
	.word	-48
	.word	4
	.word	_Label_2264
	.word	-52
	.word	4
	.word	_Label_2265
	.word	-56
	.word	4
	.word	_Label_2266
	.word	-60
	.word	4
	.word	_Label_2267
	.word	-64
	.word	4
	.word	_Label_2268
	.word	-68
	.word	4
	.word	_Label_2269
	.word	-72
	.word	4
	.word	_Label_2270
	.word	-100
	.word	28
	.word	_Label_2271
	.word	-104
	.word	4
	.word	_Label_2272
	.word	-108
	.word	4
	.word	_Label_2273
	.word	-392
	.word	284
	.word	_Label_2274
	.word	-396
	.word	4
	.word	_Label_2275
	.word	-400
	.word	4
	.word	_Label_2276
	.word	-404
	.word	4
	.word	_Label_2277
	.word	-408
	.word	4
	.word	_Label_2278
	.word	-412
	.word	4
	.word	_Label_2279
	.word	-416
	.word	4
	.word	_Label_2280
	.word	-420
	.word	4
	.word	_Label_2281
	.word	-424
	.word	4
	.word	_Label_2282
	.word	-428
	.word	4
	.word	_Label_2283
	.word	-432
	.word	4
	.word	_Label_2284
	.word	-436
	.word	4
	.word	_Label_2285
	.word	-440
	.word	4
	.word	_Label_2286
	.word	-444
	.word	4
	.word	_Label_2287
	.word	-448
	.word	4
	.word	_Label_2288
	.word	-452
	.word	4
	.word	_Label_2289
	.word	-456
	.word	4
	.word	_Label_2290
	.word	-460
	.word	4
	.word	_Label_2291
	.word	-500
	.word	40
	.word	_Label_2292
	.word	-504
	.word	4
	.word	_Label_2293
	.word	-508
	.word	4
	.word	_Label_2294
	.word	-912
	.word	404
	.word	_Label_2295
	.word	-916
	.word	4
	.word	_Label_2296
	.word	-920
	.word	4
	.word	_Label_2297
	.word	-924
	.word	4
	.word	_Label_2298
	.word	-928
	.word	4
	.word	_Label_2299
	.word	-932
	.word	4
	.word	_Label_2300
	.word	-936
	.word	4
	.word	_Label_2301
	.word	-940
	.word	4
	.word	_Label_2302
	.word	-944
	.word	4
	.word	0
_Label_2252:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2253:
	.ascii	"Pself\0"
	.align
_Label_2254:
	.byte	'?'
	.ascii	"_temp_2251\0"
	.align
_Label_2255:
	.byte	'?'
	.ascii	"_temp_2250\0"
	.align
_Label_2256:
	.byte	'?'
	.ascii	"_temp_2249\0"
	.align
_Label_2257:
	.byte	'?'
	.ascii	"_temp_2248\0"
	.align
_Label_2258:
	.byte	'?'
	.ascii	"_temp_2247\0"
	.align
_Label_2259:
	.byte	'?'
	.ascii	"_temp_2246\0"
	.align
_Label_2260:
	.byte	'?'
	.ascii	"_temp_2245\0"
	.align
_Label_2261:
	.byte	'?'
	.ascii	"_temp_2244\0"
	.align
_Label_2262:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
_Label_2263:
	.byte	'?'
	.ascii	"_temp_2242\0"
	.align
_Label_2264:
	.byte	'?'
	.ascii	"_temp_2241\0"
	.align
_Label_2265:
	.byte	'?'
	.ascii	"_temp_2240\0"
	.align
_Label_2266:
	.byte	'?'
	.ascii	"_temp_2239\0"
	.align
_Label_2267:
	.byte	'?'
	.ascii	"_temp_2238\0"
	.align
_Label_2268:
	.byte	'?'
	.ascii	"_temp_2233\0"
	.align
_Label_2269:
	.byte	'?'
	.ascii	"_temp_2231\0"
	.align
_Label_2270:
	.byte	'?'
	.ascii	"_temp_2230\0"
	.align
_Label_2271:
	.byte	'?'
	.ascii	"_temp_2229\0"
	.align
_Label_2272:
	.byte	'?'
	.ascii	"_temp_2228\0"
	.align
_Label_2273:
	.byte	'?'
	.ascii	"_temp_2227\0"
	.align
_Label_2274:
	.byte	'?'
	.ascii	"_temp_2226\0"
	.align
_Label_2275:
	.byte	'?'
	.ascii	"_temp_2225\0"
	.align
_Label_2276:
	.byte	'?'
	.ascii	"_temp_2224\0"
	.align
_Label_2277:
	.byte	'?'
	.ascii	"_temp_2223\0"
	.align
_Label_2278:
	.byte	'?'
	.ascii	"_temp_2222\0"
	.align
_Label_2279:
	.byte	'?'
	.ascii	"_temp_2221\0"
	.align
_Label_2280:
	.byte	'?'
	.ascii	"_temp_2220\0"
	.align
_Label_2281:
	.byte	'?'
	.ascii	"_temp_2219\0"
	.align
_Label_2282:
	.byte	'?'
	.ascii	"_temp_2218\0"
	.align
_Label_2283:
	.byte	'?'
	.ascii	"_temp_2217\0"
	.align
_Label_2284:
	.byte	'?'
	.ascii	"_temp_2216\0"
	.align
_Label_2285:
	.byte	'?'
	.ascii	"_temp_2215\0"
	.align
_Label_2286:
	.byte	'?'
	.ascii	"_temp_2214\0"
	.align
_Label_2287:
	.byte	'?'
	.ascii	"_temp_2213\0"
	.align
_Label_2288:
	.byte	'?'
	.ascii	"_temp_2212\0"
	.align
_Label_2289:
	.byte	'?'
	.ascii	"_temp_2207\0"
	.align
_Label_2290:
	.byte	'?'
	.ascii	"_temp_2205\0"
	.align
_Label_2291:
	.byte	'?'
	.ascii	"_temp_2204\0"
	.align
_Label_2292:
	.byte	'?'
	.ascii	"_temp_2203\0"
	.align
_Label_2293:
	.byte	'?'
	.ascii	"_temp_2202\0"
	.align
_Label_2294:
	.byte	'?'
	.ascii	"_temp_2201\0"
	.align
_Label_2295:
	.byte	'?'
	.ascii	"_temp_2200\0"
	.align
_Label_2296:
	.byte	'?'
	.ascii	"_temp_2199\0"
	.align
_Label_2297:
	.byte	'?'
	.ascii	"_temp_2198\0"
	.align
_Label_2298:
	.byte	'?'
	.ascii	"_temp_2197\0"
	.align
_Label_2299:
	.byte	'?'
	.ascii	"_temp_2196\0"
	.align
_Label_2300:
	.byte	'?'
	.ascii	"_temp_2195\0"
	.align
_Label_2301:
	.byte	'?'
	.ascii	"_temp_2194\0"
	.align
_Label_2302:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_2,r1
	push	r1
	mov	29,r1
_Label_3120:
	push	r0
	sub	r1,1,r1
	bne	_Label_3120
	mov	2238,r13		! source line 2238
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2240,r13		! source line 2240
	mov	"\0\0SE",r10
!   _temp_2303 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Send message Lock
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_2304 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2304  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2241,r13		! source line 2241
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2242,r13		! source line 2242
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2309 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2310 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2309  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2305:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2310 then goto _Label_2308		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2308
_Label_2306:
	mov	2242,r13		! source line 2242
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2311 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2311  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2243,r13		! source line 2243
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2244,r13		! source line 2244
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2312 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2312  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2245,r13		! source line 2245
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2246,r13		! source line 2246
	mov	"\0\0SE",r10
!   _temp_2313 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2313 [i ] into _temp_2314
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Send message Print
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2307:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2305
! END FOR
_Label_2308:
! CALL STATEMENT...
!   _temp_2315 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2315  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2248,r13		! source line 2248
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2249,r13		! source line 2249
	mov	"\0\0SE",r10
!   _temp_2316 = _function_211_printFCB
	set	_function_211_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2317 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2316  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	2250,r13		! source line 2250
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2318 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2318  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2251,r13		! source line 2251
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2252,r13		! source line 2252
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2323 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2324 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2323  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2319:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2324 then goto _Label_2322		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2322
_Label_2320:
	mov	2252,r13		! source line 2252
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2325 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2325  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2253,r13		! source line 2253
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2254,r13		! source line 2254
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2326 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2326  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2255,r13		! source line 2255
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2328 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2328 [i ] into _temp_2329
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_2327 = _temp_2329		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2327  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2256,r13		! source line 2256
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2330 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2330  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2257,r13		! source line 2257
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2258,r13		! source line 2258
	mov	"\0\0SE",r10
!   _temp_2331 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2331 [i ] into _temp_2332
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Send message Print
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2321:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2319
! END FOR
_Label_2322:
! CALL STATEMENT...
!   _temp_2333 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2333  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2260,r13		! source line 2260
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2261,r13		! source line 2261
	mov	"\0\0SE",r10
!   _temp_2334 = _function_210_printOpen
	set	_function_210_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2335 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2334  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2262,r13		! source line 2262
	mov	"\0\0SE",r10
!   _temp_2336 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2262,r13		! source line 2262
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_2:
	.word	_sourceFileName
	.word	_Label_2337
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2338
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2339
	.word	-12
	.word	4
	.word	_Label_2340
	.word	-16
	.word	4
	.word	_Label_2341
	.word	-20
	.word	4
	.word	_Label_2342
	.word	-24
	.word	4
	.word	_Label_2343
	.word	-28
	.word	4
	.word	_Label_2344
	.word	-32
	.word	4
	.word	_Label_2345
	.word	-36
	.word	4
	.word	_Label_2346
	.word	-40
	.word	4
	.word	_Label_2347
	.word	-44
	.word	4
	.word	_Label_2348
	.word	-48
	.word	4
	.word	_Label_2349
	.word	-52
	.word	4
	.word	_Label_2350
	.word	-56
	.word	4
	.word	_Label_2351
	.word	-60
	.word	4
	.word	_Label_2352
	.word	-64
	.word	4
	.word	_Label_2353
	.word	-68
	.word	4
	.word	_Label_2354
	.word	-72
	.word	4
	.word	_Label_2355
	.word	-76
	.word	4
	.word	_Label_2356
	.word	-80
	.word	4
	.word	_Label_2357
	.word	-84
	.word	4
	.word	_Label_2358
	.word	-88
	.word	4
	.word	_Label_2359
	.word	-92
	.word	4
	.word	_Label_2360
	.word	-96
	.word	4
	.word	_Label_2361
	.word	-100
	.word	4
	.word	_Label_2362
	.word	-104
	.word	4
	.word	_Label_2363
	.word	-108
	.word	4
	.word	_Label_2364
	.word	-112
	.word	4
	.word	_Label_2365
	.word	-116
	.word	4
	.word	0
_Label_2337:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2338:
	.ascii	"Pself\0"
	.align
_Label_2339:
	.byte	'?'
	.ascii	"_temp_2336\0"
	.align
_Label_2340:
	.byte	'?'
	.ascii	"_temp_2335\0"
	.align
_Label_2341:
	.byte	'?'
	.ascii	"_temp_2334\0"
	.align
_Label_2342:
	.byte	'?'
	.ascii	"_temp_2333\0"
	.align
_Label_2343:
	.byte	'?'
	.ascii	"_temp_2332\0"
	.align
_Label_2344:
	.byte	'?'
	.ascii	"_temp_2331\0"
	.align
_Label_2345:
	.byte	'?'
	.ascii	"_temp_2330\0"
	.align
_Label_2346:
	.byte	'?'
	.ascii	"_temp_2329\0"
	.align
_Label_2347:
	.byte	'?'
	.ascii	"_temp_2328\0"
	.align
_Label_2348:
	.byte	'?'
	.ascii	"_temp_2327\0"
	.align
_Label_2349:
	.byte	'?'
	.ascii	"_temp_2326\0"
	.align
_Label_2350:
	.byte	'?'
	.ascii	"_temp_2325\0"
	.align
_Label_2351:
	.byte	'?'
	.ascii	"_temp_2324\0"
	.align
_Label_2352:
	.byte	'?'
	.ascii	"_temp_2323\0"
	.align
_Label_2353:
	.byte	'?'
	.ascii	"_temp_2318\0"
	.align
_Label_2354:
	.byte	'?'
	.ascii	"_temp_2317\0"
	.align
_Label_2355:
	.byte	'?'
	.ascii	"_temp_2316\0"
	.align
_Label_2356:
	.byte	'?'
	.ascii	"_temp_2315\0"
	.align
_Label_2357:
	.byte	'?'
	.ascii	"_temp_2314\0"
	.align
_Label_2358:
	.byte	'?'
	.ascii	"_temp_2313\0"
	.align
_Label_2359:
	.byte	'?'
	.ascii	"_temp_2312\0"
	.align
_Label_2360:
	.byte	'?'
	.ascii	"_temp_2311\0"
	.align
_Label_2361:
	.byte	'?'
	.ascii	"_temp_2310\0"
	.align
_Label_2362:
	.byte	'?'
	.ascii	"_temp_2309\0"
	.align
_Label_2363:
	.byte	'?'
	.ascii	"_temp_2304\0"
	.align
_Label_2364:
	.byte	'?'
	.ascii	"_temp_2303\0"
	.align
_Label_2365:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Open  ===============
! 
_Method_P_Kernel_FileManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_3,r1
	push	r1
	mov	14,r1
_Label_3121:
	push	r0
	sub	r1,1,r1
	bne	_Label_3121
	mov	2267,r13		! source line 2267
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2283,r13		! source line 2283
	mov	"\0\0AS",r10
	mov	2283,r13		! source line 2283
	mov	"\0\0SE",r10
!   _temp_2366 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message FindFCB
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	2284,r13		! source line 2284
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2367
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2367
	jmp	_Label_2368
_Label_2367:
! THEN...
	mov	2285,r13		! source line 2285
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2285,r13		! source line 2285
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2368:
! SEND STATEMENT...
	mov	2289,r13		! source line 2289
	mov	"\0\0SE",r10
!   _temp_2369 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2290,r13		! source line 2290
	mov	"\0\0WH",r10
_Label_2370:
	mov	2290,r13		! source line 2290
	mov	"\0\0SE",r10
!   _temp_2373 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2371 else goto _Label_2372
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2372
	jmp	_Label_2371
_Label_2371:
	mov	2290,r13		! source line 2290
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2291,r13		! source line 2291
	mov	"\0\0SE",r10
!   _temp_2374 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2375 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2374  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2370
_Label_2372:
! ASSIGNMENT STATEMENT...
	mov	2293,r13		! source line 2293
	mov	"\0\0AS",r10
	mov	2293,r13		! source line 2293
	mov	"\0\0SE",r10
!   _temp_2376 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	2296,r13		! source line 2296
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2377 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2377 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2297,r13		! source line 2297
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2378 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2378 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2300,r13		! source line 2300
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2379 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2379 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2302,r13		! source line 2302
	mov	"\0\0SE",r10
!   _temp_2380 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2303,r13		! source line 2303
	mov	"\0\0RE",r10
!   ReturnResult: open  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_3:
	.word	_sourceFileName
	.word	_Label_2381
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2382
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2383
	.word	12
	.word	4
	.word	_Label_2384
	.word	-12
	.word	4
	.word	_Label_2385
	.word	-16
	.word	4
	.word	_Label_2386
	.word	-20
	.word	4
	.word	_Label_2387
	.word	-24
	.word	4
	.word	_Label_2388
	.word	-28
	.word	4
	.word	_Label_2389
	.word	-32
	.word	4
	.word	_Label_2390
	.word	-36
	.word	4
	.word	_Label_2391
	.word	-40
	.word	4
	.word	_Label_2392
	.word	-44
	.word	4
	.word	_Label_2393
	.word	-48
	.word	4
	.word	_Label_2394
	.word	-52
	.word	4
	.word	_Label_2395
	.word	-56
	.word	4
	.word	0
_Label_2381:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2382:
	.ascii	"Pself\0"
	.align
_Label_2383:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2384:
	.byte	'?'
	.ascii	"_temp_2380\0"
	.align
_Label_2385:
	.byte	'?'
	.ascii	"_temp_2379\0"
	.align
_Label_2386:
	.byte	'?'
	.ascii	"_temp_2378\0"
	.align
_Label_2387:
	.byte	'?'
	.ascii	"_temp_2377\0"
	.align
_Label_2388:
	.byte	'?'
	.ascii	"_temp_2376\0"
	.align
_Label_2389:
	.byte	'?'
	.ascii	"_temp_2375\0"
	.align
_Label_2390:
	.byte	'?'
	.ascii	"_temp_2374\0"
	.align
_Label_2391:
	.byte	'?'
	.ascii	"_temp_2373\0"
	.align
_Label_2392:
	.byte	'?'
	.ascii	"_temp_2369\0"
	.align
_Label_2393:
	.byte	'?'
	.ascii	"_temp_2366\0"
	.align
_Label_2394:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2395:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD FindFCB  ===============
! 
_Method_P_Kernel_FileManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_4,r1
	push	r1
	mov	41,r1
_Label_3122:
	push	r0
	sub	r1,1,r1
	bne	_Label_3122
	mov	2308,r13		! source line 2308
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2333,r13		! source line 2333
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2336,r13		! source line 2336
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2337,r13		! source line 2337
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2338,r13		! source line 2338
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2397		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2397
!	jmp	_Label_2396
_Label_2396:
! THEN...
	mov	2339,r13		! source line 2339
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2398 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2398  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2339,r13		! source line 2339
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2397:
! ASSIGNMENT STATEMENT...
	mov	2343,r13		! source line 2343
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: numFiles = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2344,r13		! source line 2344
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2345,r13		! source line 2345
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2346,r13		! source line 2346
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2349,r13		! source line 2349
	mov	"\0\0WH",r10
_Label_2399:
!   if numFiles <= 0 then goto _Label_2401		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2401
!	jmp	_Label_2400
_Label_2400:
	mov	2349,r13		! source line 2349
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2402 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2402  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2350,r13		! source line 2350
	mov	"\0\0CA",r10
	call	_function_212_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2351,r13		! source line 2351
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2403 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2403  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2352,r13		! source line 2352
	mov	"\0\0CA",r10
	call	_function_212_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2353,r13		! source line 2353
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2404 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2404  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2354,r13		! source line 2354
	mov	"\0\0CA",r10
	call	_function_212_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2355,r13		! source line 2355
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2356,r13		! source line 2356
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2408 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2408 then goto _Label_2406		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2406
!	jmp	_Label_2407
_Label_2407:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2410
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-108]
!   _temp_2409 = _temp_2410		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2409  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2357,r13		! source line 2357
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2405 else goto _Label_2406
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2406
	jmp	_Label_2405
_Label_2405:
! THEN...
	mov	2358,r13		! source line 2358
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2358,r13		! source line 2358
	mov	"\0\0BR",r10
	jmp	_Label_2401
! END IF...
_Label_2406:
! ASSIGNMENT STATEMENT...
	mov	2360,r13		! source line 2360
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2361,r13		! source line 2361
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2399
_Label_2401:
! IF STATEMENT...
	mov	2365,r13		! source line 2365
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2412		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2412
!	jmp	_Label_2411
_Label_2411:
! THEN...
	mov	2366,r13		! source line 2366
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2366,r13		! source line 2366
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2412:
! SEND STATEMENT...
	mov	2369,r13		! source line 2369
	mov	"\0\0SE",r10
!   _temp_2413 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Send message Lock
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	2371,r13		! source line 2371
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2418 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2419 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2418  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2414:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2419 then goto _Label_2417		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2417
_Label_2415:
	mov	2371,r13		! source line 2371
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2372,r13		! source line 2372
	mov	"\0\0AS",r10
!   _temp_2420 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2420 [i ] into _temp_2421
!     make sure index expr is >= 0
	load	[r14+-136],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   fcb = _temp_2421		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2373,r13		! source line 2373
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2425 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2424 = *_temp_2425  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2424 != start then goto _Label_2423		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2423
!	jmp	_Label_2422
_Label_2422:
! THEN...
	mov	2374,r13		! source line 2374
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2374,r13		! source line 2374
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2426 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2429 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2428 = *_temp_2429  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2427 = _temp_2428 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2426 = _temp_2427  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2375,r13		! source line 2375
	mov	"\0\0SE",r10
!   _temp_2430 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Send message Unlock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2376,r13		! source line 2376
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2423:
!   Increment the FOR-LOOP index variable and jump back
_Label_2416:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2414
! END FOR
_Label_2417:
! WHILE STATEMENT...
	mov	2381,r13		! source line 2381
	mov	"\0\0WH",r10
_Label_2431:
	mov	2381,r13		! source line 2381
	mov	"\0\0SE",r10
!   _temp_2434 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-56]
!   Send message IsEmpty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2432 else goto _Label_2433
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2433
	jmp	_Label_2432
_Label_2432:
	mov	2381,r13		! source line 2381
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2382,r13		! source line 2382
	mov	"\0\0SE",r10
!   _temp_2435 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2436 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2435  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2431
_Label_2433:
! ASSIGNMENT STATEMENT...
	mov	2384,r13		! source line 2384
	mov	"\0\0AS",r10
	mov	2384,r13		! source line 2384
	mov	"\0\0SE",r10
!   _temp_2437 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-44]
!   Send message Remove
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! SEND STATEMENT...
	mov	2387,r13		! source line 2387
	mov	"\0\0SE",r10
!   _temp_2438 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Unlock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2390,r13		! source line 2390
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2439 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2439 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2391,r13		! source line 2391
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2440 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2440 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2392,r13		! source line 2392
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2441 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2441 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2393,r13		! source line 2393
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2446 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2445 = *_temp_2446  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2445 < 0 then goto _Label_2444		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2444
	jmp	_Label_2442
_Label_2444:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2447 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2447 ) then goto _Label_2443		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2443
!	jmp	_Label_2442
_Label_2442:
! THEN...
	mov	2394,r13		! source line 2394
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2448 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2448  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2394,r13		! source line 2394
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2443:
! RETURN STATEMENT...
	mov	2396,r13		! source line 2396
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_4:
	.word	_sourceFileName
	.word	_Label_2449
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2450
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2451
	.word	12
	.word	4
	.word	_Label_2452
	.word	-12
	.word	4
	.word	_Label_2453
	.word	-16
	.word	4
	.word	_Label_2454
	.word	-20
	.word	4
	.word	_Label_2455
	.word	-24
	.word	4
	.word	_Label_2456
	.word	-28
	.word	4
	.word	_Label_2457
	.word	-32
	.word	4
	.word	_Label_2458
	.word	-36
	.word	4
	.word	_Label_2459
	.word	-40
	.word	4
	.word	_Label_2460
	.word	-44
	.word	4
	.word	_Label_2461
	.word	-48
	.word	4
	.word	_Label_2462
	.word	-52
	.word	4
	.word	_Label_2463
	.word	-56
	.word	4
	.word	_Label_2464
	.word	-60
	.word	4
	.word	_Label_2465
	.word	-64
	.word	4
	.word	_Label_2466
	.word	-68
	.word	4
	.word	_Label_2467
	.word	-72
	.word	4
	.word	_Label_2468
	.word	-76
	.word	4
	.word	_Label_2469
	.word	-80
	.word	4
	.word	_Label_2470
	.word	-84
	.word	4
	.word	_Label_2471
	.word	-88
	.word	4
	.word	_Label_2472
	.word	-92
	.word	4
	.word	_Label_2473
	.word	-96
	.word	4
	.word	_Label_2474
	.word	-100
	.word	4
	.word	_Label_2475
	.word	-104
	.word	4
	.word	_Label_2476
	.word	-108
	.word	4
	.word	_Label_2477
	.word	-112
	.word	4
	.word	_Label_2478
	.word	-116
	.word	4
	.word	_Label_2479
	.word	-120
	.word	4
	.word	_Label_2480
	.word	-124
	.word	4
	.word	_Label_2481
	.word	-128
	.word	4
	.word	_Label_2482
	.word	-132
	.word	4
	.word	_Label_2483
	.word	-136
	.word	4
	.word	_Label_2484
	.word	-140
	.word	4
	.word	_Label_2485
	.word	-144
	.word	4
	.word	_Label_2486
	.word	-148
	.word	4
	.word	_Label_2487
	.word	-152
	.word	4
	.word	_Label_2488
	.word	-156
	.word	4
	.word	_Label_2489
	.word	-160
	.word	4
	.word	0
_Label_2449:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2450:
	.ascii	"Pself\0"
	.align
_Label_2451:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2452:
	.byte	'?'
	.ascii	"_temp_2448\0"
	.align
_Label_2453:
	.byte	'?'
	.ascii	"_temp_2447\0"
	.align
_Label_2454:
	.byte	'?'
	.ascii	"_temp_2446\0"
	.align
_Label_2455:
	.byte	'?'
	.ascii	"_temp_2445\0"
	.align
_Label_2456:
	.byte	'?'
	.ascii	"_temp_2441\0"
	.align
_Label_2457:
	.byte	'?'
	.ascii	"_temp_2440\0"
	.align
_Label_2458:
	.byte	'?'
	.ascii	"_temp_2439\0"
	.align
_Label_2459:
	.byte	'?'
	.ascii	"_temp_2438\0"
	.align
_Label_2460:
	.byte	'?'
	.ascii	"_temp_2437\0"
	.align
_Label_2461:
	.byte	'?'
	.ascii	"_temp_2436\0"
	.align
_Label_2462:
	.byte	'?'
	.ascii	"_temp_2435\0"
	.align
_Label_2463:
	.byte	'?'
	.ascii	"_temp_2434\0"
	.align
_Label_2464:
	.byte	'?'
	.ascii	"_temp_2430\0"
	.align
_Label_2465:
	.byte	'?'
	.ascii	"_temp_2429\0"
	.align
_Label_2466:
	.byte	'?'
	.ascii	"_temp_2428\0"
	.align
_Label_2467:
	.byte	'?'
	.ascii	"_temp_2427\0"
	.align
_Label_2468:
	.byte	'?'
	.ascii	"_temp_2426\0"
	.align
_Label_2469:
	.byte	'?'
	.ascii	"_temp_2425\0"
	.align
_Label_2470:
	.byte	'?'
	.ascii	"_temp_2424\0"
	.align
_Label_2471:
	.byte	'?'
	.ascii	"_temp_2421\0"
	.align
_Label_2472:
	.byte	'?'
	.ascii	"_temp_2420\0"
	.align
_Label_2473:
	.byte	'?'
	.ascii	"_temp_2419\0"
	.align
_Label_2474:
	.byte	'?'
	.ascii	"_temp_2418\0"
	.align
_Label_2475:
	.byte	'?'
	.ascii	"_temp_2413\0"
	.align
_Label_2476:
	.byte	'?'
	.ascii	"_temp_2410\0"
	.align
_Label_2477:
	.byte	'?'
	.ascii	"_temp_2409\0"
	.align
_Label_2478:
	.byte	'?'
	.ascii	"_temp_2408\0"
	.align
_Label_2479:
	.byte	'?'
	.ascii	"_temp_2404\0"
	.align
_Label_2480:
	.byte	'?'
	.ascii	"_temp_2403\0"
	.align
_Label_2481:
	.byte	'?'
	.ascii	"_temp_2402\0"
	.align
_Label_2482:
	.byte	'?'
	.ascii	"_temp_2398\0"
	.align
_Label_2483:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2484:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2485:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2486:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2487:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2488:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2489:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD Close  ===============
! 
_Method_P_Kernel_FileManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_5,r1
	push	r1
	mov	26,r1
_Label_3123:
	push	r0
	sub	r1,1,r1
	bne	_Label_3123
	mov	2409,r13		! source line 2409
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2411,r13		! source line 2411
	mov	"\0\0IF",r10
!   _temp_2492 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2492 then goto _Label_2491		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2491
!	jmp	_Label_2490
_Label_2490:
! THEN...
	mov	2412,r13		! source line 2412
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2412,r13		! source line 2412
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2491:
! SEND STATEMENT...
	mov	2414,r13		! source line 2414
	mov	"\0\0SE",r10
!   _temp_2493 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Send message Lock
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2415,r13		! source line 2415
	mov	"\0\0SE",r10
!   _temp_2494 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2416,r13		! source line 2416
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2495 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2495  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2417,r13		! source line 2417
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2496 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2499 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2498 = *_temp_2499  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2497 = _temp_2498 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2496 = _temp_2497  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2418,r13		! source line 2418
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2503 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2502 = *_temp_2503  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2502 > 0 then goto _Label_2501		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2501
!	jmp	_Label_2500
_Label_2500:
! THEN...
	mov	2419,r13		! source line 2419
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2419,r13		! source line 2419
	mov	"\0\0SE",r10
!   _temp_2504 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2420,r13		! source line 2420
	mov	"\0\0SE",r10
!   _temp_2505 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2506 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2505  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2421,r13		! source line 2421
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2507 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2510 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2509 = *_temp_2510  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2508 = _temp_2509 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2507 = _temp_2508  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2422,r13		! source line 2422
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2514 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2513 = *_temp_2514  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2513 > 0 then goto _Label_2512		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2512
!	jmp	_Label_2511
_Label_2511:
! THEN...
	mov	2423,r13		! source line 2423
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2423,r13		! source line 2423
	mov	"\0\0SE",r10
!   _temp_2515 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=fcb  sizeInBytes=4
	load	[r14+-104],r1
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
	mov	2424,r13		! source line 2424
	mov	"\0\0SE",r10
!   _temp_2516 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2517 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2516  sizeInBytes=4
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
! END IF...
_Label_2512:
! END IF...
_Label_2501:
! SEND STATEMENT...
	mov	2427,r13		! source line 2427
	mov	"\0\0SE",r10
!   _temp_2518 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2427,r13		! source line 2427
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_5:
	.word	_sourceFileName
	.word	_Label_2519
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2520
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2521
	.word	12
	.word	4
	.word	_Label_2522
	.word	-12
	.word	4
	.word	_Label_2523
	.word	-16
	.word	4
	.word	_Label_2524
	.word	-20
	.word	4
	.word	_Label_2525
	.word	-24
	.word	4
	.word	_Label_2526
	.word	-28
	.word	4
	.word	_Label_2527
	.word	-32
	.word	4
	.word	_Label_2528
	.word	-36
	.word	4
	.word	_Label_2529
	.word	-40
	.word	4
	.word	_Label_2530
	.word	-44
	.word	4
	.word	_Label_2531
	.word	-48
	.word	4
	.word	_Label_2532
	.word	-52
	.word	4
	.word	_Label_2533
	.word	-56
	.word	4
	.word	_Label_2534
	.word	-60
	.word	4
	.word	_Label_2535
	.word	-64
	.word	4
	.word	_Label_2536
	.word	-68
	.word	4
	.word	_Label_2537
	.word	-72
	.word	4
	.word	_Label_2538
	.word	-76
	.word	4
	.word	_Label_2539
	.word	-80
	.word	4
	.word	_Label_2540
	.word	-84
	.word	4
	.word	_Label_2541
	.word	-88
	.word	4
	.word	_Label_2542
	.word	-92
	.word	4
	.word	_Label_2543
	.word	-96
	.word	4
	.word	_Label_2544
	.word	-100
	.word	4
	.word	_Label_2545
	.word	-104
	.word	4
	.word	0
_Label_2519:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2520:
	.ascii	"Pself\0"
	.align
_Label_2521:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2522:
	.byte	'?'
	.ascii	"_temp_2518\0"
	.align
_Label_2523:
	.byte	'?'
	.ascii	"_temp_2517\0"
	.align
_Label_2524:
	.byte	'?'
	.ascii	"_temp_2516\0"
	.align
_Label_2525:
	.byte	'?'
	.ascii	"_temp_2515\0"
	.align
_Label_2526:
	.byte	'?'
	.ascii	"_temp_2514\0"
	.align
_Label_2527:
	.byte	'?'
	.ascii	"_temp_2513\0"
	.align
_Label_2528:
	.byte	'?'
	.ascii	"_temp_2510\0"
	.align
_Label_2529:
	.byte	'?'
	.ascii	"_temp_2509\0"
	.align
_Label_2530:
	.byte	'?'
	.ascii	"_temp_2508\0"
	.align
_Label_2531:
	.byte	'?'
	.ascii	"_temp_2507\0"
	.align
_Label_2532:
	.byte	'?'
	.ascii	"_temp_2506\0"
	.align
_Label_2533:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
_Label_2534:
	.byte	'?'
	.ascii	"_temp_2504\0"
	.align
_Label_2535:
	.byte	'?'
	.ascii	"_temp_2503\0"
	.align
_Label_2536:
	.byte	'?'
	.ascii	"_temp_2502\0"
	.align
_Label_2537:
	.byte	'?'
	.ascii	"_temp_2499\0"
	.align
_Label_2538:
	.byte	'?'
	.ascii	"_temp_2498\0"
	.align
_Label_2539:
	.byte	'?'
	.ascii	"_temp_2497\0"
	.align
_Label_2540:
	.byte	'?'
	.ascii	"_temp_2496\0"
	.align
_Label_2541:
	.byte	'?'
	.ascii	"_temp_2495\0"
	.align
_Label_2542:
	.byte	'?'
	.ascii	"_temp_2494\0"
	.align
_Label_2543:
	.byte	'?'
	.ascii	"_temp_2493\0"
	.align
_Label_2544:
	.byte	'?'
	.ascii	"_temp_2492\0"
	.align
_Label_2545:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD Flush  ===============
! 
_Method_P_Kernel_FileManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_6,r1
	push	r1
	mov	29,r1
_Label_3124:
	push	r0
	sub	r1,1,r1
	bne	_Label_3124
	mov	2432,r13		! source line 2432
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2437,r13		! source line 2437
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2549 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2548 = *_temp_2549  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2548) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2550 = _temp_2548 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2550 ) then goto _Label_2547		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2547
!	jmp	_Label_2546
_Label_2546:
! THEN...
	mov	2438,r13		! source line 2438
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2438,r13		! source line 2438
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2555 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2554 = *_temp_2555  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2554) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2556 = _temp_2554 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2553 = *_temp_2556  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2553 >= 0 then goto _Label_2552		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2552
!	jmp	_Label_2551
_Label_2551:
! THEN...
	mov	2439,r13		! source line 2439
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2557 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2557  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2439,r13		! source line 2439
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2552:
! ASSIGNMENT STATEMENT...
	mov	2441,r13		! source line 2441
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2559 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2558 = *_temp_2559  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2558) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2560 = _temp_2558 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2560 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2442,r13		! source line 2442
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2564 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2563 = *_temp_2564  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2563) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2565 = _temp_2563 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2562 = *_temp_2565  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2568 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2567 = *_temp_2568  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2567) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2569 = _temp_2567 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2566 = *_temp_2569  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2561 = _temp_2562 + _temp_2566		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2572 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2571 = *_temp_2572  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2571) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2573 = _temp_2571 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2570 = *_temp_2573  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2574 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2561  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2570  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+12]
!   Send message SynchWriteSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_2547:
! RETURN STATEMENT...
	mov	2437,r13		! source line 2437
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_6:
	.word	_sourceFileName
	.word	_Label_2575
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2576
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2577
	.word	12
	.word	4
	.word	_Label_2578
	.word	-12
	.word	4
	.word	_Label_2579
	.word	-16
	.word	4
	.word	_Label_2580
	.word	-20
	.word	4
	.word	_Label_2581
	.word	-24
	.word	4
	.word	_Label_2582
	.word	-28
	.word	4
	.word	_Label_2583
	.word	-32
	.word	4
	.word	_Label_2584
	.word	-36
	.word	4
	.word	_Label_2585
	.word	-40
	.word	4
	.word	_Label_2586
	.word	-44
	.word	4
	.word	_Label_2587
	.word	-48
	.word	4
	.word	_Label_2588
	.word	-52
	.word	4
	.word	_Label_2589
	.word	-56
	.word	4
	.word	_Label_2590
	.word	-60
	.word	4
	.word	_Label_2591
	.word	-64
	.word	4
	.word	_Label_2592
	.word	-68
	.word	4
	.word	_Label_2593
	.word	-72
	.word	4
	.word	_Label_2594
	.word	-76
	.word	4
	.word	_Label_2595
	.word	-80
	.word	4
	.word	_Label_2596
	.word	-84
	.word	4
	.word	_Label_2597
	.word	-88
	.word	4
	.word	_Label_2598
	.word	-92
	.word	4
	.word	_Label_2599
	.word	-96
	.word	4
	.word	_Label_2600
	.word	-100
	.word	4
	.word	_Label_2601
	.word	-104
	.word	4
	.word	_Label_2602
	.word	-108
	.word	4
	.word	0
_Label_2575:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2576:
	.ascii	"Pself\0"
	.align
_Label_2577:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2578:
	.byte	'?'
	.ascii	"_temp_2574\0"
	.align
_Label_2579:
	.byte	'?'
	.ascii	"_temp_2573\0"
	.align
_Label_2580:
	.byte	'?'
	.ascii	"_temp_2572\0"
	.align
_Label_2581:
	.byte	'?'
	.ascii	"_temp_2571\0"
	.align
_Label_2582:
	.byte	'?'
	.ascii	"_temp_2570\0"
	.align
_Label_2583:
	.byte	'?'
	.ascii	"_temp_2569\0"
	.align
_Label_2584:
	.byte	'?'
	.ascii	"_temp_2568\0"
	.align
_Label_2585:
	.byte	'?'
	.ascii	"_temp_2567\0"
	.align
_Label_2586:
	.byte	'?'
	.ascii	"_temp_2566\0"
	.align
_Label_2587:
	.byte	'?'
	.ascii	"_temp_2565\0"
	.align
_Label_2588:
	.byte	'?'
	.ascii	"_temp_2564\0"
	.align
_Label_2589:
	.byte	'?'
	.ascii	"_temp_2563\0"
	.align
_Label_2590:
	.byte	'?'
	.ascii	"_temp_2562\0"
	.align
_Label_2591:
	.byte	'?'
	.ascii	"_temp_2561\0"
	.align
_Label_2592:
	.byte	'?'
	.ascii	"_temp_2560\0"
	.align
_Label_2593:
	.byte	'?'
	.ascii	"_temp_2559\0"
	.align
_Label_2594:
	.byte	'?'
	.ascii	"_temp_2558\0"
	.align
_Label_2595:
	.byte	'?'
	.ascii	"_temp_2557\0"
	.align
_Label_2596:
	.byte	'?'
	.ascii	"_temp_2556\0"
	.align
_Label_2597:
	.byte	'?'
	.ascii	"_temp_2555\0"
	.align
_Label_2598:
	.byte	'?'
	.ascii	"_temp_2554\0"
	.align
_Label_2599:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2600:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2601:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2602:
	.byte	'?'
	.ascii	"_temp_2548\0"
	.align
! 
! ===============  METHOD SynchRead  ===============
! 
_Method_P_Kernel_FileManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_7,r1
	push	r1
	mov	34,r1
_Label_3125:
	push	r0
	sub	r1,1,r1
	bne	_Label_3125
	mov	2451,r13		! source line 2451
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2466,r13		! source line 2466
	mov	"\0\0SE",r10
!   _temp_2603 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Send message Lock
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2467,r13		! source line 2467
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2609		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2609
!   _temp_2608 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2610
_Label_2609:
!   _temp_2608 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2610:
!   if _temp_2608 then goto _Label_2607 else goto _Label_2604
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2604
	jmp	_Label_2607
_Label_2607:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2613 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2612 = *_temp_2613  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2612 == 0 then goto _Label_2614		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2614
!   _temp_2611 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2615
_Label_2614:
!   _temp_2611 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2615:
!   if _temp_2611 then goto _Label_2606 else goto _Label_2604
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2604
	jmp	_Label_2606
_Label_2606:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2618 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2617 = *_temp_2618  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2617) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2619 = _temp_2617 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2616 = *_temp_2619  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2616 >= 0 then goto _Label_2605		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2605
!	jmp	_Label_2604
_Label_2604:
! THEN...
	mov	2468,r13		! source line 2468
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2620 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2620  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2468,r13		! source line 2468
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2605:
! ASSIGNMENT STATEMENT...
	mov	2470,r13		! source line 2470
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2621 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2621  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2471,r13		! source line 2471
	mov	"\0\0WH",r10
_Label_2622:
!   if numBytes <= 0 then goto _Label_2624		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2624
!	jmp	_Label_2623
_Label_2623:
	mov	2471,r13		! source line 2471
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2480,r13		! source line 2480
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	2481,r13		! source line 2481
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	2485,r13		! source line 2485
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2628 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2627 = *_temp_2628  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2627 == sector then goto _Label_2626		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2626
!	jmp	_Label_2625
_Label_2625:
! THEN...
	mov	2486,r13		! source line 2486
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2486,r13		! source line 2486
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2629) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	2488,r13		! source line 2488
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2632 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2631 = *_temp_2632  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2630 = sector + _temp_2631		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2634 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2633 = *_temp_2634  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2635 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2630  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2633  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2491,r13		! source line 2491
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2636 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2636 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2492,r13		! source line 2492
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2637 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2637 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2626:
! ASSIGNMENT STATEMENT...
	mov	2494,r13		! source line 2494
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2639 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2638 = *_temp_2639  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2638 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2495,r13		! source line 2495
	mov	"\0\0AS",r10
!   _temp_2640 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2640  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2495,r13		! source line 2495
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=targetAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=posInBuffer  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+8]
!   Call the function
	mov	2499,r13		! source line 2499
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2500,r13		! source line 2500
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2501,r13		! source line 2501
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2502,r13		! source line 2502
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2622
_Label_2624:
! SEND STATEMENT...
	mov	2509,r13		! source line 2509
	mov	"\0\0SE",r10
!   _temp_2641 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2510,r13		! source line 2510
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,140,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_7:
	.word	_sourceFileName
	.word	_Label_2642
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2643
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2644
	.word	12
	.word	4
	.word	_Label_2645
	.word	16
	.word	4
	.word	_Label_2646
	.word	20
	.word	4
	.word	_Label_2647
	.word	24
	.word	4
	.word	_Label_2648
	.word	-16
	.word	4
	.word	_Label_2649
	.word	-20
	.word	4
	.word	_Label_2650
	.word	-24
	.word	4
	.word	_Label_2651
	.word	-28
	.word	4
	.word	_Label_2652
	.word	-32
	.word	4
	.word	_Label_2653
	.word	-36
	.word	4
	.word	_Label_2654
	.word	-40
	.word	4
	.word	_Label_2655
	.word	-44
	.word	4
	.word	_Label_2656
	.word	-48
	.word	4
	.word	_Label_2657
	.word	-52
	.word	4
	.word	_Label_2658
	.word	-56
	.word	4
	.word	_Label_2659
	.word	-60
	.word	4
	.word	_Label_2660
	.word	-64
	.word	4
	.word	_Label_2661
	.word	-68
	.word	4
	.word	_Label_2662
	.word	-72
	.word	4
	.word	_Label_2663
	.word	-76
	.word	4
	.word	_Label_2664
	.word	-80
	.word	4
	.word	_Label_2665
	.word	-84
	.word	4
	.word	_Label_2666
	.word	-88
	.word	4
	.word	_Label_2667
	.word	-92
	.word	4
	.word	_Label_2668
	.word	-96
	.word	4
	.word	_Label_2669
	.word	-100
	.word	4
	.word	_Label_2670
	.word	-104
	.word	4
	.word	_Label_2671
	.word	-9
	.word	1
	.word	_Label_2672
	.word	-10
	.word	1
	.word	_Label_2673
	.word	-108
	.word	4
	.word	_Label_2674
	.word	-112
	.word	4
	.word	_Label_2675
	.word	-116
	.word	4
	.word	_Label_2676
	.word	-120
	.word	4
	.word	_Label_2677
	.word	-124
	.word	4
	.word	_Label_2678
	.word	-128
	.word	4
	.word	0
_Label_2642:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2643:
	.ascii	"Pself\0"
	.align
_Label_2644:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2645:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2646:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2647:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2648:
	.byte	'?'
	.ascii	"_temp_2641\0"
	.align
_Label_2649:
	.byte	'?'
	.ascii	"_temp_2640\0"
	.align
_Label_2650:
	.byte	'?'
	.ascii	"_temp_2639\0"
	.align
_Label_2651:
	.byte	'?'
	.ascii	"_temp_2638\0"
	.align
_Label_2652:
	.byte	'?'
	.ascii	"_temp_2637\0"
	.align
_Label_2653:
	.byte	'?'
	.ascii	"_temp_2636\0"
	.align
_Label_2654:
	.byte	'?'
	.ascii	"_temp_2635\0"
	.align
_Label_2655:
	.byte	'?'
	.ascii	"_temp_2634\0"
	.align
_Label_2656:
	.byte	'?'
	.ascii	"_temp_2633\0"
	.align
_Label_2657:
	.byte	'?'
	.ascii	"_temp_2632\0"
	.align
_Label_2658:
	.byte	'?'
	.ascii	"_temp_2631\0"
	.align
_Label_2659:
	.byte	'?'
	.ascii	"_temp_2630\0"
	.align
_Label_2660:
	.byte	'?'
	.ascii	"_temp_2629\0"
	.align
_Label_2661:
	.byte	'?'
	.ascii	"_temp_2628\0"
	.align
_Label_2662:
	.byte	'?'
	.ascii	"_temp_2627\0"
	.align
_Label_2663:
	.byte	'?'
	.ascii	"_temp_2621\0"
	.align
_Label_2664:
	.byte	'?'
	.ascii	"_temp_2620\0"
	.align
_Label_2665:
	.byte	'?'
	.ascii	"_temp_2619\0"
	.align
_Label_2666:
	.byte	'?'
	.ascii	"_temp_2618\0"
	.align
_Label_2667:
	.byte	'?'
	.ascii	"_temp_2617\0"
	.align
_Label_2668:
	.byte	'?'
	.ascii	"_temp_2616\0"
	.align
_Label_2669:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2670:
	.byte	'?'
	.ascii	"_temp_2612\0"
	.align
_Label_2671:
	.byte	'C'
	.ascii	"_temp_2611\0"
	.align
_Label_2672:
	.byte	'C'
	.ascii	"_temp_2608\0"
	.align
_Label_2673:
	.byte	'?'
	.ascii	"_temp_2603\0"
	.align
_Label_2674:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2675:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2676:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2677:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2678:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD SynchWrite  ===============
! 
_Method_P_Kernel_FileManager_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_8,r1
	push	r1
	mov	36,r1
_Label_3126:
	push	r0
	sub	r1,1,r1
	bne	_Label_3126
	mov	2515,r13		! source line 2515
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2531,r13		! source line 2531
	mov	"\0\0SE",r10
!   _temp_2679 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Send message Lock
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2532,r13		! source line 2532
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2685		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2685
!   _temp_2684 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2686
_Label_2685:
!   _temp_2684 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2686:
!   if _temp_2684 then goto _Label_2683 else goto _Label_2680
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2680
	jmp	_Label_2683
_Label_2683:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2689 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2688 = *_temp_2689  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2688 == 0 then goto _Label_2690		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2690
!   _temp_2687 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2691
_Label_2690:
!   _temp_2687 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2691:
!   if _temp_2687 then goto _Label_2682 else goto _Label_2680
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2680
	jmp	_Label_2682
_Label_2682:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2694 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2693 = *_temp_2694  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2693) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2695 = _temp_2693 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2692 = *_temp_2695  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2692 >= 0 then goto _Label_2681		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2681
!	jmp	_Label_2680
_Label_2680:
! THEN...
	mov	2533,r13		! source line 2533
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2696 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2696  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2533,r13		! source line 2533
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2681:
! ASSIGNMENT STATEMENT...
	mov	2535,r13		! source line 2535
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2697 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_2697  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2536,r13		! source line 2536
	mov	"\0\0WH",r10
_Label_2698:
!   if numBytes <= 0 then goto _Label_2700		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2700
!	jmp	_Label_2699
_Label_2699:
	mov	2536,r13		! source line 2536
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2545,r13		! source line 2545
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2546,r13		! source line 2546
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
! IF STATEMENT...
	mov	2550,r13		! source line 2550
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2704 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2703 = *_temp_2704  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2703 == sector then goto _Label_2702		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_2702
!	jmp	_Label_2701
_Label_2701:
! THEN...
	mov	2552,r13		! source line 2552
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2552,r13		! source line 2552
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2705) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! END IF...
_Label_2702:
! ASSIGNMENT STATEMENT...
	mov	2554,r13		! source line 2554
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2707 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2706 = *_temp_2707  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_2706 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2555,r13		! source line 2555
	mov	"\0\0AS",r10
!   _temp_2708 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2708  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2555,r13		! source line 2555
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2556,r13		! source line 2556
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2712 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2711 = *_temp_2712  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_2711 != sector then goto _Label_2710		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2710
!	jmp	_Label_2709
_Label_2709:
	jmp	_Label_2713
_Label_2710:
! ELSE...
	mov	2558,r13		! source line 2558
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2558,r13		! source line 2558
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_2716
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_2716
	jmp	_Label_2715
_Label_2716:
!   if bytesToMove != 8192 then goto _Label_2715		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_2715
!	jmp	_Label_2714
_Label_2714:
	jmp	_Label_2717
_Label_2715:
! ELSE...
	mov	2562,r13		! source line 2562
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2562,r13		! source line 2562
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2720 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2719 = *_temp_2720  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2718 = sector + _temp_2719		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2722 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2721 = *_temp_2722  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_2723 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2718  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2721  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_2717:
! END IF...
_Label_2713:
! ASSIGNMENT STATEMENT...
	mov	2566,r13		! source line 2566
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2724 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2724 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2567,r13		! source line 2567
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2725 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2725 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=posInBuffer  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sourceAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+8]
!   Call the function
	mov	2571,r13		! source line 2571
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2572,r13		! source line 2572
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2573,r13		! source line 2573
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2574,r13		! source line 2574
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2698
_Label_2700:
! SEND STATEMENT...
	mov	2581,r13		! source line 2581
	mov	"\0\0SE",r10
!   _temp_2726 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2583,r13		! source line 2583
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_8:
	.word	_sourceFileName
	.word	_Label_2727
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_2728
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2729
	.word	12
	.word	4
	.word	_Label_2730
	.word	16
	.word	4
	.word	_Label_2731
	.word	20
	.word	4
	.word	_Label_2732
	.word	24
	.word	4
	.word	_Label_2733
	.word	-16
	.word	4
	.word	_Label_2734
	.word	-20
	.word	4
	.word	_Label_2735
	.word	-24
	.word	4
	.word	_Label_2736
	.word	-28
	.word	4
	.word	_Label_2737
	.word	-32
	.word	4
	.word	_Label_2738
	.word	-36
	.word	4
	.word	_Label_2739
	.word	-40
	.word	4
	.word	_Label_2740
	.word	-44
	.word	4
	.word	_Label_2741
	.word	-48
	.word	4
	.word	_Label_2742
	.word	-52
	.word	4
	.word	_Label_2743
	.word	-56
	.word	4
	.word	_Label_2744
	.word	-60
	.word	4
	.word	_Label_2745
	.word	-64
	.word	4
	.word	_Label_2746
	.word	-68
	.word	4
	.word	_Label_2747
	.word	-72
	.word	4
	.word	_Label_2748
	.word	-76
	.word	4
	.word	_Label_2749
	.word	-80
	.word	4
	.word	_Label_2750
	.word	-84
	.word	4
	.word	_Label_2751
	.word	-88
	.word	4
	.word	_Label_2752
	.word	-92
	.word	4
	.word	_Label_2753
	.word	-96
	.word	4
	.word	_Label_2754
	.word	-100
	.word	4
	.word	_Label_2755
	.word	-104
	.word	4
	.word	_Label_2756
	.word	-108
	.word	4
	.word	_Label_2757
	.word	-112
	.word	4
	.word	_Label_2758
	.word	-9
	.word	1
	.word	_Label_2759
	.word	-10
	.word	1
	.word	_Label_2760
	.word	-116
	.word	4
	.word	_Label_2761
	.word	-120
	.word	4
	.word	_Label_2762
	.word	-124
	.word	4
	.word	_Label_2763
	.word	-128
	.word	4
	.word	_Label_2764
	.word	-132
	.word	4
	.word	_Label_2765
	.word	-136
	.word	4
	.word	0
_Label_2727:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_2728:
	.ascii	"Pself\0"
	.align
_Label_2729:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2730:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_2731:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2732:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2733:
	.byte	'?'
	.ascii	"_temp_2726\0"
	.align
_Label_2734:
	.byte	'?'
	.ascii	"_temp_2725\0"
	.align
_Label_2735:
	.byte	'?'
	.ascii	"_temp_2724\0"
	.align
_Label_2736:
	.byte	'?'
	.ascii	"_temp_2723\0"
	.align
_Label_2737:
	.byte	'?'
	.ascii	"_temp_2722\0"
	.align
_Label_2738:
	.byte	'?'
	.ascii	"_temp_2721\0"
	.align
_Label_2739:
	.byte	'?'
	.ascii	"_temp_2720\0"
	.align
_Label_2740:
	.byte	'?'
	.ascii	"_temp_2719\0"
	.align
_Label_2741:
	.byte	'?'
	.ascii	"_temp_2718\0"
	.align
_Label_2742:
	.byte	'?'
	.ascii	"_temp_2712\0"
	.align
_Label_2743:
	.byte	'?'
	.ascii	"_temp_2711\0"
	.align
_Label_2744:
	.byte	'?'
	.ascii	"_temp_2708\0"
	.align
_Label_2745:
	.byte	'?'
	.ascii	"_temp_2707\0"
	.align
_Label_2746:
	.byte	'?'
	.ascii	"_temp_2706\0"
	.align
_Label_2747:
	.byte	'?'
	.ascii	"_temp_2705\0"
	.align
_Label_2748:
	.byte	'?'
	.ascii	"_temp_2704\0"
	.align
_Label_2749:
	.byte	'?'
	.ascii	"_temp_2703\0"
	.align
_Label_2750:
	.byte	'?'
	.ascii	"_temp_2697\0"
	.align
_Label_2751:
	.byte	'?'
	.ascii	"_temp_2696\0"
	.align
_Label_2752:
	.byte	'?'
	.ascii	"_temp_2695\0"
	.align
_Label_2753:
	.byte	'?'
	.ascii	"_temp_2694\0"
	.align
_Label_2754:
	.byte	'?'
	.ascii	"_temp_2693\0"
	.align
_Label_2755:
	.byte	'?'
	.ascii	"_temp_2692\0"
	.align
_Label_2756:
	.byte	'?'
	.ascii	"_temp_2689\0"
	.align
_Label_2757:
	.byte	'?'
	.ascii	"_temp_2688\0"
	.align
_Label_2758:
	.byte	'C'
	.ascii	"_temp_2687\0"
	.align
_Label_2759:
	.byte	'C'
	.ascii	"_temp_2684\0"
	.align
_Label_2760:
	.byte	'?'
	.ascii	"_temp_2679\0"
	.align
_Label_2761:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2762:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2763:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2764:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2765:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_2766
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_2766:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2767
	.word	_sourceFileName
	.word	368		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2767:
	.ascii	"FileControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1,r1
	push	r1
	mov	2,r1
_Label_3127:
	push	r0
	sub	r1,1,r1
	bne	_Label_3127
	mov	2619,r13		! source line 2619
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2620,r13		! source line 2620
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2621,r13		! source line 2621
	mov	"\0\0AS",r10
	mov	2621,r13		! source line 2621
	mov	"\0\0SE",r10
!   _temp_2768 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Send message GetAFrame
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bufferPtr  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+28]
! ASSIGNMENT STATEMENT...
	mov	2622,r13		! source line 2622
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2623,r13		! source line 2623
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2624,r13		! source line 2624
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2624,r13		! source line 2624
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1:
	.word	_sourceFileName
	.word	_Label_2769
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_2770
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2771
	.word	-12
	.word	4
	.word	0
_Label_2769:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2770:
	.ascii	"Pself\0"
	.align
_Label_2771:
	.byte	'?'
	.ascii	"_temp_2768\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2,r1
	push	r1
	mov	7,r1
_Label_3128:
	push	r0
	sub	r1,1,r1
	bne	_Label_3128
	mov	2629,r13		! source line 2629
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2772 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2772  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2630,r13		! source line 2630
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2631,r13		! source line 2631
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2773 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2773  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2632,r13		! source line 2632
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2633,r13		! source line 2633
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2774 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2774  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2634,r13		! source line 2634
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2635,r13		! source line 2635
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2775 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2775  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2636,r13		! source line 2636
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2637,r13		! source line 2637
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2776 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2776  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2638,r13		! source line 2638
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2639,r13		! source line 2639
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2777 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2777  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2640,r13		! source line 2640
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2641,r13		! source line 2641
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2642,r13		! source line 2642
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2642,r13		! source line 2642
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2:
	.word	_sourceFileName
	.word	_Label_2778
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2779
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2780
	.word	-12
	.word	4
	.word	_Label_2781
	.word	-16
	.word	4
	.word	_Label_2782
	.word	-20
	.word	4
	.word	_Label_2783
	.word	-24
	.word	4
	.word	_Label_2784
	.word	-28
	.word	4
	.word	_Label_2785
	.word	-32
	.word	4
	.word	0
_Label_2778:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2779:
	.ascii	"Pself\0"
	.align
_Label_2780:
	.byte	'?'
	.ascii	"_temp_2777\0"
	.align
_Label_2781:
	.byte	'?'
	.ascii	"_temp_2776\0"
	.align
_Label_2782:
	.byte	'?'
	.ascii	"_temp_2775\0"
	.align
_Label_2783:
	.byte	'?'
	.ascii	"_temp_2774\0"
	.align
_Label_2784:
	.byte	'?'
	.ascii	"_temp_2773\0"
	.align
_Label_2785:
	.byte	'?'
	.ascii	"_temp_2772\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_2786
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_2786:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2787
	.word	_sourceFileName
	.word	385		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2787:
	.ascii	"OpenFile\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_OpenFile_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_1,r1
	push	r1
	mov	4,r1
_Label_3129:
	push	r0
	sub	r1,1,r1
	bne	_Label_3129
	mov	2653,r13		! source line 2653
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2788 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2788  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2654,r13		! source line 2654
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2655,r13		! source line 2655
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2789 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2789  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2656,r13		! source line 2656
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2657,r13		! source line 2657
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_2791		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2791
!	jmp	_Label_2790
_Label_2790:
! THEN...
	mov	2658,r13		! source line 2658
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2658,r13		! source line 2658
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1+20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_2792
_Label_2791:
! ELSE...
	mov	2660,r13		! source line 2660
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2793 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2793  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2660,r13		! source line 2660
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2792:
! RETURN STATEMENT...
	mov	2657,r13		! source line 2657
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_1:
	.word	_sourceFileName
	.word	_Label_2794
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2795
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2796
	.word	-12
	.word	4
	.word	_Label_2797
	.word	-16
	.word	4
	.word	_Label_2798
	.word	-20
	.word	4
	.word	0
_Label_2794:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2795:
	.ascii	"Pself\0"
	.align
_Label_2796:
	.byte	'?'
	.ascii	"_temp_2793\0"
	.align
_Label_2797:
	.byte	'?'
	.ascii	"_temp_2789\0"
	.align
_Label_2798:
	.byte	'?'
	.ascii	"_temp_2788\0"
	.align
! 
! ===============  METHOD ReadBytes  ===============
! 
_Method_P_Kernel_OpenFile_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_2,r1
	push	r1
	mov	13,r1
_Label_3130:
	push	r0
	sub	r1,1,r1
	bne	_Label_3130
	mov	2666,r13		! source line 2666
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2676,r13		! source line 2676
	mov	"\0\0SE",r10
!   _temp_2799 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_2800 = _temp_2799 + 4
	load	[r14+-36],r1
	add	r1,4,r1
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
	mov	2677,r13		! source line 2677
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2678,r13		! source line 2678
	mov	"\0\0AS",r10
!   currentPos = currentPos + numBytes		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	2679,r13		! source line 2679
	mov	"\0\0SE",r10
!   _temp_2801 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_2802 = _temp_2801 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Unlock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2680,r13		! source line 2680
	mov	"\0\0RE",r10
	mov	2680,r13		! source line 2680
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_2805 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2804  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=targetAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=pos  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=numBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=_temp_2803  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_2803  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_2:
	.word	_sourceFileName
	.word	_Label_2806
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2807
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2808
	.word	12
	.word	4
	.word	_Label_2809
	.word	16
	.word	4
	.word	_Label_2810
	.word	-16
	.word	4
	.word	_Label_2811
	.word	-20
	.word	4
	.word	_Label_2812
	.word	-9
	.word	1
	.word	_Label_2813
	.word	-24
	.word	4
	.word	_Label_2814
	.word	-28
	.word	4
	.word	_Label_2815
	.word	-32
	.word	4
	.word	_Label_2816
	.word	-36
	.word	4
	.word	_Label_2817
	.word	-40
	.word	4
	.word	0
_Label_2806:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_2807:
	.ascii	"Pself\0"
	.align
_Label_2808:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2809:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2810:
	.byte	'?'
	.ascii	"_temp_2805\0"
	.align
_Label_2811:
	.byte	'?'
	.ascii	"_temp_2804\0"
	.align
_Label_2812:
	.byte	'C'
	.ascii	"_temp_2803\0"
	.align
_Label_2813:
	.byte	'?'
	.ascii	"_temp_2802\0"
	.align
_Label_2814:
	.byte	'?'
	.ascii	"_temp_2801\0"
	.align
_Label_2815:
	.byte	'?'
	.ascii	"_temp_2800\0"
	.align
_Label_2816:
	.byte	'?'
	.ascii	"_temp_2799\0"
	.align
_Label_2817:
	.byte	'I'
	.ascii	"pos\0"
	.align
! 
! ===============  METHOD ReadInt  ===============
! 
_Method_P_Kernel_OpenFile_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_3,r1
	push	r1
	mov	8,r1
_Label_3131:
	push	r0
	sub	r1,1,r1
	bne	_Label_3131
	mov	2685,r13		! source line 2685
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2690,r13		! source line 2690
	mov	"\0\0IF",r10
	mov	2690,r13		! source line 2690
	mov	"\0\0SE",r10
!   _temp_2821 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2822) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2821  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2820  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2820 then goto _Label_2819 else goto _Label_2818
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2818
	jmp	_Label_2819
_Label_2818:
! THEN...
	mov	2691,r13		! source line 2691
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2823 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2823  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2691,r13		! source line 2691
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2819:
! RETURN STATEMENT...
	mov	2693,r13		! source line 2693
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_3:
	.word	_sourceFileName
	.word	_Label_2824
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2825
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2826
	.word	-16
	.word	4
	.word	_Label_2827
	.word	-20
	.word	4
	.word	_Label_2828
	.word	-24
	.word	4
	.word	_Label_2829
	.word	-9
	.word	1
	.word	_Label_2830
	.word	-28
	.word	4
	.word	0
_Label_2824:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_2825:
	.ascii	"Pself\0"
	.align
_Label_2826:
	.byte	'?'
	.ascii	"_temp_2823\0"
	.align
_Label_2827:
	.byte	'?'
	.ascii	"_temp_2822\0"
	.align
_Label_2828:
	.byte	'?'
	.ascii	"_temp_2821\0"
	.align
_Label_2829:
	.byte	'C'
	.ascii	"_temp_2820\0"
	.align
_Label_2830:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD LoadExecutable  ===============
! 
_Method_P_Kernel_OpenFile_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_4,r1
	push	r1
	mov	68,r1
_Label_3132:
	push	r0
	sub	r1,1,r1
	bne	_Label_3132
	mov	2698,r13		! source line 2698
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2724,r13		! source line 2724
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2834 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_2833 = *_temp_2834  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_2833) then goto _Label_2832
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_2832
!	jmp	_Label_2831
_Label_2831:
! THEN...
	mov	2725,r13		! source line 2725
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2835 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_2835  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2725,r13		! source line 2725
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2832:
! IF STATEMENT...
	mov	2729,r13		! source line 2729
	mov	"\0\0IF",r10
	mov	2729,r13		! source line 2729
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_2839) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2838  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_2838 == 1112300152 then goto _Label_2837		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_2837
!	jmp	_Label_2836
_Label_2836:
! THEN...
	mov	2730,r13		! source line 2730
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2840 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_2840  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2730,r13		! source line 2730
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2731,r13		! source line 2731
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2837:
! ASSIGNMENT STATEMENT...
	mov	2735,r13		! source line 2735
	mov	"\0\0AS",r10
	mov	2735,r13		! source line 2735
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_2841) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2736,r13		! source line 2736
	mov	"\0\0AS",r10
	mov	2736,r13		! source line 2736
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_2842) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2737,r13		! source line 2737
	mov	"\0\0AS",r10
	mov	2737,r13		! source line 2737
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_2843) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-188],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	2738,r13		! source line 2738
	mov	"\0\0AS",r10
	mov	2738,r13		! source line 2738
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_2844) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	2739,r13		! source line 2739
	mov	"\0\0AS",r10
	mov	2739,r13		! source line 2739
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_2845) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2740,r13		! source line 2740
	mov	"\0\0AS",r10
	mov	2740,r13		! source line 2740
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_2846) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	2743,r13		! source line 2743
	mov	"\0\0IF",r10
!   _temp_2849 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_2849) then goto _Label_2848
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_2848
!	jmp	_Label_2847
_Label_2847:
! THEN...
	mov	2744,r13		! source line 2744
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2850 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_2850  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2744,r13		! source line 2744
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2745,r13		! source line 2745
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2848:
! ASSIGNMENT STATEMENT...
	mov	2747,r13		! source line 2747
	mov	"\0\0AS",r10
!   textSizeInPages = textSize div 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	2751,r13		! source line 2751
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_2852
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_2852
!	jmp	_Label_2851
_Label_2851:
! THEN...
	mov	2752,r13		! source line 2752
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2853 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2853  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2752,r13		! source line 2752
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2753,r13		! source line 2753
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2852:
! IF STATEMENT...
	mov	2757,r13		! source line 2757
	mov	"\0\0IF",r10
!   _temp_2856 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_2856) then goto _Label_2855
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_2855
!	jmp	_Label_2854
_Label_2854:
! THEN...
	mov	2758,r13		! source line 2758
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2857 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_2857  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2758,r13		! source line 2758
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2759,r13		! source line 2759
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2855:
! IF STATEMENT...
	mov	2761,r13		! source line 2761
	mov	"\0\0IF",r10
!   _temp_2860 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_2860 then goto _Label_2859		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_2859
!	jmp	_Label_2858
_Label_2858:
! THEN...
	mov	2762,r13		! source line 2762
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2861 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2861  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2762,r13		! source line 2762
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2763,r13		! source line 2763
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2859:
! ASSIGNMENT STATEMENT...
	mov	2765,r13		! source line 2765
	mov	"\0\0AS",r10
!   dataSizeInPages = dataSize div 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	2768,r13		! source line 2768
	mov	"\0\0IF",r10
!   _temp_2864 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_2864) then goto _Label_2863
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_2863
!	jmp	_Label_2862
_Label_2862:
! THEN...
	mov	2769,r13		! source line 2769
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2865 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_2865  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2769,r13		! source line 2769
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2770,r13		! source line 2770
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2863:
! IF STATEMENT...
	mov	2772,r13		! source line 2772
	mov	"\0\0IF",r10
!   _temp_2868 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_2868 then goto _Label_2867		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_2867
!	jmp	_Label_2866
_Label_2866:
! THEN...
	mov	2773,r13		! source line 2773
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2869 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2869  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2773,r13		! source line 2773
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2774,r13		! source line 2774
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2867:
! ASSIGNMENT STATEMENT...
	mov	2776,r13		! source line 2776
	mov	"\0\0AS",r10
!   bssSizeInPages = bssSize div 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2779,r13		! source line 2779
	mov	"\0\0AS",r10
!   _temp_2872 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_2871 = _temp_2872 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_2870 = _temp_2871 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_2870 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2794,r13		! source line 2794
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_2874		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2874
!	jmp	_Label_2873
_Label_2873:
! THEN...
	mov	2795,r13		! source line 2795
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2875 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2875  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2795,r13		! source line 2795
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2876 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2876  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2796,r13		! source line 2796
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2877 = _StringConst_203
	set	_StringConst_203,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2877  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2797,r13		! source line 2797
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2798,r13		! source line 2798
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2874:
! SEND STATEMENT...
	mov	2800,r13		! source line 2800
	mov	"\0\0SE",r10
!   _temp_2878 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! IF STATEMENT...
	mov	2806,r13		! source line 2806
	mov	"\0\0IF",r10
	mov	2806,r13		! source line 2806
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_2882) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2881  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_2881 == 707406378 then goto _Label_2880		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2880
!	jmp	_Label_2879
_Label_2879:
! THEN...
	mov	2807,r13		! source line 2807
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2883 = _StringConst_204
	set	_StringConst_204,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2883  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2807,r13		! source line 2807
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2808,r13		! source line 2808
	mov	"\0\0SE",r10
!   _temp_2884 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2809,r13		! source line 2809
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2880:
! ASSIGNMENT STATEMENT...
	mov	2813,r13		! source line 2813
	mov	"\0\0AS",r10
!   nextVirtPage = textStart div 8192		(int)
	load	[r14+-244],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! FOR STATEMENT...
	mov	2814,r13		! source line 2814
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2889 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2890 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2889  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_2885:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2890 then goto _Label_2888		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2888
_Label_2886:
	mov	2814,r13		! source line 2814
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2815,r13		! source line 2815
	mov	"\0\0AS",r10
	mov	2815,r13		! source line 2815
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2818,r13		! source line 2818
	mov	"\0\0IF",r10
	mov	2818,r13		! source line 2818
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2894) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2893  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2893 then goto _Label_2892 else goto _Label_2891
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2891
	jmp	_Label_2892
_Label_2891:
! THEN...
	mov	2819,r13		! source line 2819
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2895 = _StringConst_205
	set	_StringConst_205,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2895  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2819,r13		! source line 2819
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2820,r13		! source line 2820
	mov	"\0\0SE",r10
!   _temp_2896 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2821,r13		! source line 2821
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2892:
! SEND STATEMENT...
	mov	2823,r13		! source line 2823
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2824,r13		! source line 2824
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2887:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2885
! END FOR
_Label_2888:
! IF STATEMENT...
	mov	2828,r13		! source line 2828
	mov	"\0\0IF",r10
	mov	2828,r13		! source line 2828
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_2900) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2899  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_2899 == 707406378 then goto _Label_2898		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2898
!	jmp	_Label_2897
_Label_2897:
! THEN...
	mov	2829,r13		! source line 2829
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2901 = _StringConst_206
	set	_StringConst_206,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2901  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2829,r13		! source line 2829
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2830,r13		! source line 2830
	mov	"\0\0SE",r10
!   _temp_2902 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2831,r13		! source line 2831
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2898:
! FOR STATEMENT...
	mov	2835,r13		! source line 2835
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2907 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2908 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2907  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_2903:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2908 then goto _Label_2906		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2906
_Label_2904:
	mov	2835,r13		! source line 2835
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2836,r13		! source line 2836
	mov	"\0\0AS",r10
	mov	2836,r13		! source line 2836
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2839,r13		! source line 2839
	mov	"\0\0IF",r10
	mov	2839,r13		! source line 2839
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2912) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2911  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2911 then goto _Label_2910 else goto _Label_2909
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2909
	jmp	_Label_2910
_Label_2909:
! THEN...
	mov	2840,r13		! source line 2840
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2913 = _StringConst_207
	set	_StringConst_207,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2913  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2840,r13		! source line 2840
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2841,r13		! source line 2841
	mov	"\0\0SE",r10
!   _temp_2914 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2842,r13		! source line 2842
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2910:
! ASSIGNMENT STATEMENT...
	mov	2844,r13		! source line 2844
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2905:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2903
! END FOR
_Label_2906:
! IF STATEMENT...
	mov	2848,r13		! source line 2848
	mov	"\0\0IF",r10
	mov	2848,r13		! source line 2848
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2918) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2917  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_2917 == 707406378 then goto _Label_2916		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2916
!	jmp	_Label_2915
_Label_2915:
! THEN...
	mov	2849,r13		! source line 2849
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2919 = _StringConst_208
	set	_StringConst_208,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2919  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2849,r13		! source line 2849
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2850,r13		! source line 2850
	mov	"\0\0SE",r10
!   _temp_2920 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2851,r13		! source line 2851
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2916:
! ASSIGNMENT STATEMENT...
	mov	2855,r13		! source line 2855
	mov	"\0\0AS",r10
	mov	2855,r13		! source line 2855
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=bssSize  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Call the function
	mov	2859,r13		! source line 2859
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	2862,r13		! source line 2862
	mov	"\0\0RE",r10
!   ReturnResult: textStart  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_4:
	.word	_sourceFileName
	.word	_Label_2921
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_2922
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2923
	.word	12
	.word	4
	.word	_Label_2924
	.word	-16
	.word	4
	.word	_Label_2925
	.word	-20
	.word	4
	.word	_Label_2926
	.word	-24
	.word	4
	.word	_Label_2927
	.word	-28
	.word	4
	.word	_Label_2928
	.word	-32
	.word	4
	.word	_Label_2929
	.word	-36
	.word	4
	.word	_Label_2930
	.word	-40
	.word	4
	.word	_Label_2931
	.word	-9
	.word	1
	.word	_Label_2932
	.word	-44
	.word	4
	.word	_Label_2933
	.word	-48
	.word	4
	.word	_Label_2934
	.word	-52
	.word	4
	.word	_Label_2935
	.word	-56
	.word	4
	.word	_Label_2936
	.word	-60
	.word	4
	.word	_Label_2937
	.word	-64
	.word	4
	.word	_Label_2938
	.word	-68
	.word	4
	.word	_Label_2939
	.word	-72
	.word	4
	.word	_Label_2940
	.word	-76
	.word	4
	.word	_Label_2941
	.word	-10
	.word	1
	.word	_Label_2942
	.word	-80
	.word	4
	.word	_Label_2943
	.word	-84
	.word	4
	.word	_Label_2944
	.word	-88
	.word	4
	.word	_Label_2945
	.word	-92
	.word	4
	.word	_Label_2946
	.word	-96
	.word	4
	.word	_Label_2947
	.word	-100
	.word	4
	.word	_Label_2948
	.word	-104
	.word	4
	.word	_Label_2949
	.word	-108
	.word	4
	.word	_Label_2950
	.word	-112
	.word	4
	.word	_Label_2951
	.word	-116
	.word	4
	.word	_Label_2952
	.word	-120
	.word	4
	.word	_Label_2953
	.word	-124
	.word	4
	.word	_Label_2954
	.word	-128
	.word	4
	.word	_Label_2955
	.word	-132
	.word	4
	.word	_Label_2956
	.word	-136
	.word	4
	.word	_Label_2957
	.word	-140
	.word	4
	.word	_Label_2958
	.word	-144
	.word	4
	.word	_Label_2959
	.word	-148
	.word	4
	.word	_Label_2960
	.word	-152
	.word	4
	.word	_Label_2961
	.word	-156
	.word	4
	.word	_Label_2962
	.word	-160
	.word	4
	.word	_Label_2963
	.word	-164
	.word	4
	.word	_Label_2964
	.word	-168
	.word	4
	.word	_Label_2965
	.word	-172
	.word	4
	.word	_Label_2966
	.word	-176
	.word	4
	.word	_Label_2967
	.word	-180
	.word	4
	.word	_Label_2968
	.word	-184
	.word	4
	.word	_Label_2969
	.word	-188
	.word	4
	.word	_Label_2970
	.word	-192
	.word	4
	.word	_Label_2971
	.word	-196
	.word	4
	.word	_Label_2972
	.word	-200
	.word	4
	.word	_Label_2973
	.word	-204
	.word	4
	.word	_Label_2974
	.word	-208
	.word	4
	.word	_Label_2975
	.word	-212
	.word	4
	.word	_Label_2976
	.word	-216
	.word	4
	.word	_Label_2977
	.word	-220
	.word	4
	.word	_Label_2978
	.word	-224
	.word	4
	.word	_Label_2979
	.word	-228
	.word	4
	.word	_Label_2980
	.word	-232
	.word	4
	.word	_Label_2981
	.word	-236
	.word	4
	.word	_Label_2982
	.word	-240
	.word	4
	.word	_Label_2983
	.word	-244
	.word	4
	.word	_Label_2984
	.word	-248
	.word	4
	.word	_Label_2985
	.word	-252
	.word	4
	.word	_Label_2986
	.word	-256
	.word	4
	.word	_Label_2987
	.word	-260
	.word	4
	.word	_Label_2988
	.word	-264
	.word	4
	.word	_Label_2989
	.word	-268
	.word	4
	.word	0
_Label_2921:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_2922:
	.ascii	"Pself\0"
	.align
_Label_2923:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_2924:
	.byte	'?'
	.ascii	"_temp_2920\0"
	.align
_Label_2925:
	.byte	'?'
	.ascii	"_temp_2919\0"
	.align
_Label_2926:
	.byte	'?'
	.ascii	"_temp_2918\0"
	.align
_Label_2927:
	.byte	'?'
	.ascii	"_temp_2917\0"
	.align
_Label_2928:
	.byte	'?'
	.ascii	"_temp_2914\0"
	.align
_Label_2929:
	.byte	'?'
	.ascii	"_temp_2913\0"
	.align
_Label_2930:
	.byte	'?'
	.ascii	"_temp_2912\0"
	.align
_Label_2931:
	.byte	'C'
	.ascii	"_temp_2911\0"
	.align
_Label_2932:
	.byte	'?'
	.ascii	"_temp_2908\0"
	.align
_Label_2933:
	.byte	'?'
	.ascii	"_temp_2907\0"
	.align
_Label_2934:
	.byte	'?'
	.ascii	"_temp_2902\0"
	.align
_Label_2935:
	.byte	'?'
	.ascii	"_temp_2901\0"
	.align
_Label_2936:
	.byte	'?'
	.ascii	"_temp_2900\0"
	.align
_Label_2937:
	.byte	'?'
	.ascii	"_temp_2899\0"
	.align
_Label_2938:
	.byte	'?'
	.ascii	"_temp_2896\0"
	.align
_Label_2939:
	.byte	'?'
	.ascii	"_temp_2895\0"
	.align
_Label_2940:
	.byte	'?'
	.ascii	"_temp_2894\0"
	.align
_Label_2941:
	.byte	'C'
	.ascii	"_temp_2893\0"
	.align
_Label_2942:
	.byte	'?'
	.ascii	"_temp_2890\0"
	.align
_Label_2943:
	.byte	'?'
	.ascii	"_temp_2889\0"
	.align
_Label_2944:
	.byte	'?'
	.ascii	"_temp_2884\0"
	.align
_Label_2945:
	.byte	'?'
	.ascii	"_temp_2883\0"
	.align
_Label_2946:
	.byte	'?'
	.ascii	"_temp_2882\0"
	.align
_Label_2947:
	.byte	'?'
	.ascii	"_temp_2881\0"
	.align
_Label_2948:
	.byte	'?'
	.ascii	"_temp_2878\0"
	.align
_Label_2949:
	.byte	'?'
	.ascii	"_temp_2877\0"
	.align
_Label_2950:
	.byte	'?'
	.ascii	"_temp_2876\0"
	.align
_Label_2951:
	.byte	'?'
	.ascii	"_temp_2875\0"
	.align
_Label_2952:
	.byte	'?'
	.ascii	"_temp_2872\0"
	.align
_Label_2953:
	.byte	'?'
	.ascii	"_temp_2871\0"
	.align
_Label_2954:
	.byte	'?'
	.ascii	"_temp_2870\0"
	.align
_Label_2955:
	.byte	'?'
	.ascii	"_temp_2869\0"
	.align
_Label_2956:
	.byte	'?'
	.ascii	"_temp_2868\0"
	.align
_Label_2957:
	.byte	'?'
	.ascii	"_temp_2865\0"
	.align
_Label_2958:
	.byte	'?'
	.ascii	"_temp_2864\0"
	.align
_Label_2959:
	.byte	'?'
	.ascii	"_temp_2861\0"
	.align
_Label_2960:
	.byte	'?'
	.ascii	"_temp_2860\0"
	.align
_Label_2961:
	.byte	'?'
	.ascii	"_temp_2857\0"
	.align
_Label_2962:
	.byte	'?'
	.ascii	"_temp_2856\0"
	.align
_Label_2963:
	.byte	'?'
	.ascii	"_temp_2853\0"
	.align
_Label_2964:
	.byte	'?'
	.ascii	"_temp_2850\0"
	.align
_Label_2965:
	.byte	'?'
	.ascii	"_temp_2849\0"
	.align
_Label_2966:
	.byte	'?'
	.ascii	"_temp_2846\0"
	.align
_Label_2967:
	.byte	'?'
	.ascii	"_temp_2845\0"
	.align
_Label_2968:
	.byte	'?'
	.ascii	"_temp_2844\0"
	.align
_Label_2969:
	.byte	'?'
	.ascii	"_temp_2843\0"
	.align
_Label_2970:
	.byte	'?'
	.ascii	"_temp_2842\0"
	.align
_Label_2971:
	.byte	'?'
	.ascii	"_temp_2841\0"
	.align
_Label_2972:
	.byte	'?'
	.ascii	"_temp_2840\0"
	.align
_Label_2973:
	.byte	'?'
	.ascii	"_temp_2839\0"
	.align
_Label_2974:
	.byte	'?'
	.ascii	"_temp_2838\0"
	.align
_Label_2975:
	.byte	'?'
	.ascii	"_temp_2835\0"
	.align
_Label_2976:
	.byte	'?'
	.ascii	"_temp_2834\0"
	.align
_Label_2977:
	.byte	'?'
	.ascii	"_temp_2833\0"
	.align
_Label_2978:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_2979:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_2980:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_2981:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_2982:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_2983:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_2984:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_2985:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_2986:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2987:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_2988:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_2989:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
