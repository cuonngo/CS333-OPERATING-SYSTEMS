code Main

  -- OS Class: Project 3
  --
  -- Cuong Ngo
  --

-----------------------------  Main  ---------------------------------

  function main ()
      InitializeScheduler()
--      SleepingBarber()
      GamingParlor()
    endFunction


-----------------------  Sleeping Barber Problem  ---------------------------

  -- This code implements the Sleeping-Barber task.
  -- There are several "Customers" and a single "Barber"
  -- There are only 5 chairs for Customers to wait on
  --
  -- The Customers are named by number starting with 1. Each Customer is a thread which
  -- will loop 10 times.  For each iteration, the Customer thread will find a seat.
  -- If there are no more seats, then the Customer will leave the Barber shop.
  -- If there are availiable seats, then the Customer will sit down and wait for barber
  --
  -- There are 5 states that Customers can be in:
  -- E = Enter
  -- S = Sit
  -- B = Begin
  -- F = Finish
  -- L = Leave
  --
  -- There are 2 states that Barber can be in:
  -- start = barbers begins haircut
  -- end = barbers ends haircut
  --


  const
    CHAIRS = 5

  var
    barbers: Semaphore = new Semaphore
    customers: Semaphore = new Semaphore
    cutting: Semaphore = new Semaphore
    lock: Mutex = new Mutex
    numWaiting: int = 0
    theArray: array [11] of Thread = new array of Thread { 11 of new Thread }

  function SleepingBarber ()
      barbers.Init(0)
      customers.Init(0)
      cutting.Init(0)
      lock.Init()

      print("       Barber 1 2 3 4 5 6 7 8 9 10\n")

      theArray[0].Init("Barber-1")
      theArray[0].Fork(BarberRoutine, 1)

      theArray[1].Init("Customer-1")
      theArray[1].Fork(CustomerLoop, 1)

      theArray[2].Init("Customer-2")
      theArray[2].Fork(CustomerLoop, 2)

      theArray[3].Init("Customer-3")
      theArray[3].Fork(CustomerLoop, 3)

      theArray[4].Init("Customer-4")
      theArray[4].Fork(CustomerLoop, 4)

      theArray[5].Init("Customer-5")
      theArray[5].Fork(CustomerLoop, 5)

      theArray[6].Init("Customer-6")
      theArray[6].Fork(CustomerLoop, 6)

      theArray[7].Init("Customer-7")
      theArray[7].Fork(CustomerLoop, 7)

      theArray[8].Init("Customer-8")
      theArray[8].Fork(CustomerLoop, 8)

      theArray[9].Init("Customer-9")
      theArray[9].Fork(CustomerLoop, 9)

      theArray[10].Init("Customer-10")
      theArray[10].Fork(CustomerLoop, 10)
      ThreadFinish ()
    endFunction

  function BarberRoutine(myID: int)
  --
  -- This function controls what Barber can do
  -- If there's no customer waiting, Barber will go to sleep
  -- If there are customers, Barber will cut_hair
  --

      while true
        customers.Down()
        lock.Lock()
        numWaiting = numWaiting - 1

        barbers.Up()
	printBarberStatus("start")
        lock.Unlock()
        cut_hair(myID)
      endWhile
    endFunction

  function CustomerLoop(myID: int)
  --
  -- This function will loop each thread 10 times
  -- Basically, each customers will enter the barber 10 times
  --

      var i: int

      for i = 1 to 10
        CustomerRoutine(myID)
      endFor
    endFunction

  function CustomerRoutine(myID: int)
  --
  -- This function will either put the customer in waiting chairs waiting for haircut
  -- or customers will leave the shop if there are not enough seats
  -- Each of the waiting customer will get a haircut
  --

      lock.Lock()
        printCustomerStatus(myID, 'E')
      if(numWaiting < CHAIRS)
        numWaiting = numWaiting + 1
        printCustomerStatus(myID, 'S')
        customers.Up()
        lock.Unlock()
        barbers.Down()
        get_haircut(myID)
      else
        printCustomerStatus(myID, 'L')
        lock.Unlock()
      endIf
    endFunction

  function cut_hair(myID: int)
      cutting.Down()
    endFunction

  function get_haircut(myID: int)
  --
  -- This function will put the Customer on the Barber chair
  -- Then the Barber will begins cutting the Customer hair
  -- Finally, Barber will finishes and Customer will leave
  --
      var i: int

      lock.Lock()
      printCustomerStatus(myID, 'B')
      lock.Unlock()

      for i = 0 to 10
        currentThread.Yield()
      endFor
      cutting.Up()
      lock.Lock()
      printCustomerStatus(myID, 'F')
      printBarberStatus("end")
      printCustomerStatus(myID, 'L')
      lock.Unlock()
    endFunction

  function printBarberStatus(status: String)
  --
  -- This function will print out the Barber's Status
  -- The Barber status will either be "start" or "end"
  --

      var i: int
      for i = 1 to numWaiting
        printChar('X')
      endFor
      for i = numWaiting to 4
        printChar('-')
      endFor

      print("  ")
      print(status)
      nl()
    endFunction

  function printCustomerStatus(myID: int, status: char)
  --
  -- This function will print out the Customer's Status
  -- It will be either 'E', 'S', 'B', 'F', 'L'
  --

      var i: int
      for i = 1 to numWaiting
        printChar('X')
      endFor
      for i = numWaiting to 4
        printChar('-')
      endFor
      for i = 1 to 9
        printChar(' ')
      endFor
      for i = 2 to myID
         print("  ")
      endFor

      printChar(status)
      nl()      
    endFunction

