code Main

  -- OS Class: Project 3
  --
  -- Cuong Ngo
  --

-----------------------------  Main  ---------------------------------
  function main ()
	InitializeScheduler()
--	SleepingBarberProblem()
	GamingParlorProblem()
	ThreadFinish ()

    endFunction

------------------------------ Sleeping Barber Problem ----------------------------

const
	CHAIRS = 5

var
	semWaiting: Semaphore = new Semaphore
	semBarbers: Semaphore = new Semaphore
	semCustomers: Semaphore = new Semaphore
	mutexLock: Mutex = new Mutex
	Waiting: int = 0
	theArray: array [21] of Thread = new array of Thread { 21 of new Thread }

function SleepingBarberProblem()
	semBarbers.Init(0)
	semCustomers.Init(0)
	semWaiting.Init(0)
	mutexLock.Init()
	print("       Barber 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20\n")
	theArray[0].Init("Customer 1")			--Creating 10 cstomers, 1 Barber
	theArray[0].Fork(CustomerLoop, 1)
	theArray[1].Init("Barber 1")
	theArray[1].Fork(Barber, 1)
	theArray[2].Init("Customer 2")
	theArray[2].Fork(CustomerLoop, 2)
	theArray[3].Init("Customer 3")
    	theArray[3].Fork(CustomerLoop, 3)
	theArray[4].Init("Customer 4")
    	theArray[4].Fork(CustomerLoop, 4)
	theArray[5].Init("Customer 5")
        theArray[5].Fork(CustomerLoop, 5)
        theArray[6].Init("Customer 6")
        theArray[6].Fork(CustomerLoop, 6)
        theArray[7].Init("Customer 7")
        theArray[7].Fork(CustomerLoop, 7)
	theArray[8].Init("Customer 8")
        theArray[8].Fork(CustomerLoop, 8)
        theArray[9].Init("Customer 9")
        theArray[9].Fork(CustomerLoop, 9)
        theArray[10].Init("Customer 10")
        theArray[10].Fork(CustomerLoop, 10)
        theArray[11].Init("Customer 11")
        theArray[11].Fork(CustomerLoop, 11)
        theArray[12].Init("Customer 12")
        theArray[12].Fork(CustomerLoop, 12)
        theArray[13].Init("Customer 13")
        theArray[13].Fork(CustomerLoop, 13)
        theArray[14].Init("Customer 14")
        theArray[14].Fork(CustomerLoop, 14)
        theArray[15].Init("Customer 15")
        theArray[15].Fork(CustomerLoop, 15)
        theArray[16].Init("Customer 16")
        theArray[16].Fork(CustomerLoop, 16)
        theArray[17].Init("Customer 17")
        theArray[17].Fork(CustomerLoop, 17)
        theArray[18].Init("Customer 18")
        theArray[18].Fork(CustomerLoop, 18)
        theArray[19].Init("Customer 19")
        theArray[19].Fork(CustomerLoop, 19)
        theArray[20].Init("Customer 20")
        theArray[20].Fork(CustomerLoop, 20)
endFunction

function Barber(myID: int)
	while true
		semCustomers.Down()		--Put barber to sleep if there are no customer
		mutexLock.Lock()		--If there's customer, start
		Waiting = Waiting - 1
		printSeats(myID)
		print("  start\n")
		semBarbers.Up()
		mutexLock.Unlock()
		cut_hair(myID)			--Begin cutting hair
	endWhile
endFunction

function CustomerLoop(myID: int)
	var i: int
	for i = 0 to 1
		Customer(myID)
	endFor
endFunction

function Customer(myID: int)
	mutexLock.Lock()
	printSeats(myID)			--Print the seats
	printLocation(myID, 'E')	--Print E as new customer enter
	if(Waiting < CHAIRS)		--If there's open chair
		Waiting = Waiting + 1	
		printSeats(myID)		--Pint the seats
		printLocation(myID, 'S')	--Indicate which thread is sitting
		semCustomers.Up()		
		mutexLock.Unlock()
		semBarbers.Down()
		get_haircut(myID)		--Customer is ready to get a haircut
	else
		printSeats(myID)		--If there's no open seat
		printLocation(myID, 'L')	--indicate that thread is leaving the barber's shop
		mutexLock.Unlock()
	endIf

