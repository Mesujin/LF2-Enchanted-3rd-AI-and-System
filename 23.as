 //////////////////////////////////////////////////////////////////////////////////////////////////
 // Universal AI and Basic System for LF2ET, by Mesujin.                                         //
 // Ver. 0.81.220401                                                                             //
 //                                                                                              //
 // Do not modify if you don't know what you're gonna modify!                                    //
 // If you know what you're gonna modify, then have fun modifiying. ;3                           //
 // You did better to turn off the "Word Wrap" setting to get better look to the code. XD        //
 // ..normally, "Alt + Z" is the default shortcut for "Word Wrap" (if you don't know where it)   //
 //                                                                                              //
 // Credit: ddraw.dll by Lord Silva(Boop), Som1Lse, and everyone who take an effort in it.       //
 // Repository: https://github.com/Mesujin/LF2-Enchanted-3rd-AI-and-System (More readable there) //
 // The right of this AI belong to Mesujin :P this's mine :<                                     //
 //////////////////////////////////////////////////////////////////////////////////////////////////

//AI Configuration
 //In-game Settings
  bool FlawlessInput    = true  ;//
  int8 FlawlessInputSet = 0     ;//0 ≡ P1 - P2 | P3 - P4; 1 ≡ P1 - P3 | P2 - P4; 2 ≡ P1 - P4 | P2 - P3;
  int RandomItemsFromTheSky     ;//
  int BattleTimer               ;//
  int RoundBattle               ;//

  //Windows Console API - Debug Console
   bool ConsoleDebug = true   ;//Set ConsoleDebug into 'true' to activate the Debug Console that would helpful in modding the game.                                                                  {Default = false}
   int16 ConsoleRate = 0      ;//Sometimes the Console might causing some lag, so increasing the ConsoleRate would nice.                                                                 {Limit = 9} {Default = 0}
   int8 ConsoleDeCon = 0      ;//Default controller in controlling the Debug Menu. (0 = Non-default control)                                                                             {Limit = 8} {Default = 0}
   int ConsoleBuffer = 120    ;//The buffer size of the Console. ("Right Click" on the Console's title bar > Properties > Layout > Screen Buffer Size > Width) {Available value : 60; 80; 100; 120;} {Default = 100}
  //-//
 //-//

 //System Configuration (The Value must be Positive!) (If there's no "Limit", then the "Limit" is their Data Type limit.)
  int MaximumObjNum = 400                    ;//In case using an .exe were the Maximum Objects in the layer are modified. (Tho the ddraw.dll itself didn't support this, i guess.) {Default = 400}
  int MaximumFrame  = 400                    ;//In case using an .exe were the Maximum Frame of an object are modified.                                              {Limit = 998} {Default = 400}

  double PrespectiveRatio = 0.4              ;//Prespective of X-Axis to Z-Axis.                 {Default = 0.4} {Modify might causing a bug.}
  int YAxisSingularity    = 1000             ;//The singularity data of Y-Axis. {Minimum = 1000} {Default = 1000} {ddraw.dll modifying are required, just search "YAxisSingularity"}

  double NaturalHPRegenPer3TU        = 0.2   ;//Natural HP Regeneration.                           {Default = 0.2}
  double NaturalDHPRegenPer3TU       = 0     ;//Natural DHP Regeneration.                          {Default = 0}
  double NaturalMPRegenPer1TU        = 1     ;//Natural MP Regeneration.                           {Default = 1}
  double NaturalMPRegenPer1TU2       = 0.5   ;//Natural MP Regeneration when in Action.            {Default = 0.5}
  double NaturalEPRegenPer1TU        = 1     ;//Natural EP Regeneration.                           {Default = 1}
  double NaturalShieldDegeratePer3TU = 0.1   ;//Natural Shield Degeneration.                       {Default = 0.1}
  double ShieldConvertionRatio       = 0.75  ;//HP to Shield convertion rate when it's overloaded. {Default = 0.75}
  double RegenerationSpeed           = 1     ;//(Not natural regeneration)                         {Default = 1}
  double MaxMP                       = 1000  ;//                                                   {Default = 1000}
  double MaxEP                       = 125   ;//                                                   {Default = 125}

  bool WeaponPhysic                = true    ;//Activate a Physic calculation for Weapons/Items when landing? {Default = true}
  double MilkTotalRestorationRatio = 0.35    ;//Amount of Milk's regeneration, scaling to character's MaxHP.  {Default = 0.35}
  double MilkRestorationPer1TU     = 0.001   ;//Amount of Milk's regeneration each TU.                        {Default = 0.001}
  double TeaTotalRestorationRatio  = 0.8     ;//Amount of Tea's regenertaion, scaling to character's MaxHP.   {Default = 0.8}
  double TeaRestorationPer1TU      = 0.002   ;//Amount of Tea's regeneration each TU.                         {Default = 0.002}

  double DamageElement      = 100.040        ;//Percentage to the HP and DHP. (XXX.YYY : XXX = HP, YYY = DHP) {Default = 100.040}
  double TrueDamageElement  = 100.100        ;//Percentage to the HP and DHP. (XXX.YYY : XXX = HP, YYY = DHP) {Default = 100.100} 
  double BurstDamageElement = 100.000        ;//Percentage to the HP and DHP. (XXX.YYY : XXX = HP, YYY = DHP) {Default = 100.000} 
  double InnerDamageElement = 000.100        ;//Percentage to the HP and DHP. (XXX.YYY : XXX = HP, YYY = DHP) {Default = 000.100}
  
  bool IncludeAJADDJAsACast = false          ;//Include AJ, AD, and DJ as a Cast?                             {Default = false}
  uint64 InputCastWait        = 0            ;//Wait time for next Input to Cast. (0 = No wait.) {Limit = 99} {Default = 0}
  uint64 InputRunWait         = 10            ;//Wait time for next Input to Run. (0 = No wait.)  {Limit = 99} {Default = 8}
  uint64 SingleCastAvail      = 7            ;//Available time for single Input. (0 = Always.)   {Limit = 99} {Default = 6}
  uint64 CastAvail            = 0            ;//Available time for Cast. (0 = Always.)           {Limit = 99} {Default = 0}
  uint64 RunAvail             = 2            ;//Available time for Run. (0 = Always.)            {Limit = 99} {Default = 1}
  uint16 AJADDJOffside        = 2            ;//The TU Offside for AJ, AD, or DJ.                                {Default = 2}

  double HighFallDamage        = 50.0        ;//The damage taken by victim when High Fall property activated.   (XXX.Y : XXX = Amount, Y = Damage Type {0 = Damage; 1 = True Damage; 2 = Burst Damage; 3 = Inner Damage;}) {Default = 50.0}
  double MediumFallDamage      = 15.0        ;//The damage taken by victim when Medium Fall property activated. (XXX.Y : XXX = Amount, Y = Damage Type {0 = Damage; 1 = True Damage; 2 = Burst Damage; 3 = Inner Damage;}) {Default = 15.0}
  double VelocityForHighFall   = 40          ;//The minimum velocity to activate High Fall Property.                                                                                                                       {Default = 40}
  double VelocityForMediumFall = 10          ;//The minimum velocity to activate Medium Fall Property.                                                                                                                     {Default = 10}
  double BounceDamage          = 30.0        ;//The damage taken by victim when Bounce property activated.      (XXX.Y : XXX = Amount, Y = Damage Type {0 = Damage; 1 = True Damage; 2 = Burst Damage; 3 = Inner Damage;}) {Default = 30.0}
  double BounceVelRatio        = 0.3         ;//Reflected velocity by Bounce effect.                                                                                                                                       {Default = 0.3}

  double StageDifficultyModifier = 0.25      ;//DMG Dealt & DMG Taken modifier. (Easy = 1.25 - 3X)(Normal = 1.25 - 2X)(Difficult/Crazy = 1.25 - X) {Default = 0.25}
  double StageEnemyDamageRatio   = 0.8       ;//Enemy's damage ratio in the stage mode.                                                                        {Default = 0.8}
  double StageEnemyRegenRatio    = 0.8       ;//Enemy's natural regen ratio in the stage mode.                                                                 {Default = 0.8}

  double MovementBaseRatio   = 0.01          ;//           {Default = 0.01}
  double MovementSideRatio   = 0.7           ;//           {Default = 0.7}
  double MovementWalkRatio   = 1             ;//           {Default = 1}
  double MovementJumpRatioX  = 1.5           ;//           {Default = 1.5}
  double MovementJumpRatioY  = 0.1           ;//           {Default = 0.1}
  double MovementJumpYAmount = 16            ;//Base value {Default = 16}
  double MovementRunRatio    = 2             ;//           {Default = 2}
  double MovementDashRatioX  = 2.5           ;//           {Default = 2.5}
  double MovementDashRatioY  = 0.05          ;//           {Default = 0.05}
  double MovementDashYAmount = 10            ;//Base value {Default = 10}
  double MovementHeavyRatio  = 0.8           ;//           {Default = 0.8}

  bool WeightCalculation            = true   ;//Activate the Weight Calculation?                                                        {Default = true}
  double GAttackerVelKnockbackRatio = 0      ;//The ratio of Velocity that Attacker will gain once the attack are successful on ground. {Default = 0}
  double MAttackerVelKnockbackRatio = 0.5    ;//The ratio of Velocity that Attacker will gain once the attack are successful in midair. {Default = 0.5}
  double GAttackedVelKnockbackRatio = 1      ;//The ratio of Velocity that Attacked will gain once the attack are successful on ground. {Default = 1}
  double MAttackedVelKnockbackRatio = 0.5    ;//The ratio of Velocity that Attacked will gain once the attack are successful in midair. {Default = 0.5}

  int8 Type0HitLag      = 2                  ;//Type0's hitlag.                                            {Default = 2}
  double Type0GXGravity = 1                ;//Type0's ground X-axis Gravity/Velocity reduction per 1 TU. {Default = 1.7}
  double Type0MXGravity = 0.2                ;//Type0's midair X-axis Gravity/Velocity reduction per 1 TU. {Default = 0.2}
  double Type0MYGravity = 1.85               ;//Type0's midair Y-axis Gravity/Velocity reduction per 1 TU. {Default = 1.7}

  int8 Type1HitLag      = 2                  ;//Type1's hitlag.                                            {Default = 2}
  double Type1GXGravity = 0                  ;//Type1's ground X-axis Gravity/Velocity reduction per 1 TU. {Default = }
  double Type1MXGravity = 0                  ;//Type1's midair X-axis Gravity/Velocity reduction per 1 TU. {Default = }
  double Type1MYGravity = 0                  ;//Type1's midair Y-axis Gravity/Velocity reduction per 1 TU. {Default = }

  int8 Type2HitLag      = 2                  ;//Type2's hitlag.                                            {Default = 2}
  double Type2GXGravity = 0                  ;//Type2's ground X-axis Gravity/Velocity reduction per 1 TU. {Default = }
  double Type2MXGravity = 0                  ;//Type2's midair X-axis Gravity/Velocity reduction per 1 TU. {Default = }
  double Type2MYGravity = 0                  ;//Type2's midair Y-axis Gravity/Velocity reduction per 1 TU. {Default = }

  int8 Type3HitLag      = 0                  ;//Type3's hitlag.                                            {Default = 0}
  double Type3GXGravity = 0                  ;//Type3's ground X-axis Gravity/Velocity reduction per 1 TU. {Default = 0}
  double Type3MXGravity = 0                  ;//Type3's midair X-axis Gravity/Velocity reduction per 1 TU. {Default = 0}
  double Type3MYGravity = 0                  ;//Type3's midair Y-axis Gravity/Velocity reduction per 1 TU. {Default = 0} {Modify might causing a bug.}

  int8 Type4HitLag      = 2                  ;//Type4's hitlag.                                            {Default = 2}
  double Type4GXGravity = 0                  ;//Type4's ground X-axis Gravity/Velocity reduction per 1 TU. {Default = }
  double Type4MXGravity = 0                  ;//Type4's midair X-axis Gravity/Velocity reduction per 1 TU. {Default = }
  double Type4MYGravity = 0                  ;//Type4's midair Y-axis Gravity/Velocity reduction per 1 TU. {Default = }

  int8 Type5HitLag      = 2                  ;//Type5's hitlag.                                            {Default = 2}
  double Type5GXGravity = 0                  ;//Type5's ground X-axis Gravity/Velocity reduction per 1 TU. {Default = }
  double Type5MXGravity = 0                  ;//Type5's midair X-axis Gravity/Velocity reduction per 1 TU. {Default = }
  double Type5MYGravity = 0                  ;//Type5's midair Y-axis Gravity/Velocity reduction per 1 TU. {Default = }

  int8 Type6HitLag      = 2                  ;//Type6's hitlag.                                            {Default = 2}
  double Type6GXGravity = 0                  ;//Type6's ground X-axis Gravity/Velocity reduction per 1 TU. {Default = }
  double Type6MXGravity = 0                  ;//Type6's midair X-axis Gravity/Velocity reduction per 1 TU. {Default = }
  double Type6MYGravity = 0                  ;//Type6's midair Y-axis Gravity/Velocity reduction per 1 TU. {Default = }

  bool HighLevelCalculation      = true      ;//Activate the high level calculation for Velocity which is an affect from Density of Air(Too high velocity)?
  double AirDensitySpeed         = 70        ;//Maximum speed that can be achieved by the Density of Air from it's speed accumulation which also based on the Weight.
  double DecreasionEffectiveness = 100       ;//The percentage of effectiveness of the decreasion of speed accumulation.
 //-//