-----------------------  Gaming Parlor Problem  ---------------------------

  -- This code implements the Gaming parlor task.
  -- There are several "Group" and a game parlor
  --
  -- There are 4 games and 8 groups:
  -- A - Backgammon
  -- B - Backgammon
  -- C - Risk
  -- D - Risk
  -- E - Monopoly
  -- F - Monopoly
  -- G - Pictionary
  -- H - Pictionary
  --

  var
    mon: GameParlor
    Group: array [8] of Thread = new array of Thread {8 of new Thread }

  function GamingParlor ()

    mon = new GameParlor
    mon.Init()

    Group[0].Init("A")
    Group[0].Fork(startGamingParlor, 4)
    Group[1].Init("B")
    Group[1].Fork(startGamingParlor, 4)
    Group[2].Init("C")
    Group[2].Fork(startGamingParlor, 5)
    Group[3].Init("D")
    Group[3].Fork(startGamingParlor, 5)
    Group[4].Init("E")
    Group[4].Fork(startGamingParlor, 2)
    Group[5].Init("F")
    Group[5].Fork(startGamingParlor, 2)
    Group[6].Init("G")
    Group[6].Fork(startGamingParlor, 1)
    Group[7].Init("H")
    Group[7].Fork(startGamingParlor, 1)
    ThreadFinish()
  endFunction

  function startGamingParlor (p: int)
  --
  -- The parameter "p" identifies how many dice group request/return.
  -- Each group will play 5 games
  -- The yield function indicate that the group is busy and need some time
  --
      var
        i: int
      for i = 1 to 5
        mon.getDice(p)
        currentThread.Yield()
        mon.releaseDice(p)
      endFor
    endFunction

  class GameParlor
    superclass Object
    fields
      monitorLock: Mutex
      firstInLine: Condition
      otherInLine: Condition
      numDice: int
      numbWaiting: int
    methods
      Init ()
      getDice (p: int)
      releaseDice (p: int)
      Print(str: String, count: int)
  endClass

  behavior GameParlor

    method Init()

      monitorLock = new Mutex
      monitorLock.Init()

      firstInLine = new Condition
      firstInLine.Init()

      otherInLine = new Condition
      otherInLine.Init()

      numDice = 8
      numWaiting = 0
    endMethod

    method getDice (p: int)
    --
    -- When a group requesting an p amound of dice
    -- It will first check how many group are waiting, if there's more than one
    -- then put it into waiting queue. This will avoid the starvation
    --

      monitorLock.Lock()
      self.Print ("requests", p)
      numbWaiting = numbWaiting + 1
      if numbWaiting != 1
        otherInLine.Wait (&monitorLock)
      endIf

    -- If there are not enough dice, put the current group into queue
    -- This group will be the next group for playing games
    -- When there are enough dice, the waiting group will then proceed

      while numDice < p
        firstInLine.Wait (&monitorLock)
      endWhile

      numDice = numDice - p
      numbWaiting = numbWaiting - 1

      self.Print("proceeds with", p)
      otherInLine.Signal (&monitorLock)
      monitorLock.Unlock()
    endMethod

    method releaseDice (p: int)
    --
    -- After a group finished playing a game, it will then return the dice back to the game parlor
    -- A signal will be called indicating that this group is finished and it will wake up
    -- the other group. 
    --
      monitorLock.Lock()
      self.Print ("releases and adds back", p)
      numDice = numDice + p
      firstInLine.Signal(&monitorLock)
      monitorLock.Unlock()
    endMethod

    method Print (str: String, count: int)
    --
    -- This method prints the current thread's name and the arguments.
    -- It also prints the current number of dice available.
    --
      print (currentThread.name)
      print (" ")
      print (str)
      print (" ")
      printInt (count)
      nl ()
      print ("------------------------------Number of dice now avail = ")
      printInt (numDice)
      nl ()
   endMethod

  endBehavior






endCode