endFunction

function cut_hair(myID: int)
	var i: int
	semWaiting.Down()		--This will check if barber is busy cutting other customer
	for i = 1 to 100			--If not, begin cutting
		currentThread.Yield()
	endFor
	printSeats(myID)		--Print seats
	print("  end\n")		--Barber finished cutting
endFunction


function get_haircut(myID: int)		--Customers are ready and waiting for Barber
	printSeats(myID)
	printLocation(myID, 'B')
	semWaiting.Up()
	printSeats(myID)
	printLocation(myID, 'F')
endFunction

function printSeats(myID: int)	--Print out the open and taken seats
	var i: int
	for i = 1 to Waiting
		print("X")
	endFor
	for i = Waiting to 4
		print("-")
	endFor
endFunction

function printLocation(myID: int, status: char)	--print out the status of current customer
	var i: int
	for i = 1 to 9
		print(" ")
	endFor
	for i = 2 to myID
		print("  ")
	endFor
	printChar(status)
	print("\n")
endFunction
-------------------------- The Gaming Parlor Problem --------------------------------
var
	mon: GameParlor
	group: array [8] of Thread = new array of Thread { 8 of new Thread }
function GamingParlorProblem()
	mon = new GameParlor
	mon.Init()
	group[0].Init("A")
	group[0].Fork(start, 4)
    group[1].Init("B")
    group[1].Fork(start, 4)
    group[2].Init("C")
    group[2].Fork(start, 5)
    group[3].Init("D")
    group[3].Fork(start, 5)
    group[4].Init("E")
    group[4].Fork(start, 2)
    group[5].Init("F")
    group[5].Fork(start, 2)
    group[6].Init("G")
    group[6].Fork(start, 1)
    group[7].Init("H")
    group[7].Fork(start, 1)
endFunction

function start(p: int)
	var i: int
	j: int
	for i = 1 to 5
		mon.Remove(p)
		currentThread.Yield()
		for j = 0 to 1000
			print("")
		endFor
		mon.Deposit(p)
		currentThread.Yield()
	endFor
endFunction

class GameParlor
	superclass Object
    fields
		monitorLock: Mutex
		DiceAvailable: int
		WaitingGroup: int
		notEmpty: Condition
		notFull: Condition
    methods
		Init()
    	Print(str: String, count: int)
		Deposit(dice: int)
		Remove(dice: int)
	endClass

behavior GameParlor
	method Init()
		WaitingGroup = 0
		DiceAvailable = 8
		monitorLock = new Mutex
		monitorLock.Init()
		notEmpty = new Condition
		notEmpty.Init()
		notFull = new Condition
		notFull.Init()
	endMethod

	method Deposit(dice: int)
		monitorLock.Lock()
		DiceAvailable = DiceAvailable + dice
		self.Print("releases and adds back", dice)
		notFull.Signal(&monitorLock)
		monitorLock.Unlock()
	endMethod

	method Remove(dice: int)
		monitorLock.Lock()
		self.Print("requests", dice)
		if WaitingGroup > 0
			notEmpty.Wait(&monitorLock)
		endIf

		WaitingGroup = WaitingGroup + 1
		while DiceAvailable < dice
			notFull.Wait(&monitorLock)
		endWhile

		DiceAvailable = DiceAvailable - dice
		notEmpty.Signal(&monitorLock)

		self.Print("proceeds with", dice)
		monitorLock.Unlock()
		
	endMethod

	method Print (str: String, count: int)
 -- This method prints the current thread's name and the arguments.
 -- It also prints the current number of dice available.
		print (currentThread.name)
		print (" ")
		print (str)
		print (" ")
 		printInt (count)
 		nl ()
 		print ("------------------------------Number of dice now avail = ")
 		printInt (DiceAvailable)
 		nl ()
 	endMethod
endBehavior



endCode