//-//

//Main System
 //Memorized Variables
  array < int > Database_Control = 3;
  array < int > Database_CameraZ = 3;
  array < int > Database_Exist = MaximumObjNum;
  array < int > Database_ExistCon = MaximumObjNum;
  array < int > Database_ExistT0 = MaximumObjNum;
  array < int > Database_ExistT0Com = MaximumObjNum;
  array < int > Database_TimeStop = MaximumObjNum;
  array < int > Database_Output = MaximumObjNum;         // {(7)>++} (X)Attack; (X)Defend; (X)Jump; (X)Up; (X)Left; (X)Down; (X)Right; 
  array < int16 > Database_Target = MaximumObjNum;
  array < int16 > Database_OpoFrame = MaximumObjNum;
  array < int16 > Database_WalkSys = MaximumObjNum;     // {<++} (XXX)Wait; (X)Set;
  array < uint16 > Database_Input = MaximumObjNum * 7;   // {>>} (+0)Attack; (+1)Defend; (+2)Jump; (+3)Up; (+4)Left; (+5)Down; (+6)Right;
  array < uint64 > Database_Cast = MaximumObjNum;        // {<++} (XX)Cast; (XX)Cast_Availablelity; (XX)Cast_Sequence; (XX)Cast_Wait; (X)Run; (XX)Run_Avaiablelity; (X)Run_Sequence; (XX)Run_Wait;
  array < double > Database_ToGround = MaximumObjNum;
  array < double > Database_Status = MaximumObjNum * 12; // {>>} (+0)HP/Shield; (+1)DHP; (+2)MP/EP; (+3)X; (+4)Y; (+5)Z; (+6)Vel_X; (+7)Vel_Y; (+8)Vel_Z; (+9)Speed_Multipler; (+10)DMG_Multipler; (+11)DMGTaken_Multipler;
  int NumberOfExist;
  int NumberOfExistCon;
  int NumberOfExistT0;
  int NumberOfExistT0Com;
  int EXRatio;
  int64 ElapsedTime;
  int8 RandomSingleFontCount;
  bool InBattle;
 //-//
 
 //Starting
  void id(){loadTarget(self.num); ego();}
  void ego()
  {
   if(Database_Control[0] != elapsed_time)
   {
    Database_Control[0] = elapsed_time;
    Controller(self.num);
   } else 
   {
    UnderControl(self.num);
   }
  }
 //-//

 //First Control
  void Controller(int Varb0001)
  {
   InBattle = false;
   if(elapsed_time == 1)
   {
    ElapsedTime = -6;
    InBattle = true;
    for(int Varb0007 = 0; Varb0007 < MaximumObjNum; ++Varb0007)
    {
     if(loadTarget(Varb0007) == -1)
     {
      Database_Status[(Varb0007 * 12) + 3] = -9999;
      Database_Status[(Varb0007 * 12) + 4] = -9999;
      Database_Status[(Varb0007 * 12) + 5] = -9999;
     } else
     {
      Database_Status[(Varb0007 * 12) + 3] = game.objects[Varb0007].x_real;
      Database_Status[(Varb0007 * 12) + 4] = game.objects[Varb0007].y_real;
      Database_Status[(Varb0007 * 12) + 5] = game.objects[Varb0007].z_real;
     }
    }
   }

   ElapsedTime += 1;
   NumberOfExist = 0; NumberOfExistCon = 0; NumberOfExistT0 = 0; NumberOfExistT0Com = 0;
   for(int Varb0003 = 0; Varb0003 < MaximumObjNum; ++Varb0003)
   {
    int Varb0009 = loadTarget(Varb0003);
    if(Varb0009 != -1)
    {
     Database_OpoFrame[Varb0003] = game.objects[Varb0003].frame1;
     if(game.objects[Varb0003].frame1 == 399) Control_Frame1(Varb0003, 0);
    }
    Database_Status[(Varb0003 * 12) + 9] = 1;
    Database_Status[(Varb0003 * 12) + 10] = 1;
    Database_Status[(Varb0003 * 12) + 11] = 1;
    switch(Varb0009)
    {
     case 0:
      if(game.objects[Varb0003].data.id != 51 && game.objects[Varb0003].data.id != 53)
      {
       Database_Exist[NumberOfExist] = Varb0003; NumberOfExist += 1;
      } else
      {
       Database_ExistCon[NumberOfExistCon] = Varb0003; NumberOfExistCon += 1;
      }
      if(Varb0003 > 9){Database_ExistT0Com[NumberOfExistT0Com] = Varb0003; NumberOfExistT0Com += 1;}
      Database_ExistT0[NumberOfExistT0] = Varb0003; NumberOfExistT0 += 1;
     break;
     case 1:
      Database_Exist[NumberOfExist] = Varb0003; NumberOfExist += 1;
     break;
     case 2:
      Database_Exist[NumberOfExist] = Varb0003; NumberOfExist += 1;
     break;
     case 3:
      Database_Exist[NumberOfExist] = Varb0003; NumberOfExist += 1;
     break;
     case 4:
      Database_Exist[NumberOfExist] = Varb0003; NumberOfExist += 1;
     break;
     case 5:
      Database_Exist[NumberOfExist] = Varb0003; NumberOfExist += 1;
     break;
     case 6:
      Database_Exist[NumberOfExist] = Varb0003; NumberOfExist += 1;
     break;
     default: break;
    }
   }

   for(int Varb0004 = 0; Varb0004 < NumberOfExistCon; ++Varb0004)
   {
    Control_Blink(Database_ExistCon[Varb0004], -199);
    if(Varb0004 > 0){Control_Frame1(Database_ExistCon[Varb0004], 398);} else 
    {
     if(Database_Control[1] != game.objects[Database_ExistCon[Varb0004]].frame1){InBattle = true; Database_Control[1] = game.objects[Database_ExistCon[Varb0004]].frame1;}
    }
   }

   //Console Menu
   if(ConsoleDebug)
   {
    int Varb1000 = elapsed_time % 60; int Varb1002 = ElapsedTime % 35;
    switch(ConsoleBuffer)
    {
     case 60: print("\n|============ "); break;
     case 80: print("\n|====================== "); break;
     case 100: print("\n|================================ "); break;
     case 120: print("\n|========================================== "); break;
     default: ConsoleBuffer = 100; print("\n|================================ "); break;
    }
    if(Varb1000 == 0 || Varb1002 == 0){RandomSingleFont();} else {print("D");}
    if(Varb1000 == 1 || Varb1002 == 1){RandomSingleFont();} else {print("e");}
    if(Varb1000 == 2 || Varb1002 == 2){RandomSingleFont();} else {print("b");}
    if(Varb1000 == 3 || Varb1002 == 3){RandomSingleFont();} else {print("u");}
    if(Varb1000 == 4 || Varb1002 == 4){RandomSingleFont();} else {print("g");}
    if(Varb1000 == 5 || Varb1002 == 5){RandomSingleFont();} else {print(" ");}
    if(Varb1000 == 6 || Varb1002 == 6){RandomSingleFont();} else {print("M");}
    if(Varb1000 == 7 || Varb1002 == 7){RandomSingleFont();} else {print("e");}
    if(Varb1000 == 8 || Varb1002 == 8){RandomSingleFont();} else {print("n");}
    if(Varb1000 == 9 || Varb1002 == 9){RandomSingleFont();} else {print("u");}
    if(Varb1000 == 10 || Varb1002 == 10){RandomSingleFont();} else {print(" ");}
    if(Varb1000 == 11 || Varb1002 == 11){RandomSingleFont();} else {print("-");}
    if(Varb1000 == 12 || Varb1002 == 12){RandomSingleFont();} else {print(" ");}
    if(Varb1000 == 13 || Varb1002 == 13){RandomSingleFont();} else {print("V");}
    if(Varb1000 == 14 || Varb1002 == 14){RandomSingleFont();} else {print("e");}
    if(Varb1000 == 15 || Varb1002 == 15){RandomSingleFont();} else {print("r");}
    if(Varb1000 == 16 || Varb1002 == 16){RandomSingleFont();} else {print("s");}
    if(Varb1000 == 17 || Varb1002 == 17){RandomSingleFont();} else {print("i");}
    if(Varb1000 == 18 || Varb1002 == 18){RandomSingleFont();} else {print("o");}
    if(Varb1000 == 19 || Varb1002 == 19){RandomSingleFont();} else {print("n");}
    if(Varb1000 == 20 || Varb1002 == 20){RandomSingleFont();} else {print(" ");}
    if(Varb1000 == 21 || Varb1002 == 21){RandomSingleFont();} else {print("0");}
    if(Varb1000 == 22 || Varb1002 == 22){RandomSingleFont();} else {print(".");}
    if(Varb1000 == 23 || Varb1002 == 23){RandomSingleFont();} else {print("8");}
    if(Varb1000 == 24 || Varb1002 == 24){RandomSingleFont();} else {print("1");}
    if(Varb1000 == 25 || Varb1002 == 25){RandomSingleFont();} else {print(".");}
    if(Varb1000 == 26 || Varb1002 == 26){RandomSingleFont();} else {print("2");}
    if(Varb1000 == 27 || Varb1002 == 27){RandomSingleFont();} else {print("2");}
    if(Varb1000 == 28 || Varb1002 == 28){RandomSingleFont();} else {print("0");}
    if(Varb1000 == 29 || Varb1002 == 29){RandomSingleFont();} else {print("5");}
    if(Varb1000 == 30 || Varb1002 == 30){RandomSingleFont();} else {print("1");}
    if(Varb1000 == 31 || Varb1002 == 31){RandomSingleFont();} else {print("2");}
    switch(ConsoleBuffer)
    {
     case 60: print(" ============| "); break;
     case 80: print(" ======================| "); break;
     case 100: print(" ================================| "); break;
     case 120: print(" ==========================================| "); break;
    }
    if(!InBattle)
    {
     print("Waiting for a battle..");
     switch(ConsoleBuffer)
     {
      case 60: print("\n|==================== "); break;
      case 80: print("\n|============================== "); break;
      case 100: print("\n|======================================== "); break;
      case 120: print("\n|================================================== "); break;
     }
     Varb1000 = elapsed_time % 70; Varb1002 = (ElapsedTime + 35) % 70;
     if(Varb1000 == 0 || Varb1002 == 19){RandomSingleFont();} else {print("D");}
     if(Varb1000 == 2 || Varb1002 == 33){RandomSingleFont();} else {print("e");}
     if(Varb1000 == 1 || Varb1002 == 5){RandomSingleFont();} else {print("b");}
     if(Varb1000 == 3 || Varb1002 == 11){RandomSingleFont();} else {print("u");}
     if(Varb1000 == 4 || Varb1002 == 31){RandomSingleFont();} else {print("g");}
     if(Varb1000 == 7 || Varb1002 == 12){RandomSingleFont();} else {print(" ");}
     if(Varb1000 == 9 || Varb1002 == 13){RandomSingleFont();} else {print("b");}
     if(Varb1000 == 2 || Varb1002 == 24){RandomSingleFont();} else {print("y");}
     if(Varb1000 == 16 || Varb1002 == 27){RandomSingleFont();} else {print(" ");}
     if(Varb1000 == 34 || Varb1002 == 16){RandomSingleFont();} else {print("M");}
     if(Varb1000 == 6 || Varb1002 == 29){RandomSingleFont();} else {print("e");}
     if(Varb1000 == 28 || Varb1002 == 14){RandomSingleFont();} else {print("s");}
     if(Varb1000 == 25 || Varb1002 == 15){RandomSingleFont();} else {print("u");}
     if(Varb1000 == 22 || Varb1002 == 16){RandomSingleFont();} else {print("j");}
     if(Varb1000 == 19 || Varb1002 == 26){RandomSingleFont();} else {print("i");}
     if(Varb1000 == 30 || Varb1002 == 8){RandomSingleFont();} else {print("n");}
     switch(ConsoleBuffer)
     {
      case 60: print(" ====================|"); break;
      case 80: print(" ==============================|"); break;
      case 100: print(" ========================================|"); break;
      case 120: print(" ==================================================|"); break;
     }
     printOut();
    } else
    { 
     print("ConsoleBufferSize: {"+ConsoleBuffer+", 100} (Please maintain the size.)\n PlayerName: ");
     for(int Varb0008 = 0; Varb0008 < 15; ++Varb0008) CharPrint(PlayerName[Varb0008]);
    }
   } else {if(!InBattle) printLogClear();}
   //-//

   if(InBattle) for(int Varb0002 = 0; Varb0002 < 10; ++Varb0002)
   {
    //print("\n <"+Varb0002+"> |"+game.objects[Varb0002].A+"|"+game.objects[Varb0002].D+"|"+game.objects[Varb0002].J+"|"+game.objects[Varb0002].up+"|"+game.objects[Varb0002].left+"|"+game.objects[Varb0002].down+"|"+game.objects[Varb0002].right+"|");
    if((elapsed_time - 1) % 2 == 0)
    {
     Database_Output[Varb0002] = 0;
     if(game.objects[Varb0002].A) Database_Output[Varb0002] += 1000000;
     if(game.objects[Varb0002].D) Database_Output[Varb0002] += 100000;
     if(game.objects[Varb0002].J) Database_Output[Varb0002] += 10000;
     if(game.objects[Varb0002].up) Database_Output[Varb0002] += 1000;
     if(game.objects[Varb0002].left) Database_Output[Varb0002] += 100;
     if(game.objects[Varb0002].down) Database_Output[Varb0002] += 10;
     if(game.objects[Varb0002].right) Database_Output[Varb0002] += 1;
    }
    UnderControl(Varb0002);
   }
   UnderControl(Varb0001);
  }
 //-//

 //Input Declaration
  void UnderControl(int Varb0005)
  {
   if(!InBattle) return;
   Control_InputNone(Varb0005);
   switch(Database_Output[Varb0005])
   {
    case 0000000: Input(false, false, false, false, false, false, false, Varb0005); break;
    case 1000000: Input(true, false, false, false, false, false, false, Varb0005); break;
    case 0100000: Input(false, true, false, false, false, false, false, Varb0005); break;
    case 0010000: Input(false, false, true, false, false, false, false, Varb0005); break;
    case 0001000: Input(false, false, false, true, false, false, false, Varb0005); break;
    case 0000100: Input(false, false, false, false, true, false, false, Varb0005); break;
    case 0000010: Input(false, false, false, false, false, true, false, Varb0005); break;
    case 0000001: Input(false, false, false, false, false, false, true, Varb0005); break;
    case 1100000: Input(true, true, false, false, false, false, false, Varb0005); break;
    case 1010000: Input(true, false, true, false, false, false, false, Varb0005); break;
    case 1001000: Input(true, false, false, true, false, false, false, Varb0005); break;
    case 1000100: Input(true, false, false, false, true, false, false, Varb0005); break;
    case 1000010: Input(true, false, false, false, false, true, false, Varb0005); break;
    case 1000001: Input(true, false, false, false, false, false, true, Varb0005); break;
    case 0110000: Input(false, true, true, false, false, false, false, Varb0005); break;
    case 0101000: Input(false, true, false, true, false, false, false, Varb0005); break;
    case 0100100: Input(false, true, false, false, true, false, false, Varb0005); break;
    case 0100010: Input(false, true, false, false, false, true, false, Varb0005); break;
    case 0100001: Input(false, true, false, false, false, false, true, Varb0005); break;
    case 0011000: Input(false, false, true, true, false, false, false, Varb0005); break;
    case 0010100: Input(false, false, true, false, true, false, false, Varb0005); break;
    case 0010010: Input(false, false, true, false, false, true, false, Varb0005); break;
    case 0010001: Input(false, false, true, false, false, false, true, Varb0005); break;
    case 0001100: Input(false, false, false, true, true, false, false, Varb0005); break;
    case 0001010: Input(false, false, false, true, false, true, false, Varb0005); break;
    case 0001001: Input(false, false, false, true, false, false, true, Varb0005); break;
    case 0000110: Input(false, false, false, false, true, true, false, Varb0005); break;
    case 0000101: Input(false, false, false, false, true, false, true, Varb0005); break;
    case 0000011: Input(false, false, false, false, false, true, true, Varb0005); break;
    case 1110000: Input(true, true, true, false, false, false, false, Varb0005); break;
    case 1101000: Input(true, true, false, true, false, false, false, Varb0005); break;
    case 1100100: Input(true, true, false, false, true, false, false, Varb0005); break;
    case 1100010: Input(true, true, false, false, false, true, false, Varb0005); break;
    case 1100001: Input(true, true, false, false, false, false, true, Varb0005); break;
    case 1011000: Input(true, false, true, true, false, false, false, Varb0005); break;
    case 1010100: Input(true, false, true, false, true, false, false, Varb0005); break;
    case 1010010: Input(true, false, true, false, false, true, false, Varb0005); break;
    case 1010001: Input(true, false, true, false, false, false, true, Varb0005); break;
    case 1001100: Input(true, false, false, true, true, false, false, Varb0005); break;
    case 1001010: Input(true, false, false, true, false, true, false, Varb0005); break;
    case 1001001: Input(true, false, false, true, false, false, true, Varb0005); break;
    case 1000110: Input(true, false, false, false, true, true, false, Varb0005); break;
    case 1000101: Input(true, false, false, false, true, false, true, Varb0005); break;
    case 1000011: Input(true, false, false, false, false, true, true, Varb0005); break;
    case 0111000: Input(false, true, true, true, false, false, false, Varb0005); break;
    case 0110100: Input(false, true, true, false, true, false, false, Varb0005); break;
    case 0110010: Input(false, true, true, false, false, true, false, Varb0005); break;
    case 0110001: Input(false, true, true, false, false, false, true, Varb0005); break;
    case 0101100: Input(false, true, false, true, true, false, false, Varb0005); break;
    case 0101010: Input(false, true, false, true, false, true, false, Varb0005); break;
    case 0101001: Input(false, true, false, true, false, false, true, Varb0005); break;
    case 0100110: Input(false, true, false, false, true, true, false, Varb0005); break;
    case 0100101: Input(false, true, false, false, true, false, true, Varb0005); break;
    case 0100011: Input(false, true, false, false, false, true, true, Varb0005); break;
    case 0011100: Input(false, false, true, true, true, false, false, Varb0005); break;
    case 0011010: Input(false, false, true, true, false, true, false, Varb0005); break;
    case 0011001: Input(false, false, true, true, false, false, true, Varb0005); break;
    case 0010110: Input(false, false, true, false, true, true, false, Varb0005); break;
    case 0010101: Input(false, false, true, false, true, false, true, Varb0005); break;
    case 0010011: Input(false, false, true, false, false, true, true, Varb0005); break;
    case 0001110: Input(false, false, false, true, true, true, false, Varb0005); break;
    case 0001101: Input(false, false, false, true, true, false, true, Varb0005); break;
    case 0001011: Input(false, false, false, true, false, true, true, Varb0005); break;
    case 0000111: Input(false, false, false, false, true, true, true, Varb0005); break;
    case 1111000: Input(true, true, true, true, false, false, false, Varb0005); break;
    case 1110100: Input(true, true, true, false, true, false, false, Varb0005); break;
    case 1110010: Input(true, true, true, false, false, true, false, Varb0005); break;
    case 1110001: Input(true, true, true, false, false, false, true, Varb0005); break;
    case 1101100: Input(true, true, false, true, true, false, false, Varb0005); break;
    case 1101010: Input(true, true, false, true, false, true, false, Varb0005); break;
    case 1101001: Input(true, true, false, true, false, false, true, Varb0005); break;
    case 1100110: Input(true, true, false, false, true, true, false, Varb0005); break;
    case 1100101: Input(true, true, false, false, true, false, true, Varb0005); break;
    case 1100011: Input(true, true, false, false, false, true, true, Varb0005); break;
    case 1011100: Input(true, false, true, true, true, false, false, Varb0005); break;
    case 1011010: Input(true, false, true, true, false, true, false, Varb0005); break;
    case 1011001: Input(true, false, true, true, false, false, true, Varb0005); break;
    case 1010110: Input(true, false, true, false, true, true, false, Varb0005); break;
    case 1010101: Input(true, false, true, false, true, false, true, Varb0005); break;
    case 1010011: Input(true, false, true, false, false, true, true, Varb0005); break;
    case 1001110: Input(true, false, false, true, true, true, false, Varb0005); break;
    case 1001101: Input(true, false, false, true, true, false, true, Varb0005); break;
    case 1001011: Input(true, false, false, true, false, true, true, Varb0005); break;
    case 1000111: Input(true, false, false, false, true, true, true, Varb0005); break;
    case 0111100: Input(false, true, true, true, true, false, false, Varb0005); break;
    case 0111010: Input(false, true, true, true, false, true, false, Varb0005); break;
    case 0111001: Input(false, true, true, true, false, false, true, Varb0005); break;
    case 0110110: Input(false, true, true, false, true, true, false, Varb0005); break;
    case 0110101: Input(false, true, true, false, true, false, true, Varb0005); break;
    case 0110011: Input(false, true, true, false, false, true, true, Varb0005); break;
    case 0101110: Input(false, true, false, true, true, true, false, Varb0005); break;
    case 0101101: Input(false, true, false, true, true, false, true, Varb0005); break;
    case 0101011: Input(false, true, false, true, false, true, true, Varb0005); break;
    case 0100111: Input(false, true, false, false, true, true, true, Varb0005); break;
    case 0011110: Input(false, false, true, true, true, true, false, Varb0005); break;
    case 0011101: Input(false, false, true, true, true, false, true, Varb0005); break;
    case 0011011: Input(false, false, true, true, false, true, true, Varb0005); break;
    case 0010111: Input(false, false, true, false, true, true, true, Varb0005); break;
    case 0001111: Input(false, false, false, true, true, true, true, Varb0005); break;
    case 1111100: Input(true, true, true, true, true, false, false, Varb0005); break;
    case 1111010: Input(true, true, true, true, false, true, false, Varb0005); break;
    case 1111001: Input(true, true, true, true, false, false, true, Varb0005); break;
    case 1110110: Input(true, true, true, false, true, true, false, Varb0005); break;
    case 1110101: Input(true, true, true, false, true, false, true, Varb0005); break;
    case 1110011: Input(true, true, true, false, false, true, true, Varb0005); break;
    case 1101110: Input(true, true, false, true, true, true, false, Varb0005); break;
    case 1101101: Input(true, true, false, true, true, false, true, Varb0005); break;
    case 1101011: Input(true, true, false, true, false, true, true, Varb0005); break;
    case 1100111: Input(true, true, false, false, true, true, true, Varb0005); break;
    case 1011110: Input(true, false, true, true, true, true, false, Varb0005); break;
    case 1011101: Input(true, false, true, true, true, false, true, Varb0005); break;
    case 1011011: Input(true, false, true, true, false, true, true, Varb0005); break;
    case 1010111: Input(true, false, true, false, true, true, true, Varb0005); break;
    case 1001111: Input(true, false, false, true, true, true, true, Varb0005); break;
    case 0111110: Input(false, true, true, true, true, true, false, Varb0005); break;
    case 0111101: Input(false, true, true, true, true, false, true, Varb0005); break;
    case 0111011: Input(false, true, true, true, false, true, true, Varb0005); break;
    case 0110111: Input(false, true, true, false, true, true, true, Varb0005); break;
    case 0101111: Input(false, true, false, true, true, true, true, Varb0005); break;
    case 0011111: Input(false, false, true, true, true, true, true, Varb0005); break;
    case 1111110: Input(true, true, true, true, true, true, false, Varb0005); break;
    case 1111101: Input(true, true, true, true, true, false, true, Varb0005); break;
    case 1111011: Input(true, true, true, true, false, true, true, Varb0005); break;
    case 1110111: Input(true, true, true, false, true, true, true, Varb0005); break;
    case 1101111: Input(true, true, false, true, true, true, true, Varb0005); break;
    case 1011111: Input(true, false, true, true, true, true, true, Varb0005); break;
    case 0111111: Input(false, true, true, true, true, true, true, Varb0005); break;
    case 1111111: Input(true, true, true, true, true, true, true, Varb0005); break;
   }
   if(Varb0005 == Database_ExistT0Com[NumberOfExistT0Com - 1]) SystemControl();
  }
 //-//

 //Final Control
  void SystemControl()
  {
   for(int Varb0006 = 0; Varb0006 < NumberOfExist; ++Varb0006)
   {
    if(game.objects[Database_Exist[Varb0006]].frame1 == 398)
    {
     Database_Status[(Database_Exist[Varb0006] * 12) + 3] = -9999;
     Database_Status[(Database_Exist[Varb0006] * 12) + 4] = -9999;
     Database_Status[(Database_Exist[Varb0006] * 12) + 5] = -9999;
    } else
    {
     if(Database_Status[(Database_Exist[Varb0006] * 12) + 3] == -9999) if(Database_Status[(Database_Exist[Varb0006] * 12) + 4] == -9999) if(Database_Status[(Database_Exist[Varb0006] * 12) + 5] == -9999)
     {
      if(StatusEjection(Database_Exist[Varb0006], game.objects[Database_Exist[Varb0006]].frame1, 3) == 0999)
      {
////////////////////// Number of Owner needed
      } else
      {
       Database_Status[(Database_Exist[Varb0006] * 12) + 3] = game.objects[Database_Exist[Varb0006]].x_real;
       Database_Status[(Database_Exist[Varb0006] * 12) + 4] = game.objects[Database_Exist[Varb0006]].y_real;
       Database_Status[(Database_Exist[Varb0006] * 12) + 5] = game.objects[Database_Exist[Varb0006]].z_real;
      }
     }
    }
   }
   
   //1 = Single - Attack
   //2 = Single - Defend
   //3 = Single - Jump
   //4 = Cast - D > A
   //5 = Cast - D > J
   //6 = Cast - D < A
   //7 = Cast - D < J
   //8 = Cast - D v A
   //9 = Cast - D v J
   //10 = Cast - D ^ A
   //11 = Cast - D ^ J
   //12 = Cast - D J A
   //13? = Cast - A J
   //14? = Cast - A D
   //15? = Cast - D J

   //1 = Single - Backward
   //2 = Single - Forward
   //3 = Cast - Right Right
   //4 = Cast - Left Left
   //5 = Cast - Up Up
   //6 = Cast - Down Down

   for(int Varb0006 = 0; Varb0006 < NumberOfExist; ++Varb0006)
   {
    if(StatusEjection(Database_Exist[Varb0006], game.objects[Database_Exist[Varb0006]].frame1, 5) % 1000000 == 100000)
    {
     if(((Database_Input[(Database_Exist[Varb0006] * 7) + 3] > 1 && Database_Input[(Database_Exist[Varb0006] * 7) + 5] == 1) || (Database_Input[(Database_Exist[Varb0006] * 7) + 3] == 1 && Database_Input[(Database_Exist[Varb0006] * 7) + 5] > 1 )) || ((Database_Input[(Database_Exist[Varb0006] * 7) + 4] > 1 && Database_Input[(Database_Exist[Varb0006] * 7) + 6] == 1) || (Database_Input[(Database_Exist[Varb0006] * 7) + 4] == 1 && Database_Input[(Database_Exist[Varb0006] * 7) + 6] > 1 )))
     Control_Frame1(Database_Exist[Varb0006], ((StatusEjection(Database_Exist[Varb0006], game.objects[Database_Exist[Varb0006]].frame1, 2) % 100000) / 100) + RandomValue(StatusEjection(Database_Exist[Varb0006], game.objects[Database_Exist[Varb0006]].frame1, 0) % 100));
    }
   }
    
   for(int Varb0006 = 0; Varb0006 < NumberOfExist; ++Varb0006)
   {
    int Varb0025;
    switch((Database_Cast[Database_Exist[Varb0006]] % 1000000000) - (Database_Cast[Database_Exist[Varb0006]] % 100000000))
    {
     case 100000000: if(game.objects[Database_Exist[Varb0006]].facing) if(game.objects[Database_Exist[Varb0006]].data.frames[game.objects[Database_Exist[Varb0006]].frame1].hit_Ua % 10000 != 0){InputSetUp(Database_Exist[Varb0006], Iabs(game.objects[Database_Exist[Varb0006]].data.frames[game.objects[Database_Exist[Varb0006]].frame1].hit_Ua) % 10000); Database_Cast[Database_Exist[Varb0006]] -= 100000000;} break;
     case 200000000: if(!game.objects[Database_Exist[Varb0006]].facing) if(game.objects[Database_Exist[Varb0006]].data.frames[game.objects[Database_Exist[Varb0006]].frame1].hit_Ua % 10000 != 0){InputSetUp(Database_Exist[Varb0006], Iabs(game.objects[Database_Exist[Varb0006]].data.frames[game.objects[Database_Exist[Varb0006]].frame1].hit_Ua) % 10000); Database_Cast[Database_Exist[Varb0006]] -= 200000000;} break;
     case 300000000:
      if(!game.objects[Database_Exist[Varb0006]].facing)
      {
       Varb0025 = (game.objects[Database_Exist[Varb0006]].data.frames[game.objects[Database_Exist[Varb0006]].frame1].hit_Da - (game.objects[Database_Exist[Varb0006]].data.frames[game.objects[Database_Exist[Varb0006]].frame1].hit_Da % 10000)) / 10000;
       if(Varb0025 != 0){InputSetUp(Database_Exist[Varb0006], Iabs(Varb0025)); Database_Cast[Database_Exist[Varb0006]] -= 300000000;}
      } else
      {
       Varb0025 = game.objects[Database_Exist[Varb0006]].data.frames[game.objects[Database_Exist[Varb0006]].frame1].hit_Da % 10000;
       if(Varb0025 != 0){InputSetUp(Database_Exist[Varb0006], Iabs(Varb0025)); Database_Cast[Database_Exist[Varb0006]] -= 300000000;}
      }
     break;
     case 400000000:
      if(game.objects[Database_Exist[Varb0006]].facing)
      {
       Varb0025 = (game.objects[Database_Exist[Varb0006]].data.frames[game.objects[Database_Exist[Varb0006]].frame1].hit_Da - (game.objects[Database_Exist[Varb0006]].data.frames[game.objects[Database_Exist[Varb0006]].frame1].hit_Da % 10000)) / 10000;
       if(Varb0025 != 0){InputSetUp(Database_Exist[Varb0006], Iabs(Varb0025)); Database_Cast[Database_Exist[Varb0006]] -= 400000000;}
      } else
      {
       Varb0025 = game.objects[Database_Exist[Varb0006]].data.frames[game.objects[Database_Exist[Varb0006]].frame1].hit_Da % 10000;
       if(Varb0025 != 0){InputSetUp(Database_Exist[Varb0006], Iabs(Varb0025)); Database_Cast[Database_Exist[Varb0006]] -= 400000000;}
      }
     break;
     case 500000000:
      Varb0025 = (game.objects[Database_Exist[Varb0006]].data.frames[game.objects[Database_Exist[Varb0006]].frame1].hit_Uj - (game.objects[Database_Exist[Varb0006]].data.frames[game.objects[Database_Exist[Varb0006]].frame1].hit_Uj % 10000)) / 10000;
      if(Varb0025 != 0){InputSetUp(Database_Exist[Varb0006], Iabs(Varb0025)); Database_Cast[Database_Exist[Varb0006]] -= 500000000;}
     break;
     case 600000000:
      Varb0025 = game.objects[Database_Exist[Varb0006]].data.frames[game.objects[Database_Exist[Varb0006]].frame1].hit_Uj % 10000;
      if(Varb0025 != 0){InputSetUp(Database_Exist[Varb0006], Iabs(Varb0025)); Database_Cast[Database_Exist[Varb0006]] -= 600000000;}
     break;
     default: break;
    }
    //switch(Database_Cast[Database_Exist[Varb0006]] % 100)
   }

   for(int Varb0006 = 0; Varb0006 < NumberOfExist; ++Varb0006)
   {
    if(StatusEjection(Database_Exist[Varb0006], game.objects[Database_Exist[Varb0006]].frame1, 4) % 1000000 == 200000)
    {
     bool Varb0022 = false; bool Varb0023 = false; bool Varb0024 = false;
     if(Database_Input[(Database_Exist[Varb0006] * 7) + 3] > 1 && Database_Input[(Database_Exist[Varb0006] * 7) + 5] == 1) Varb0022 = true;
     if(Database_Input[(Database_Exist[Varb0006] * 7) + 3] == 1 && Database_Input[(Database_Exist[Varb0006] * 7) + 5] > 1){Varb0022 = true; Varb0023 = true;}
     if(Database_Input[(Database_Exist[Varb0006] * 7) + 4] > 1 && Database_Input[(Database_Exist[Varb0006] * 7) + 6] == 1)
     {Varb0024 = true; if(Varb0022){if(Varb0023){XVelUp(Database_Exist[Varb0006], -(game.objects[Database_Exist[Varb0006]].data.walking_speed * Database_Status[(Database_Exist[Varb0006] * 12) + 9] * MovementBaseRatio * MovementWalkRatio * MovementSideRatio)); ZVelUp(Database_Exist[Varb0006], (game.objects[Database_Exist[Varb0006]].data.walking_speed * PrespectiveRatio * Database_Status[(Database_Exist[Varb0006] * 12) + 9] * MovementBaseRatio * MovementWalkRatio * MovementSideRatio));} else {XVelUp(Database_Exist[Varb0006], -(game.objects[Database_Exist[Varb0006]].data.walking_speed * Database_Status[(Database_Exist[Varb0006] * 12) + 9] * MovementBaseRatio * MovementWalkRatio * MovementSideRatio)); ZVelUp(Database_Exist[Varb0006], -(game.objects[Database_Exist[Varb0006]].data.walking_speed * PrespectiveRatio * Database_Status[(Database_Exist[Varb0006] * 12) + 9] * MovementBaseRatio * MovementWalkRatio * MovementSideRatio));}} else {XVelUp(Database_Exist[Varb0006], -(game.objects[Database_Exist[Varb0006]].data.walking_speed * Database_Status[(Database_Exist[Varb0006] * 12) + 9] * MovementBaseRatio * MovementWalkRatio));}}
     if(Database_Input[(Database_Exist[Varb0006] * 7) + 4] == 1 && Database_Input[(Database_Exist[Varb0006] * 7) + 6] > 1)
     {Varb0024 = true; if(Varb0022){if(Varb0023){XVelUp(Database_Exist[Varb0006], (game.objects[Database_Exist[Varb0006]].data.walking_speed * Database_Status[(Database_Exist[Varb0006] * 12) + 9] * MovementBaseRatio * MovementWalkRatio * MovementSideRatio)); ZVelUp(Database_Exist[Varb0006], (game.objects[Database_Exist[Varb0006]].data.walking_speed * PrespectiveRatio * Database_Status[(Database_Exist[Varb0006] * 12) + 9] * MovementBaseRatio * MovementWalkRatio * MovementSideRatio));} else {XVelUp(Database_Exist[Varb0006], (game.objects[Database_Exist[Varb0006]].data.walking_speed * Database_Status[(Database_Exist[Varb0006] * 12) + 9] * MovementBaseRatio * MovementWalkRatio * MovementSideRatio)); ZVelUp(Database_Exist[Varb0006], -(game.objects[Database_Exist[Varb0006]].data.walking_speed * PrespectiveRatio * Database_Status[(Database_Exist[Varb0006] * 12) + 9] * MovementBaseRatio * MovementWalkRatio * MovementSideRatio));}} else {XVelUp(Database_Exist[Varb0006], (game.objects[Database_Exist[Varb0006]].data.walking_speed * Database_Status[(Database_Exist[Varb0006] * 12) + 9] * MovementBaseRatio * MovementWalkRatio));}}
     if(!Varb0024 && Varb0022){if(Varb0023){ZVelUp(Database_Exist[Varb0006], (game.objects[Database_Exist[Varb0006]].data.walking_speed * PrespectiveRatio * Database_Status[(Database_Exist[Varb0006] * 12) + 9] * MovementBaseRatio * MovementWalkRatio));} else {{ZVelUp(Database_Exist[Varb0006], -(game.objects[Database_Exist[Varb0006]].data.walking_speed * PrespectiveRatio * Database_Status[(Database_Exist[Varb0006] * 12) + 9] * MovementBaseRatio * MovementWalkRatio));}}}
     if(Varb0022 || Varb0024)
     {
      switch((StatusEjection(Database_Exist[Varb0006], game.objects[Database_Exist[Varb0006]].frame1, 0) % 10))
      {
       case 1:
        Database_WalkSys[Database_Exist[Varb0006]] += 1;
        Database_WalkSys[Database_Exist[Varb0006]] = 1000 + (Database_WalkSys[Database_Exist[Varb0006]] % 1000);
        if(Database_WalkSys[Database_Exist[Varb0006]] % 1000 >= ((StatusEjection(Database_Exist[Varb0006], game.objects[Database_Exist[Varb0006]].frame1, 1) % 10000) / 10))
        {
         Database_WalkSys[Database_Exist[Varb0006]] = 1000; Control_Frame1(Database_Exist[Varb0006], game.objects[Database_Exist[Varb0006]].frame1 + 1); Control_WaitCounter(Database_Exist[Varb0006], 0);
        } else {Control_WaitCounter(Database_Exist[Varb0006], 0);}
       break;
       case 2:
        if(Database_WalkSys[Database_Exist[Varb0006]] == 0) Database_WalkSys[Database_Exist[Varb0006]] = 1000;
        Database_WalkSys[Database_Exist[Varb0006]] += 1;
        if(Database_WalkSys[Database_Exist[Varb0006]] % 1000 >= ((StatusEjection(Database_Exist[Varb0006], game.objects[Database_Exist[Varb0006]].frame1, 1) % 10000) / 10))
        {
         Database_WalkSys[Database_Exist[Varb0006]] -= Database_WalkSys[Database_Exist[Varb0006]] % 1000;
         if(Database_WalkSys[Database_Exist[Varb0006]] == 1000) Control_Frame1(Database_Exist[Varb0006], game.objects[Database_Exist[Varb0006]].frame1 + 1);
         if(Database_WalkSys[Database_Exist[Varb0006]] == 2000) Control_Frame1(Database_Exist[Varb0006], game.objects[Database_Exist[Varb0006]].frame1 - 1);
         Control_WaitCounter(Database_Exist[Varb0006], 0);
        } else {Control_WaitCounter(Database_Exist[Varb0006], 0);}
       break;
       case 3:
        Database_WalkSys[Database_Exist[Varb0006]] += 1;
        Database_WalkSys[Database_Exist[Varb0006]] = 2000 + (Database_WalkSys[Database_Exist[Varb0006]] % 1000);
        if(Database_WalkSys[Database_Exist[Varb0006]] % 1000 >= ((StatusEjection(Database_Exist[Varb0006], game.objects[Database_Exist[Varb0006]].frame1, 1) % 10000) / 10))
        {
         Database_WalkSys[Database_Exist[Varb0006]] = 2000; Control_Frame1(Database_Exist[Varb0006], game.objects[Database_Exist[Varb0006]].frame1 - 1); Control_WaitCounter(Database_Exist[Varb0006], 0);
        } else {Control_WaitCounter(Database_Exist[Varb0006], 0);}
       break;
       default: break;
      }
     }
    }
    if(StatusEjection(Database_Exist[Varb0006], game.objects[Database_Exist[Varb0006]].frame1, 4) % 1000000 == 210000)
    {
     bool Varb0022 = false;
     if(Database_Input[(Database_Exist[Varb0006] * 7) + 3] > 1 && Database_Input[(Database_Exist[Varb0006] * 7) + 5] == 1){Varb0022 = true; ZVelUp(Database_Exist[Varb0006], -(game.objects[Database_Exist[Varb0006]].data.walking_speed * PrespectiveRatio * Database_Status[(Database_Exist[Varb0006] * 12) + 9] * MovementBaseRatio * MovementRunRatio * MovementSideRatio));}
     if(Database_Input[(Database_Exist[Varb0006] * 7) + 5] > 1 && Database_Input[(Database_Exist[Varb0006] * 7) + 3] == 1){Varb0022 = true; ZVelUp(Database_Exist[Varb0006], (game.objects[Database_Exist[Varb0006]].data.walking_speed * PrespectiveRatio * Database_Status[(Database_Exist[Varb0006] * 12) + 9] * MovementBaseRatio * MovementRunRatio * MovementSideRatio));}
     if(!game.objects[Database_Exist[Varb0006]].facing){if(Varb0022){XVelUp(Database_Exist[Varb0006], (game.objects[Database_Exist[Varb0006]].data.walking_speed * Database_Status[(Database_Exist[Varb0006] * 12) + 9] * MovementBaseRatio * MovementRunRatio * MovementSideRatio));} else {XVelUp(Database_Exist[Varb0006], (game.objects[Database_Exist[Varb0006]].data.walking_speed * Database_Status[(Database_Exist[Varb0006] * 12) + 9] * MovementBaseRatio * MovementRunRatio));}} else {if(Varb0022){XVelUp(Database_Exist[Varb0006], -(game.objects[Database_Exist[Varb0006]].data.walking_speed * Database_Status[(Database_Exist[Varb0006] * 12) + 9] * MovementBaseRatio * MovementRunRatio * MovementSideRatio));} else {XVelUp(Database_Exist[Varb0006], -(game.objects[Database_Exist[Varb0006]].data.walking_speed * Database_Status[(Database_Exist[Varb0006] * 12) + 9] * MovementBaseRatio * MovementRunRatio));}}
     switch((StatusEjection(Database_Exist[Varb0006], game.objects[Database_Exist[Varb0006]].frame1, 0) % 10))
     {
      case 1:
       Database_WalkSys[Database_Exist[Varb0006]] += 1;
       Database_WalkSys[Database_Exist[Varb0006]] = 1000 + (Database_WalkSys[Database_Exist[Varb0006]] % 1000);
       if(Database_WalkSys[Database_Exist[Varb0006]] % 1000 >= ((StatusEjection(Database_Exist[Varb0006], game.objects[Database_Exist[Varb0006]].frame1, 1) % 10000) / 10))
       {
         Database_WalkSys[Database_Exist[Varb0006]] = 1000; Control_Frame1(Database_Exist[Varb0006], game.objects[Database_Exist[Varb0006]].frame1 + 1); Control_WaitCounter(Database_Exist[Varb0006], 0);
       } else {Control_WaitCounter(Database_Exist[Varb0006], 0);}
      break;
      case 2:
       if(Database_WalkSys[Database_Exist[Varb0006]] == 0) Database_WalkSys[Database_Exist[Varb0006]] = 1000;
       Database_WalkSys[Database_Exist[Varb0006]] += 1;
       if(Database_WalkSys[Database_Exist[Varb0006]] % 1000 >= ((StatusEjection(Database_Exist[Varb0006], game.objects[Database_Exist[Varb0006]].frame1, 1) % 10000) / 10))
       {
        Database_WalkSys[Database_Exist[Varb0006]] -= Database_WalkSys[Database_Exist[Varb0006]] % 1000;
        if(Database_WalkSys[Database_Exist[Varb0006]] == 1000) Control_Frame1(Database_Exist[Varb0006], game.objects[Database_Exist[Varb0006]].frame1 + 1);
        if(Database_WalkSys[Database_Exist[Varb0006]] == 2000) Control_Frame1(Database_Exist[Varb0006], game.objects[Database_Exist[Varb0006]].frame1 - 1);
        Control_WaitCounter(Database_Exist[Varb0006], 0);
       } else {Control_WaitCounter(Database_Exist[Varb0006], 0);}
      break;
      case 3:
       Database_WalkSys[Database_Exist[Varb0006]] += 1;
       Database_WalkSys[Database_Exist[Varb0006]] = 2000 + (Database_WalkSys[Database_Exist[Varb0006]] % 1000);
       if(Database_WalkSys[Database_Exist[Varb0006]] % 1000 >= ((StatusEjection(Database_Exist[Varb0006], game.objects[Database_Exist[Varb0006]].frame1, 1) % 10000) / 10))
       {
        Database_WalkSys[Database_Exist[Varb0006]] = 2000; Control_Frame1(Database_Exist[Varb0006], game.objects[Database_Exist[Varb0006]].frame1 - 1); Control_WaitCounter(Database_Exist[Varb0006], 0);
       } else {Control_WaitCounter(Database_Exist[Varb0006], 0);}
      break;
      default: break;
     }
    }
   }

   print("\n <\\> "+game.objects[2].wait_counter);

   //Layer Offside + Layer Deployment
   int Varb0014 = 0;
   for(int Varb0013 = 0; Varb0013 < 40; ++Varb0013) if(game.files.get_backgrounds()[background].transparency[Varb0013] != 999999999){Varb0014 += 1;} else {break;}
   array < int > Varb0015 = 30; int Varb0016 = 0; array < int > Varb0017 = 30; int Varb0018 = 0;
   for(int Varb0013 = Varb0014 + 2; Varb0013 < game.files.get_backgrounds()[background].layer_count + Varb0014; ++Varb0013)
   if(game.files.get_backgrounds()[background].transparency[Varb0013] > 1)
   {
    if(game.files.get_backgrounds()[background].transparency[Varb0013] >= 100000000 && game.files.get_backgrounds()[background].transparency[Varb0013] <= 499999999)
    {Varb0015[Varb0016] = Varb0013; Varb0016 += 1;}
    if(game.files.get_backgrounds()[background].transparency[Varb0013] >= 500000000 && game.files.get_backgrounds()[background].transparency[Varb0013] <= 899999999)
    {Varb0017[Varb0018] = Varb0013; Varb0018 += 1;}
   }

   //ToGround Deployment
   for(int Varb0006 = 0; Varb0006 < NumberOfExist; ++Varb0006)
   {
    int Varb0020 = 0; bool Varb0021 = false;
    for(int Varb0019 = 0; Varb0019 < Varb0016; ++Varb0019)
    if(Database_Status[(Database_Exist[Varb0006] * 12) + 5] >= game.files.get_backgrounds()[background].layer_x[Varb0015[Varb0019]] % 10000 && Database_Status[(Database_Exist[Varb0006] * 12) + 5] <= game.files.get_backgrounds()[background].layer_y[Varb0015[Varb0019]] % 10000)
    if(Database_Status[(Database_Exist[Varb0006] * 12) + 3] >= game.files.get_backgrounds()[background].layer_x[Varb0015[Varb0019]] - (game.files.get_backgrounds()[background].layer_x[Varb0015[Varb0019]] % 10000) && Database_Status[(Database_Exist[Varb0006] * 12) + 3] <= game.files.get_backgrounds()[background].layer_y[Varb0015[Varb0019]] - (game.files.get_backgrounds()[background].layer_y[Varb0015[Varb0019]] % 10000))
    if(Database_Status[(Database_Exist[Varb0006] * 12) + 4] <= -(game.files.get_backgrounds()[background].transparency[Varb0015[Varb0019]] % 10000))
    if((game.files.get_backgrounds()[background].transparency[Varb0015[Varb0019]] % 10000) > Varb0020)
    {
     Varb0020 = (game.files.get_backgrounds()[background].transparency[Varb0015[Varb0019]] % 10000); Varb0021 = true;
     Database_ToGround[Database_Exist[Varb0006]] = Dabs(Database_Status[(Database_Exist[Varb0006] * 12) + 4]) - (game.files.get_backgrounds()[background].transparency[Varb0015[Varb0019]] % 10000);
    }
   }

   //Debug
   for(int Varb3943 = 0; Varb3943 < NumberOfExist; ++Varb3943)
   {
    int Varb08 = Database_Exist[Varb3943];
    uint64 Varb09 = Database_Cast[Varb08] % 100;                                                         //Cast
    uint64 Varb10 = (Database_Cast[Varb08] % 10000)           - (Database_Cast[Varb08] % 100);           //Cast_Wait
    uint64 Varb11 = (Database_Cast[Varb08] % 1000000)         - (Database_Cast[Varb08] % 10000);         //Cast_Sequence
    uint64 Varb12 = (Database_Cast[Varb08] % 100000000)       - (Database_Cast[Varb08] % 1000000);       //Cast_InputWait
   
    uint64 Varb13 = (Database_Cast[Varb08] % 1000000000)      - (Database_Cast[Varb08] % 100000000);     //Dash
    uint64 Varb14 = (Database_Cast[Varb08] % 100000000000)    - (Database_Cast[Varb08] % 1000000000);    //Dash_Wait
    uint64 Varb15 = (Database_Cast[Varb08] % 1000000000000)   - (Database_Cast[Varb08] % 100000000000);  //Dash_Sequence
    uint64 Varb16 = (Database_Cast[Varb08] % 100000000000000) - (Database_Cast[Varb08] % 1000000000000); //Dash_InputWait
    print("\n ("+Varb08+" @"+game.objects[Varb08].frame1+" &"+game.objects[Varb08].data.id+") : \n | ["+Database_Input[(Varb08 * 7)]+"|"+Database_Input[(Varb08 * 7) + 1]+"|"+Database_Input[(Varb08 * 7) + 2]+"|"+Database_Input[(Varb08 * 7) + 3]+"|"+Database_Input[(Varb08 * 7) + 4]+"|"+Database_Input[(Varb08 * 7) + 5]+"|"+Database_Input[(Varb08 * 7) + 6]+"] {"+Varb09+", "+(Varb10 / 100)+", "+(Varb11 / 10000)+", "+(Varb12 / 1000000)+"} {"+(Varb13 / 100000000)+", "+(Varb14 / 1000000000)+", "+(Varb15 / 100000000000)+", "+(Varb16 / 1000000000000)+"} \n | ");
    print("("+Database_Status[(Varb08 * 12) + 3]+", "+Database_Status[(Varb08 * 12) + 4]+", "+Database_Status[(Varb08 * 12) + 5]+" - "+Database_ToGround[Varb08]+") ("+Database_Status[(Varb08 * 12) + 6]+", "+Database_Status[(Varb08 * 12) + 7]+", "+Database_Status[(Varb08 * 12) + 8]+")");
    print("\n | #"+Database_Status[(Varb08 * 12) + 9]+" "+Database_Status[(Varb08 * 12) + 10]+" "+Database_Status[(Varb08 * 12) + 11]);
   }

   //Finalizer
   for(int Varb0006 = 0; Varb0006 < NumberOfExist; ++Varb0006)
   {
    if(game.objects[Database_Exist[Varb0006]].shake == 0)
    {
     Database_Status[(Database_Exist[Varb0006] * 12) + 3] += Database_Status[(Database_Exist[Varb0006] * 12) + 6];
     Database_Status[(Database_Exist[Varb0006] * 12) + 4] += Database_Status[(Database_Exist[Varb0006] * 12) + 7];
     Database_Status[(Database_Exist[Varb0006] * 12) + 5] += Database_Status[(Database_Exist[Varb0006] * 12) + 8];
     switch(game.objects[Database_Exist[Varb0006]].data.type)
     {
      case 0:
       if(Database_ToGround[Database_Exist[Varb0006]] > 0)
       {
        double Varb0010 = 0; double Varb0011 = 0; double Varb0012 = 0;
        if(HighLevelCalculation)
        {
         Varb0010 = (Dabs(Database_Status[(Database_Exist[Varb0006] * 12) + 6]) / (AirDensitySpeed * game.objects[Database_Exist[Varb0006]].data.walking_speedz)) * (DecreasionEffectiveness / 100) * Type0MXGravity;
         Varb0011 = (Dabs(Database_Status[(Database_Exist[Varb0006] * 12) + 7]) / (AirDensitySpeed * game.objects[Database_Exist[Varb0006]].data.walking_speedz)) * (DecreasionEffectiveness / 100) * Type0MYGravity;
         Varb0012 = (Dabs(Database_Status[(Database_Exist[Varb0006] * 12) + 8]) / (AirDensitySpeed * game.objects[Database_Exist[Varb0006]].data.walking_speedz)) * (DecreasionEffectiveness / 100) * Type0MXGravity * PrespectiveRatio;
        }
        //X-Axis Midair
        if(Database_Status[(Database_Exist[Varb0006] * 12) + 6] > 0) if(Database_Status[(Database_Exist[Varb0006] * 12) + 6] - (Type0MXGravity + Varb0010) < 0){Database_Status[(Database_Exist[Varb0006] * 12) + 6] = 0;} else {Database_Status[(Database_Exist[Varb0006] * 12) + 6] -= (Type0MXGravity + Varb0010);}
        if(Database_Status[(Database_Exist[Varb0006] * 12) + 6] < 0) if(Database_Status[(Database_Exist[Varb0006] * 12) + 6] + (Type0MXGravity + Varb0010) > 0){Database_Status[(Database_Exist[Varb0006] * 12) + 6] = 0;} else {Database_Status[(Database_Exist[Varb0006] * 12) + 6] += (Type0MXGravity + Varb0010);}
        //Y-Axis Midair
        if(Database_Status[(Database_Exist[Varb0006] * 12) + 7] < 0) Database_Status[(Database_Exist[Varb0006] * 12) + 7] += (Type0MYGravity + Varb0011);
        if(Database_Status[(Database_Exist[Varb0006] * 12) + 7] > 0) Database_Status[(Database_Exist[Varb0006] * 12) + 7] += (Type0MYGravity - Varb0011);
        //Z-Axis Midair
        if(Database_Status[(Database_Exist[Varb0006] * 12) + 8] > 0) if(Database_Status[(Database_Exist[Varb0006] * 12) + 8] - ((Type0MXGravity * PrespectiveRatio) + Varb0012) < 0){Database_Status[(Database_Exist[Varb0006] * 12) + 8] = 0;} else {Database_Status[(Database_Exist[Varb0006] * 12) + 8] -= ((Type0MXGravity * PrespectiveRatio) + Varb0012);}
        if(Database_Status[(Database_Exist[Varb0006] * 12) + 8] < 0) if(Database_Status[(Database_Exist[Varb0006] * 12) + 8] + ((Type0MXGravity * PrespectiveRatio) + Varb0012) > 0){Database_Status[(Database_Exist[Varb0006] * 12) + 8] = 0;} else {Database_Status[(Database_Exist[Varb0006] * 12) + 8] += ((Type0MXGravity * PrespectiveRatio) + Varb0012);}
       } else
       {
        double Varb0010 = 0; double Varb0012 = 0;
        if(HighLevelCalculation)
        {
         Varb0010 = (Dabs(Database_Status[(Database_Exist[Varb0006] * 12) + 6]) / (AirDensitySpeed * game.objects[Database_Exist[Varb0006]].data.walking_speedz)) * (DecreasionEffectiveness / 100) * Type0GXGravity;
         Varb0012 = (Dabs(Database_Status[(Database_Exist[Varb0006] * 12) + 8]) / (AirDensitySpeed * game.objects[Database_Exist[Varb0006]].data.walking_speedz)) * (DecreasionEffectiveness / 100) * Type0GXGravity * PrespectiveRatio;
        }
        //X-Axis Midair
        if(Database_Status[(Database_Exist[Varb0006] * 12) + 6] > 0) if(Database_Status[(Database_Exist[Varb0006] * 12) + 6] - (Type0GXGravity + Varb0010) < 0){Database_Status[(Database_Exist[Varb0006] * 12) + 6] = 0;} else {Database_Status[(Database_Exist[Varb0006] * 12) + 6] -= (Type0GXGravity + Varb0010);}
        if(Database_Status[(Database_Exist[Varb0006] * 12) + 6] < 0) if(Database_Status[(Database_Exist[Varb0006] * 12) + 6] + (Type0GXGravity + Varb0010) > 0){Database_Status[(Database_Exist[Varb0006] * 12) + 6] = 0;} else {Database_Status[(Database_Exist[Varb0006] * 12) + 6] += (Type0GXGravity + Varb0010);}
        //Z-Axis Midair
        if(Database_Status[(Database_Exist[Varb0006] * 12) + 8] > 0) if(Database_Status[(Database_Exist[Varb0006] * 12) + 8] - ((Type0GXGravity * PrespectiveRatio) + Varb0012) < 0){Database_Status[(Database_Exist[Varb0006] * 12) + 8] = 0;} else {Database_Status[(Database_Exist[Varb0006] * 12) + 8] -= ((Type0GXGravity * PrespectiveRatio) + Varb0012);}
        if(Database_Status[(Database_Exist[Varb0006] * 12) + 8] < 0) if(Database_Status[(Database_Exist[Varb0006] * 12) + 8] + ((Type0GXGravity * PrespectiveRatio) + Varb0012) > 0){Database_Status[(Database_Exist[Varb0006] * 12) + 8] = 0;} else {Database_Status[(Database_Exist[Varb0006] * 12) + 8] += ((Type0GXGravity * PrespectiveRatio) + Varb0012);}
       }
      break;
      default: break;
     }
    }
    Control_XR(Database_Exist[Varb0006], Rounding(Database_Status[(Database_Exist[Varb0006] * 12) + 3]));
    Control_YR(Database_Exist[Varb0006], Rounding(Database_Status[(Database_Exist[Varb0006] * 12) + 4] - YAxisSingularity));
    Control_ZR(Database_Exist[Varb0006], Rounding(Database_Status[(Database_Exist[Varb0006] * 12) + 5] + (Database_Status[(Database_Exist[Varb0006] * 12) + 4] - Database_ToGround[Database_Exist[Varb0006]])));
    Control_VX(Database_Exist[Varb0006], 0);
    Control_VY(Database_Exist[Varb0006], 0);
    Control_VZ(Database_Exist[Varb0006], 0);
   }
   //-//

   //Console Menu
   if(ConsoleDebug)
   {
    switch(ConsoleBuffer)
    {
     case 60: print("\n|==================== "); break;
     case 80: print("\n|============================== "); break;
     case 100: print("\n|======================================== "); break;
     case 120: print("\n|================================================== "); break;
    }
    int Varb1000 = elapsed_time % 70; int Varb1002 = (ElapsedTime + 35) % 70;
    if(Varb1000 == 0 || Varb1002 == 19){RandomSingleFont();} else {print("D");}
    if(Varb1000 == 2 || Varb1002 == 33){RandomSingleFont();} else {print("e");}
    if(Varb1000 == 1 || Varb1002 == 5){RandomSingleFont();} else {print("b");}
    if(Varb1000 == 3 || Varb1002 == 11){RandomSingleFont();} else {print("u");}
    if(Varb1000 == 4 || Varb1002 == 31){RandomSingleFont();} else {print("g");}
    if(Varb1000 == 7 || Varb1002 == 12){RandomSingleFont();} else {print(" ");}
    if(Varb1000 == 9 || Varb1002 == 13){RandomSingleFont();} else {print("b");}
    if(Varb1000 == 2 || Varb1002 == 24){RandomSingleFont();} else {print("y");}
    if(Varb1000 == 16 || Varb1002 == 27){RandomSingleFont();} else {print(" ");}
    if(Varb1000 == 34 || Varb1002 == 16){RandomSingleFont();} else {print("M");}
    if(Varb1000 == 6 || Varb1002 == 29){RandomSingleFont();} else {print("e");}
    if(Varb1000 == 28 || Varb1002 == 14){RandomSingleFont();} else {print("s");}
    if(Varb1000 == 25 || Varb1002 == 15){RandomSingleFont();} else {print("u");}
    if(Varb1000 == 22 || Varb1002 == 16){RandomSingleFont();} else {print("j");}
    if(Varb1000 == 19 || Varb1002 == 26){RandomSingleFont();} else {print("i");}
    if(Varb1000 == 30 || Varb1002 == 8){RandomSingleFont();} else {print("n");}
    switch(ConsoleBuffer)
    {
     case 60: print(" ====================|"); break;
     case 80: print(" ==============================|"); break;
     case 100: print(" ========================================|"); break;
     case 120: print(" ==================================================|"); break;
    }
    printOut();
   } else {printLogClear();}
   //-//
  }
 //-//

 //Functions
  void Input(bool Varb01, bool Varb02, bool Varb03, bool Varb04, bool Varb05, bool Varb06, bool Varb07, int Varb08)
  {
   if(Varb01){Database_Input[(Varb08 * 7)] += 1; if(Database_Input[(Varb08 * 7)] > 60000) Database_Input[(Varb08 * 7)] = 60000;} else {Database_Input[(Varb08 * 7)] = 1;}
   if(Varb02){Database_Input[(Varb08 * 7) + 1] += 1; if(Database_Input[(Varb08 * 7) + 1] > 60000) Database_Input[(Varb08 * 7) + 1] = 60000;} else {Database_Input[(Varb08 * 7) + 1] = 1;}
   if(Varb03){Database_Input[(Varb08 * 7) + 2] += 1; if(Database_Input[(Varb08 * 7) + 2] > 60000) Database_Input[(Varb08 * 7) + 2] = 60000;} else {Database_Input[(Varb08 * 7) + 2] = 1;}
   if(Varb04){Database_Input[(Varb08 * 7) + 3] += 1; if(Database_Input[(Varb08 * 7) + 3] > 60000) Database_Input[(Varb08 * 7) + 3] = 60000;} else {Database_Input[(Varb08 * 7) + 3] = 1;}
   if(Varb05){Database_Input[(Varb08 * 7) + 4] += 1; if(Database_Input[(Varb08 * 7) + 4] > 60000) Database_Input[(Varb08 * 7) + 4] = 60000;} else {Database_Input[(Varb08 * 7) + 4] = 1;}
   if(Varb06){Database_Input[(Varb08 * 7) + 5] += 1; if(Database_Input[(Varb08 * 7) + 5] > 60000) Database_Input[(Varb08 * 7) + 5] = 60000;} else {Database_Input[(Varb08 * 7) + 5] = 1;}
   if(Varb07){Database_Input[(Varb08 * 7) + 6] += 1; if(Database_Input[(Varb08 * 7) + 6] > 60000) Database_Input[(Varb08 * 7) + 6] = 60000;} else {Database_Input[(Varb08 * 7) + 6] = 1;}
   
   bool Varb17 = false; if(Database_Input[(Varb08 * 7) + 3] == 2 || Database_Input[(Varb08 * 7) + 4] == 2 || Database_Input[(Varb08 * 7) + 5] == 2 || Database_Input[(Varb08 * 7) + 6] == 2) Varb17 = true;

   uint64 Varb09 = Database_Cast[Varb08] % 100;                                                         //Cast
   uint64 Varb10 = (Database_Cast[Varb08] % 10000)           - (Database_Cast[Varb08] % 100);           //Cast_Wait
   uint64 Varb11 = (Database_Cast[Varb08] % 1000000)         - (Database_Cast[Varb08] % 10000);         //Cast_Sequence
   uint64 Varb12 = (Database_Cast[Varb08] % 100000000)       - (Database_Cast[Varb08] % 1000000);       //Cast_InputWait
   
   uint64 Varb13 = (Database_Cast[Varb08] % 1000000000)      - (Database_Cast[Varb08] % 100000000);     //Dash
   uint64 Varb14 = (Database_Cast[Varb08] % 100000000000)    - (Database_Cast[Varb08] % 1000000000);    //Dash_Wait
   uint64 Varb15 = (Database_Cast[Varb08] % 1000000000000)   - (Database_Cast[Varb08] % 100000000000);  //Dash_Sequence
   uint64 Varb16 = (Database_Cast[Varb08] % 100000000000000) - (Database_Cast[Varb08] % 1000000000000); //Dash_InputWait

   if(Varb17) Varb09 = 0;
   if(Varb10 != 0) if(Varb10 == 100){Varb09 = 0;} else {Varb10 -= 100;}
   if(Varb12 != 0) if(Varb12 == 1000000){Varb11 = 0;} else {Varb12 -= 1000000;}

   if(Varb17) Varb13 = 0;
   if(Varb14 != 0) if(Varb14 == 1000000000){Varb13 = 0;} else {Varb14 -= 1000000000;}
   if(Varb16 != 0) if(Varb16 == 1000000000000){Varb15 = 0;} else {Varb16 -= 1000000000000;}

   bool Varb18;

   if(Database_Input[(Varb08 * 7) + 1] == 2)
   {
    Varb09 = 2; Varb10 = SingleCastAvail * 100;
    if(IncludeAJADDJAsACast)
    {
     Varb18 = true;
     if(Varb11 == 10000){Varb18 = false; Varb09 = 14; Varb10 = CastAvail * 100; Varb11 = 0;}
     if(Varb11 == 30000){Varb18 = false; Varb09 = 15; Varb10 = CastAvail * 100; Varb11 = 0;}
     if(Varb18){Varb11 = 20000; Varb12 = InputCastWait * 1000000;}
    } else
    {
     Varb11 = 20000; Varb12 = InputCastWait * 1000000;
    }
   }
 
   bool Varb19 = false; bool Varb20 = false;

   if(Database_Input[(Varb08 * 7) + 3] == 2)
   {
    if(Varb11 == 20000){Varb11 = 420000; Varb12 = InputCastWait * 1000000;}
    Varb18 = true; Varb19 = true;
    if(Varb15 == 100000000000){Varb18 = false; Varb13 = 500000000; Varb14 = RunAvail * 1000000000; Varb15 = 0;}
    if(Varb18){Varb15 = 100000000000; Varb16 = InputRunWait * 1000000000000;}
   }
   if(Database_Input[(Varb08 * 7) + 4] == 2)
   {
    Varb13 = 200000000; Varb14 = SingleCastAvail * 1000000000;
    if(Varb11 == 20000){Varb11 = 520000; Varb12 = InputCastWait * 1000000;}
    Varb18 = true; if(Varb19) Varb20 = true; Varb19 = true;
    if(Varb15 == 200000000000){Varb18 = false; Varb13 = 400000000; Varb14 = RunAvail * 1000000000; Varb15 = 0;}
    if(Varb18){Varb15 = 200000000000; Varb16 = InputRunWait * 1000000000000;}
   }
   if(Database_Input[(Varb08 * 7) + 5] == 2)
   {
    if(Varb11 == 20000){Varb11 = 620000; Varb12 = InputCastWait * 1000000;}
    Varb18 = true; if(Varb19) Varb20 = true; Varb19 = true;
    if(Varb15 == 300000000000){Varb18 = false; Varb13 = 600000000; Varb14 = RunAvail * 1000000000; Varb15 = 0;}
    if(Varb18){Varb15 = 300000000000; Varb16 = InputRunWait * 1000000000000;}
   }
   if(Database_Input[(Varb08 * 7) + 6] == 2)
   {
    Varb13 = 100000000; Varb14 = SingleCastAvail * 1000000000;
    if(Varb11 == 20000){Varb11 = 720000; Varb12 = InputCastWait * 1000000;}
    Varb18 = true; if(Varb19) Varb20 = true;
    if(Varb15 == 400000000000){Varb18 = false; Varb13 = 300000000; Varb14 = RunAvail * 1000000000; Varb15 = 0;}
    if(Varb18){Varb15 = 400000000000; Varb16 = InputRunWait * 1000000000000;}
   }

   if(Database_Input[(Varb08 * 7) + 2] == 2)
   {
    Varb09 = 3; Varb10 = SingleCastAvail * 100;
    if(IncludeAJADDJAsACast)
    {
     Varb18 = true;
     if(Varb11 == 10000){Varb18 = false; Varb09 = 13; Varb10 = CastAvail * 100; Varb11 = 0;}
     if(Varb11 == 20000){Varb18 = false; Varb09 = 15; Varb10 = CastAvail * 100; Varb11 = 320000; Varb12 = InputCastWait * 1000000;}
     if(Varb11 == 420000){Varb18 = false; Varb09 = 11; Varb10 = CastAvail * 100; Varb11 = 0;}
     if(Varb11 == 520000){Varb18 = false; Varb09 = 7; Varb10 = CastAvail * 100; Varb11 = 0;}
     if(Varb11 == 620000){Varb18 = false; Varb09 = 9; Varb10 = CastAvail * 100; Varb11 = 0;}
     if(Varb11 == 720000){Varb18 = false; Varb09 = 5; Varb10 = CastAvail * 100; Varb11 = 0;}
     if(Varb18){Varb11 = 30000; Varb12 = InputCastWait * 1000000;}
    } else
    {
     Varb18 = true;
     if(Varb11 == 20000){Varb18 = false; Varb11 = 320000; Varb12 = InputCastWait * 1000000;}
     if(Varb11 == 420000){Varb18 = false; Varb09 = 11; Varb10 = CastAvail * 100; Varb11 = 0;}
     if(Varb11 == 520000){Varb18 = false; Varb09 = 7; Varb10 = CastAvail * 100; Varb11 = 0;}
     if(Varb11 == 620000){Varb18 = false; Varb09 = 9; Varb10 = CastAvail * 100; Varb11 = 0;}
     if(Varb11 == 720000){Varb18 = false; Varb09 = 5; Varb10 = CastAvail * 100; Varb11 = 0;}
     if(Varb18){Varb11 = 0;}
    }
   }
   if(Database_Input[(Varb08 * 7)] == 2)
   {
    Varb09 = 1; Varb10 = SingleCastAvail * 100;
    if(IncludeAJADDJAsACast)
    {
     Varb18 = true;
     if(Varb11 == 20000){Varb18 = false; Varb09 = 14; Varb10 = CastAvail * 100; Varb11 = 0;}
     if(Varb11 == 30000){Varb18 = false; Varb09 = 13; Varb10 = CastAvail * 100; Varb11 = 0;}
     if(Varb11 == 420000){Varb18 = false; Varb09 = 10; Varb10 = CastAvail * 100; Varb11 = 0;}
     if(Varb11 == 520000){Varb18 = false; Varb09 = 6; Varb10 = CastAvail * 100; Varb11 = 0;}
     if(Varb11 == 620000){Varb18 = false; Varb09 = 8; Varb10 = CastAvail * 100; Varb11 = 0;}
     if(Varb11 == 720000){Varb18 = false; Varb09 = 4; Varb10 = CastAvail * 100; Varb11 = 0;}
     if(Varb11 == 320000){Varb18 = false; Varb09 = 12; Varb10 = CastAvail * 100; Varb11 = 0;}
     if(Varb18){Varb11 = 10000; Varb12 = InputCastWait * 1000000;}
    } else
    {
     Varb18 = true;
     if(Varb11 == 420000){Varb18 = false; Varb09 = 10; Varb10 = CastAvail * 100; Varb11 = 0;}
     if(Varb11 == 520000){Varb18 = false; Varb09 = 6; Varb10 = CastAvail * 100; Varb11 = 0;}
     if(Varb11 == 620000){Varb18 = false; Varb09 = 8; Varb10 = CastAvail * 100; Varb11 = 0;}
     if(Varb11 == 720000){Varb18 = false; Varb09 = 4; Varb10 = CastAvail * 100; Varb11 = 0;}
     if(Varb11 == 320000){Varb18 = false; Varb09 = 12; Varb10 = CastAvail * 100; Varb11 = 0;}
     if(Varb18){Varb11 = 0;}
    }
   }

   if(!IncludeAJADDJAsACast)
   {
    if(Database_Input[(Varb08 * 7) + 1] == 1 && Varb11 != 20000)
    if((Database_Input[(Varb08 * 7)] == 2 && Database_Input[(Varb08 * 7) + 2] >= 2 && Database_Input[(Varb08 * 7) + 2] <= AJADDJOffside) || (Database_Input[(Varb08 * 7) + 2] == 2 && Database_Input[(Varb08 * 7)] >= 2 && Database_Input[(Varb08 * 7)] <= AJADDJOffside))
    {
     Varb09 = 13; Varb10 = SingleCastAvail * 100;
    }

    if(Database_Input[(Varb08 * 7) + 2] == 1 && (Varb11 == 20000 || Varb11 == 0))
    if((Database_Input[(Varb08 * 7)] == 2 && Database_Input[(Varb08 * 7) + 1] >= 2 && Database_Input[(Varb08 * 7) + 1] <= AJADDJOffside) || (Database_Input[(Varb08 * 7) + 1] == 2 && Database_Input[(Varb08 * 7)] >= 2 && Database_Input[(Varb08 * 7)] <= AJADDJOffside))
    {
     Varb09 = 14; Varb10 = SingleCastAvail * 100;
    }

    if(Database_Input[(Varb08 * 7)] == 1 && (Varb11 == 20000 || Varb11 == 320000))
    if((Database_Input[(Varb08 * 7) + 1] == 2 && Database_Input[(Varb08 * 7) + 2] >= 2 && Database_Input[(Varb08 * 7) + 2] <= AJADDJOffside) || (Database_Input[(Varb08 * 7) + 2] == 2 && Database_Input[(Varb08 * 7) + 1] >= 2 && Database_Input[(Varb08 * 7) + 1] <= AJADDJOffside))
    {
     Varb09 = 15; Varb10 = SingleCastAvail * 100;
    }
   }

   if(Varb20){Varb09 = 0; Varb11 = 0; if(Varb13 > 200000000 || Database_Input[(Varb08 * 7) + 6] == Database_Input[(Varb08 * 7) + 4]) Varb13 = 0; Varb15 = 0;}
   Database_Cast[Varb08] = Varb09 + Varb10 + Varb11 + Varb12 + Varb13 + Varb14 + Varb15 + Varb16;
  }
  int StatusEjection(int Varb01, int Varb02, int Varb03)
  {
   return (game.objects[Varb01].data.frames[Varb02].state - (game.objects[Varb01].data.frames[Varb02].state % (10 ** Varb03)));
  }
  bool SpecialityCheck(int Varb01, double Varb02)
  {
   if(game.objects[Varb01].data.walking_frame_rate == Cnvrt_D_I(Varb02)) return true;
   if(game.objects[Varb01].data.running_frame_rate == Cnvrt_D_I(Varb02)) return true;
   if(game.objects[Varb01].data.running_speed == Varb02) return true;
   if(game.objects[Varb01].data.running_speedz == Varb02) return true;
   if(game.objects[Varb01].data.heavy_walking_speed == Varb02) return true;
   if(game.objects[Varb01].data.heavy_walking_speedz == Varb02) return true;
   if(game.objects[Varb01].data.heavy_running_speed == Varb02) return true;
   if(game.objects[Varb01].data.heavy_running_speedz == Varb02) return true;
   if(game.objects[Varb01].data.jump_height == Varb02) return true;
   if(game.objects[Varb01].data.jump_distance == Varb02) return true;
   if(game.objects[Varb01].data.jump_distancez == Varb02) return true;
   if(game.objects[Varb01].data.dash_distance == Varb02) return true;
   if(game.objects[Varb01].data.dash_distancez == Varb02) return true;
   if(game.objects[Varb01].data.rowing_height == Varb02) return true;
   if(game.objects[Varb01].data.rowing_distance == Varb02) return true;
   return false;
  }
  int Iabs(int Varb01){if(Varb01 < 0) return (-Varb01); return Varb01;}
  float Fabs(float Varb01){if(Varb01 < 0) return (-Varb01); return Varb01;}
  double Dabs(double Varb01){if(Varb01 < 0) return (-Varb01); return Varb01;}
  void RandomSingleFont()
  {
   RandomSingleFontCount += 1;
   if(RandomSingleFontCount > 50) RandomSingleFontCount = 0;
   switch(RandomSingleFontCount)
   {
    case 0: print("A"); break;
    case 1: print("&"); break;
    case 2: print("0"); break;
    case 3: print("^"); break;
    case 4: print("z"); break;
    case 5: print("H"); break;
    case 6: print("7"); break;
    case 7: print("#"); break;
    case 8: print("!"); break;
    case 9: print("b"); break;
    case 10: print("%"); break;
    case 11: print("@"); break;
    case 12: print("n"); break;
    case 13: print("("); break;
    case 14: print("E"); break;
    case 15: print("l"); break;
    case 16: print("q"); break;
    case 17: print(")"); break;
    case 18: print(" "); break;
    case 19: print("D"); break;
    case 20: print("e"); break;
    case 21: print("6"); break;
    case 22: print("0"); break;
    case 23: print("1"); break;
    case 24: print("0"); break;
    case 25: print("1"); break;
    case 26: print("*"); break;
    case 27: print("="); break;
    case 28: print("V"); break;
    case 29: print("/"); break;
    case 30: print("N"); break;
    case 31: print("i"); break;
    case 32: print("n"); break;
    case 33: print("\\"); break;
    case 34: print("G"); break;
    case 35: print("}"); break;
    case 36: print("b"); break;
    case 37: print("["); break;
    case 38: print("g"); break;
    case 39: print("o"); break;
    case 40: print(";"); break;
    case 41: print("<"); break;
    case 42: print("x"); break;
    case 43: print("'"); break;
    case 44: print("?"); break;
    case 45: print("?"); break;
    default: print(" "); break;
   }
  }
  void CharPrint(int8 Varb01)
  {
   switch(Varb01)
   {
    case 33: print("!"); break;
    case 34: print('"'); break;
    case 35: print("#"); break;
    case 36: print("$"); break;
    case 37: print("%"); break;
    case 38: print("&"); break;
    case 39: print("'"); break;
    case 40: print("("); break;
    case 41: print(")"); break;
    case 42: print("*"); break;
    case 43: print("+"); break;
    case 44: print(","); break;
    case 45: print("-"); break;
    case 46: print("."); break;
    case 47: print("/"); break;

    case 48: print("0"); break;
    case 49: print("1"); break;
    case 50: print("2"); break;
    case 51: print("3"); break;
    case 52: print("4"); break;
    case 53: print("5"); break;
    case 54: print("6"); break;
    case 55: print("7"); break;
    case 56: print("8"); break;
    case 57: print("9"); break;

    case 58: print(":"); break;
    case 59: print(';'); break;
    case 60: print("<"); break;
    case 61: print("="); break;
    case 62: print(">"); break;
    case 63: print("?"); break;
    case 64: print("@"); break;

    case 65: print("A"); break;
    case 66: print("B"); break;
    case 67: print("C"); break;
    case 68: print("D"); break;
    case 69: print("E"); break;
    case 70: print("F"); break;
    case 71: print("G"); break;
    case 72: print("H"); break;
    case 73: print("I"); break;
    case 74: print("J"); break;
    case 75: print("K"); break;
    case 76: print("L"); break;
    case 77: print("M"); break;
    case 78: print("N"); break;
    case 79: print("O"); break;
    case 80: print("P"); break;
    case 81: print("Q"); break;
    case 82: print("R"); break;
    case 83: print("S"); break;
    case 84: print("T"); break;
    case 85: print("U"); break;
    case 86: print("V"); break;
    case 87: print("W"); break;
    case 88: print("X"); break;
    case 89: print("Y"); break;
    case 90: print("Z"); break;

    case 91: print("["); break;
    case 92: print("\\"); break;
    case 93: print("]"); break;
    case 94: print("^"); break;
    case 95: print("_"); break;
    case 96: print("`"); break;

    case 97: print("a"); break;
    case 98: print("b"); break;
    case 99: print("c"); break;
    case 100: print("d"); break;
    case 101: print("e"); break;
    case 102: print("f"); break;
    case 103: print("g"); break;
    case 104: print("h"); break;
    case 105: print("i"); break;
    case 106: print("j"); break;
    case 107: print("k"); break;
    case 108: print("l"); break;
    case 109: print("m"); break;
    case 110: print("n"); break;
    case 111: print("o"); break;
    case 112: print("p"); break;
    case 113: print("q"); break;
    case 114: print("r"); break;
    case 115: print("s"); break;
    case 116: print("t"); break;
    case 117: print("u"); break;
    case 118: print("v"); break;
    case 119: print("w"); break;
    case 120: print("x"); break;
    case 121: print("y"); break;
    case 122: print("z"); break;

    case 123: print("{"); break;
    case 124: print("|"); break;
    case 125: print("}"); break;
    case 126: print("~"); break;

    default: print(" "); break;
   }
  }
  int RandomValue(int Varb01){return rand(Varb01 + 1);}
  void InputSetUp(int Varb01, int Varb02)
  {
   switch(Varb02 - (Varb02 % 1000))
   {
    case 0: Control_Frame1(Varb01, Varb02 % 1000); break;
    case 1000: Control_Frame1(Varb01, Varb02 % 1000); if(game.objects[Varb01].facing){Control_Facing(Varb01, 0);} else {Control_Facing(Varb01, 1);} break;
    case 7000: Control_Frame1(Varb01, Varb02 % 1000); Database_Cast[Varb01] -= (Database_Cast[Varb01] % 1000000000000) - (Database_Cast[Varb01] % 100000000000); break;
    case 8000: Control_Frame1(Varb01, Varb02 % 1000); if(game.objects[Varb01].facing){Control_Facing(Varb01, 0);} else {Control_Facing(Varb01, 1);} Database_Cast[Varb01] -= (Database_Cast[Varb01] % 1000000000000) - (Database_Cast[Varb01] % 100000000000); break;
   }
  }
  void XVelUp(int Varb01, double Varb02)
  {
   if(Varb02 > 0)
   {
    if(Database_Status[(Varb01 * 12) + 6] + Varb02 < Varb02)
    {Database_Status[(Varb01 * 12) + 6] += Varb02;} else
    {if(Database_Status[(Varb01 * 12) + 6] < Varb02) Database_Status[(Varb01 * 12) + 6] = Varb02;}
   }
   if(Varb02 < 0)
   {
    if(Database_Status[(Varb01 * 12) + 6] + Varb02 > Varb02)
    {Database_Status[(Varb01 * 12) + 6] += Varb02;} else
    {if(Database_Status[(Varb01 * 12) + 6] > Varb02) Database_Status[(Varb01 * 12) + 6] = Varb02;}
   }
  }
  void ZVelUp(int Varb01, double Varb02)
  {
   if(Varb02 > 0)
   {
    if(Database_Status[(Varb01 * 12) + 8] + Varb02 < Varb02)
    {Database_Status[(Varb01 * 12) + 8] += Varb02;} else
    {if(Database_Status[(Varb01 * 12) + 8] < Varb02) Database_Status[(Varb01 * 12) + 8] = Varb02;}
   }
   if(Varb02 < 0)
   {
    if(Database_Status[(Varb01 * 12) + 8] + Varb02 > Varb02)
    {Database_Status[(Varb01 * 12) + 8] += Varb02;} else
    {if(Database_Status[(Varb01 * 12) + 8] > Varb02) Database_Status[(Varb01 * 12) + 8] = Varb02;}
   }
  }
  double Rounding(double Varb01){return Cnvrt_Round(Varb01);}
 //-// //MainEnd
//-//