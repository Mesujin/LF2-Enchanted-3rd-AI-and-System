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
  bool FixedInput = false       ;//
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
  double StartingMP                  = 500   ;//
  double StartingEP                  = 0     ;//

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
  uint64 InputRunWait         = 9            ;//Wait time for next Input to Run. (0 = No wait.)  {Limit = 99} {Default = 9}
  uint64 SingleCastAvail      = 5            ;//Available time for single Input. (0 = Always.)   {Limit = 99} {Default = 5}
  uint64 CastAvail            = 0            ;//Available time for Cast. (0 = Always.)           {Limit = 99} {Default = 0}
  uint64 RunAvail             = 5            ;//Available time for Run. (0 = Always.)            {Limit = 99} {Default = 5}
  uint16 AJADDJOffside        = 3            ;//The TU Offside for AJ, AD, or DJ.                             {Default = 3}

  double LandingSpeedReduction = 0.3         ;//X-Vel and Z-Vel reduction when landing.                                                                                                                                  {Default = 0.3}
  double VelocityForHighFall   = 30          ;//The minimum velocity to activate High Fall Property.                                                                                                                     {Default = 40}
  double VelocityForFall       = 10          ;//The minimum velocity to activate Medium Fall Property.                                                                                                                   {Default = 10}
  double HighFallRebound       = 0.2         ;//Ratio of reflected velocity by High Fall property.                                                                                                                       {Default = 0.2}
  double FallRebound           = 0.2         ;//Ratio of reflected velocity by Fall property.                                                                                                                            {Default = 0.2}
  double BounceRebound         = 0.5         ;//Ratio of reflected velocity by Bounce property.                                                                                                                          {Default = 0.5}
  double HighFallReboundVel    = 2           ;//Minimum velocity of High Fall property.                                                                                                                                  {Default = 2}
  double FallReboundVel        = 2           ;//Minimum velocity of Fall property.                                                                                                                                       {Default = 2}
  double BounceReboundVel      = 2           ;//Minimum velocity of Bounce property.                                                                                                                                     {Default = 2}
  float HighFallDamage         = 50.0        ;//The damage taken by victim when High Fall property activated. (XXX.Y : XXX = Amount, Y = Damage Type {0 = Damage; 1 = True Damage; 2 = Burst Damage; 3 = Inner Damage;}) {Default = 50.0}
  float FallDamage             = 10.0        ;//The damage taken by victim when Fall property activated.      (XXX.Y : XXX = Amount, Y = Damage Type {0 = Damage; 1 = True Damage; 2 = Burst Damage; 3 = Inner Damage;}) {Default = 10.0}
  float BounceDamage           = 30.0        ;//The damage taken by victim when Bounce property activated.    (XXX.Y : XXX = Amount, Y = Damage Type {0 = Damage; 1 = True Damage; 2 = Burst Damage; 3 = Inner Damage;}) {Default = 30.0}
  bool UnremoveableBounce      = false       ;//Wull bounce get depeleted by a hit?                                                                                                                                      {Default = false}

  double StageDifficultyModifier = 0.25      ;//Enemies' MaxHP, HP, and DHP modifier. (Easy = 1.25 - 3X)(Normal = 1.25 - 2X)(Difficult/Crazy = 1.25 - X) {Default = 0.25}
  double StageEnemyDamageRatio   = 0.8       ;//Enemies's damage ratio in the stage mode.                                                                {Default = 0.8}
  double StageEnemyRegenRatio    = 0.8       ;//Enemies's natural regen ratio in the stage mode.                                                         {Default = 0.8}

  double MovementBaseRatio        = 0.01     ;//            {Default = 0.01}
  double MovementSideRatio        = 0.7      ;//            {Default = 0.7}
  double MovementWalkRatio        = 1        ;//            {Default = 1}
  double MovementJumpRatioX       = 1.5      ;//            {Default = 1.5}
  double MovementJumpRatioY       = 0.1      ;//            {Default = 0.1}
  double MovementJumpYAmount      = 13       ;//Base value  {Default = 13}
  double MovementJumpFixedYAmount = 1        ;//Fixed value {Default = 1}
  double MovementRunRatio         = 2        ;//            {Default = 2}
  double MovementDashRatioX       = 2.5      ;//            {Default = 2.5}
  double MovementDashRatioY       = 0.05     ;//            {Default = 0.05}
  double MovementDashYAmount      = 6.5      ;//Base value  {Default = 6.5}
  double MovementDashFixedYAmount = 0.5      ;//Fixed value {Default = 0.5}
  double MovementHeavyRatio       = 0.8      ;//            {Default = 0.8}

  bool WeightCalculation            = true   ;//Activate the Weight Calculation?                                                        {Default = true}
  double GAttackerVelKnockbackRatio = 0      ;//The ratio of Velocity that Attacker will gain once the attack are successful on ground. {Default = 0}
  double MAttackerVelKnockbackRatio = 0.5    ;//The ratio of Velocity that Attacker will gain once the attack are successful in midair. {Default = 0.5}
  double GAttackedVelKnockbackRatio = 1      ;//The ratio of Velocity that Attacked will gain once the attack are successful on ground. {Default = 1}
  double MAttackedVelKnockbackRatio = 0.5    ;//The ratio of Velocity that Attacked will gain once the attack are successful in midair. {Default = 0.5}

  int8 Type0HitLag      = 2                  ;//Type0's hitlag.                                            {Default = 2}
  double Type0GXGravity = 1.4                ;//Type0's ground X-axis Gravity/Velocity reduction per 1 TU. {Default = 1.7}
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

  bool HighLevelCalculation      = true      ;//Activate the high level calculation for Velocity which is an affect from the Density of Air(too high velocity)?       {Default = true}
  double AirDensitySpeed         = 70        ;//Maximum speed that can be achieved by the Density of Air from it's speed accumulation which also based on the Weight. {Default = 70}
  double DecreasionEffectiveness = 100       ;//The percentage of effectiveness of the decreasion of speed accumulation.                                              {Default = 100}
  double DecreasionRateRatio     = 100       ;//The percentage of Ratio of the amount of decreasion of speed accumulation.                                            {Default = 100}
  double DecreasionRateBase      = 0         ;//Base amount of the decreasion of speed accumulation.                                                                  {Default = 0}
  double WeightEffectiveness     = 50        ;//Percentage of weight's effectiveness in the calculation.                                                              {Default = 50}
  
  int8 FirstTU = 1;
 //-//
//-//

//Game-System
 //Memorized Variables
  array < int > Database_CameraZ = 3;
  array < int > Database_Exist = MaximumObjNum;
  array < int > Database_ExistCon = MaximumObjNum;
  array < int > Database_ExistT0 = MaximumObjNum;
  array < int > Database_ExistT0Com = MaximumObjNum;
  array < int > Database_TimeStop = MaximumObjNum;
  array < int > Database_Output = MaximumObjNum;          // {(7)>++} (X)Attack; (X)Defend; (X)Jump; (X)Up; (X)Left; (X)Down; (X)Right;
  array < bool > Database_Bounce = MaximumObjNum;
  array < int16 > Database_Target = MaximumObjNum;
  array < int16 > Database_OpoFrame = MaximumObjNum;
  array < int16 > Database_WalkSys = MaximumObjNum;       // {<++} (XXX)Wait; (X)Set;
  array < uint16 > Database_Input = MaximumObjNum * 7;    // {>>} (+0)Attack; (+1)Defend; (+2)Jump; (+3)Up; (+4)Left; (+5)Down; (+6)Right;
  array < uint64 > Database_Cast = MaximumObjNum;         // {<++} (XX)Cast; (XX)Cast_Availablelity; (XX)Cast_Sequence; (XX)Cast_Wait; (X)Run; (XX)Run_Avaiablelity; (X)Run_Sequence; (XX)Run_Wait;
  array < double > Database_Summary = MaximumObjNum * 10; // {>>} (+0)Hero_Kill; (+1)Minion_Kill; (+2)DMG_Dealt; (+3)DHP_DMG_Dealt; (+4)DMG_Taken; (+5)DHP_DMG_Taken; (+6)HP_Usage; (+7)MP/EP_Usage; (+8)HP_Regen; (+9)Item_Pick;
  array < double > Database_ToGround = MaximumObjNum;
  array < double > Database_Status = MaximumObjNum * 12;  // {>>} (+0)HP/Shield; (+1)DHP; (+2)MP/EP; (+3)X; (+4)Y; (+5)Z; (+6)Vel_X; (+7)Vel_Y; (+8)Vel_Z; (+9)Speed_Multipler; (+10)DMG_Multipler; (+11)DMGTaken_Multipler;
  bool InBattle;
  bool Database_Control01 = true;
  bool Database_Control02;
  int Database_Control03;
  int NumberOfExist;
  int NumberOfExistCon;
  int NumberOfExistT0;
  int NumberOfExistT0Com;
  int8 RandomSingleFontCount;
  int64 ElapsedTime;
 //-//
 
 //Starting
  void id(){loadTarget(self.num); ego();}
  void ego(){if(Database_Control01){Database_Control01 = false; Controller(self.num);} else {UnderControl(self.num);}}
 //-//

 //First Game-System
  void Controller(int Varb0001)
  {
   int Varb0002; InBattle = false;

   //First Declarament
    if(elapsed_time == 1)
    {
     InBattle = true;
     ElapsedTime = -6;
     Database_CameraZ[0] = 0; Database_CameraZ[1] = 0; Database_CameraZ[2] = 0;
     for(Varb0002 = 0; Varb0002 < MaximumObjNum; ++Varb0002)
     if(loadTarget(Varb0002) == -1)
     {
      Database_Cast[Varb0002] = 0;
      Database_Output[Varb0002] = 0;
      Database_Target[Varb0002] = -1;
      Database_Bounce[Varb0002] = false;
      Database_Status[(Varb0002 * 12) + 3] = -9999;
      Database_Status[(Varb0002 * 12) + 4] = -9999;
      Database_Status[(Varb0002 * 12) + 5] = -9999;
      Database_Status[(Varb0002 * 12) + 6] = 0;
      Database_Status[(Varb0002 * 12) + 7] = 0;
      Database_Status[(Varb0002 * 12) + 8] = 0;
      Database_Summary[(Varb0002 * 10)] = 0;
      Database_Summary[(Varb0002 * 10) + 1] = 0;
      Database_Summary[(Varb0002 * 10) + 2] = 0;
      Database_Summary[(Varb0002 * 10) + 3] = 0;
      Database_Summary[(Varb0002 * 10) + 4] = 0;
      Database_Summary[(Varb0002 * 10) + 5] = 0;
      Database_Summary[(Varb0002 * 10) + 6] = 0;
      Database_Summary[(Varb0002 * 10) + 7] = 0;
      Database_Summary[(Varb0002 * 10) + 8] = 0;
      Database_Summary[(Varb0002 * 10) + 9] = 0;
      Database_TimeStop[Varb0002] = 0;
     } else
     {
      Database_Cast[Varb0002] = 0;
      Database_Output[Varb0002] = 0;
      Database_Target[Varb0002] = -1;
      Database_Bounce[Varb0002] = false;
      Database_Status[(Varb0002 * 12)] = game.objects[Varb0002].data.dash_height;
      Database_Status[(Varb0002 * 12) + 1] = game.objects[Varb0002].data.dash_height;
      if(SpecialityCheck(Varb0002, 1)){Database_Status[(Varb0002 * 12) + 2] = StartingEP;} else {Database_Status[(Varb0002 * 12) + 2] = StartingMP;}
      Database_Status[(Varb0002 * 12) + 3] = game.objects[Varb0002].x_real;
      Database_Status[(Varb0002 * 12) + 4] = game.objects[Varb0002].y_real;
      Database_Status[(Varb0002 * 12) + 5] = game.objects[Varb0002].z_real;
      Database_Status[(Varb0002 * 12) + 6] = 0;
      Database_Status[(Varb0002 * 12) + 7] = 0;
      Database_Status[(Varb0002 * 12) + 8] = 0;
      Database_Summary[(Varb0002 * 10)] = 0;
      Database_Summary[(Varb0002 * 10) + 1] = 0;
      Database_Summary[(Varb0002 * 10) + 2] = 0;
      Database_Summary[(Varb0002 * 10) + 3] = 0;
      Database_Summary[(Varb0002 * 10) + 4] = 0;
      Database_Summary[(Varb0002 * 10) + 5] = 0;
      Database_Summary[(Varb0002 * 10) + 6] = 0;
      Database_Summary[(Varb0002 * 10) + 7] = 0;
      Database_Summary[(Varb0002 * 10) + 8] = 0;
      Database_Summary[(Varb0002 * 10) + 9] = 0;
      Database_TimeStop[Varb0002] = 0;
     }
    }
   //-//

   //TU Declarament
    ElapsedTime += 1;
    NumberOfExist = 0; NumberOfExistCon = 0; NumberOfExistT0 = 0; NumberOfExistT0Com = 0;
    for(Varb0002 = 0; Varb0002 < MaximumObjNum; ++Varb0002)
    {
     int Varb0003 = loadTarget(Varb0002);
     Database_Status[(Varb0002 * 12) + 9] = 1;
     Database_Status[(Varb0002 * 12) + 10] = 1;
     Database_Status[(Varb0002 * 12) + 11] = 1;
     if(Varb0003 != -1)
     {
      Database_OpoFrame[Varb0002] = game.objects[Varb0002].frame1;
      if(game.objects[Varb0002].frame1 == 399) Control_Frame1(Varb0002, 0);
     }
     switch(Varb0003)
     {
      case 0:
       if(game.objects[Varb0002].data.id != 51 && game.objects[Varb0002].data.id != 53)
       {
        Database_Exist[NumberOfExist] = Varb0002; NumberOfExist += 1;
       } else
       {
        Database_ExistCon[NumberOfExistCon] = Varb0002; NumberOfExistCon += 1;
       }
       if(Varb0002 > 9){Database_ExistT0Com[NumberOfExistT0Com] = Varb0002; NumberOfExistT0Com += 1;}
       Database_ExistT0[NumberOfExistT0] = Varb0002; NumberOfExistT0 += 1;
      break;
     case 1:
       Database_Exist[NumberOfExist] = Varb0002; NumberOfExist += 1;
      break;
      case 2:
       Database_Exist[NumberOfExist] = Varb0002; NumberOfExist += 1;
      break;
      case 3:
       Database_Exist[NumberOfExist] = Varb0002; NumberOfExist += 1;
      break;
      case 4:
       Database_Exist[NumberOfExist] = Varb0002; NumberOfExist += 1;
      break;
      case 5:
       Database_Exist[NumberOfExist] = Varb0002; NumberOfExist += 1;
      break;
      case 6:
       Database_Exist[NumberOfExist] = Varb0002; NumberOfExist += 1;
      break;
      default: break;
     }
    }
   //-//

   //InBattleCheck
    for(Varb0002 = 0; Varb0002 < NumberOfExistCon; ++Varb0002)
    {
     Control_Blink(Database_ExistCon[Varb0002], -199);
     if(Varb0002 > 0){Control_Frame1(Database_ExistCon[Varb0002], 398);} else 
     {
      if(Database_Control03 != game.objects[Database_ExistCon[Varb0002]].frame1)
      {InBattle = true; Database_Control03 = game.objects[Database_ExistCon[Varb0002]].frame1;}
     }
    }
   //-//

   //Debug Menu
    if(ConsoleDebug)
    {
     if(InBattle)
     {
     } else
     {

      printOut();
     }
    } else {if(!InBattle) printLogClear();}
   //-//

   //Player Input
    if(FixedInput)
    for(Varb0002 = 0; Varb0002 < 10; ++Varb0002)
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
   //-//

   //AI Input
    for(Varb0002 = 0; Varb0002 < NumberOfExistT0Com; ++Varb0002) LF2ETAI(Database_ExistT0Com[Varb0002]);
   //-//
   
   for(Varb0002 = 0; Varb0002 < 10; ++Varb0002)
   {
    if(!FixedInput)
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
  void UnderControl(int Varb0001)
  {
   if(Varb0001 == Database_ExistT0Com[NumberOfExistT0Com - 1]) Database_Control01 = true;
   if(!InBattle) return;
   Control_InputNone(Varb0001);
   switch(Database_Output[Varb0001])
   {
    case 0000000: Input(false, false, false, false, false, false, false, Varb0001); break;
    case 1000000: Input(true, false, false, false, false, false, false, Varb0001); break;
    case 0100000: Input(false, true, false, false, false, false, false, Varb0001); break;
    case 0010000: Input(false, false, true, false, false, false, false, Varb0001); break;
    case 0001000: Input(false, false, false, true, false, false, false, Varb0001); break;
    case 0000100: Input(false, false, false, false, true, false, false, Varb0001); break;
    case 0000010: Input(false, false, false, false, false, true, false, Varb0001); break;
    case 0000001: Input(false, false, false, false, false, false, true, Varb0001); break;
    case 1100000: Input(true, true, false, false, false, false, false, Varb0001); break;
    case 1010000: Input(true, false, true, false, false, false, false, Varb0001); break;
    case 1001000: Input(true, false, false, true, false, false, false, Varb0001); break;
    case 1000100: Input(true, false, false, false, true, false, false, Varb0001); break;
    case 1000010: Input(true, false, false, false, false, true, false, Varb0001); break;
    case 1000001: Input(true, false, false, false, false, false, true, Varb0001); break;
    case 0110000: Input(false, true, true, false, false, false, false, Varb0001); break;
    case 0101000: Input(false, true, false, true, false, false, false, Varb0001); break;
    case 0100100: Input(false, true, false, false, true, false, false, Varb0001); break;
    case 0100010: Input(false, true, false, false, false, true, false, Varb0001); break;
    case 0100001: Input(false, true, false, false, false, false, true, Varb0001); break;
    case 0011000: Input(false, false, true, true, false, false, false, Varb0001); break;
    case 0010100: Input(false, false, true, false, true, false, false, Varb0001); break;
    case 0010010: Input(false, false, true, false, false, true, false, Varb0001); break;
    case 0010001: Input(false, false, true, false, false, false, true, Varb0001); break;
    case 0001100: Input(false, false, false, true, true, false, false, Varb0001); break;
    case 0001010: Input(false, false, false, true, false, true, false, Varb0001); break;
    case 0001001: Input(false, false, false, true, false, false, true, Varb0001); break;
    case 0000110: Input(false, false, false, false, true, true, false, Varb0001); break;
    case 0000101: Input(false, false, false, false, true, false, true, Varb0001); break;
    case 0000011: Input(false, false, false, false, false, true, true, Varb0001); break;
    case 1110000: Input(true, true, true, false, false, false, false, Varb0001); break;
    case 1101000: Input(true, true, false, true, false, false, false, Varb0001); break;
    case 1100100: Input(true, true, false, false, true, false, false, Varb0001); break;
    case 1100010: Input(true, true, false, false, false, true, false, Varb0001); break;
    case 1100001: Input(true, true, false, false, false, false, true, Varb0001); break;
    case 1011000: Input(true, false, true, true, false, false, false, Varb0001); break;
    case 1010100: Input(true, false, true, false, true, false, false, Varb0001); break;
    case 1010010: Input(true, false, true, false, false, true, false, Varb0001); break;
    case 1010001: Input(true, false, true, false, false, false, true, Varb0001); break;
    case 1001100: Input(true, false, false, true, true, false, false, Varb0001); break;
    case 1001010: Input(true, false, false, true, false, true, false, Varb0001); break;
    case 1001001: Input(true, false, false, true, false, false, true, Varb0001); break;
    case 1000110: Input(true, false, false, false, true, true, false, Varb0001); break;
    case 1000101: Input(true, false, false, false, true, false, true, Varb0001); break;
    case 1000011: Input(true, false, false, false, false, true, true, Varb0001); break;
    case 0111000: Input(false, true, true, true, false, false, false, Varb0001); break;
    case 0110100: Input(false, true, true, false, true, false, false, Varb0001); break;
    case 0110010: Input(false, true, true, false, false, true, false, Varb0001); break;
    case 0110001: Input(false, true, true, false, false, false, true, Varb0001); break;
    case 0101100: Input(false, true, false, true, true, false, false, Varb0001); break;
    case 0101010: Input(false, true, false, true, false, true, false, Varb0001); break;
    case 0101001: Input(false, true, false, true, false, false, true, Varb0001); break;
    case 0100110: Input(false, true, false, false, true, true, false, Varb0001); break;
    case 0100101: Input(false, true, false, false, true, false, true, Varb0001); break;
    case 0100011: Input(false, true, false, false, false, true, true, Varb0001); break;
    case 0011100: Input(false, false, true, true, true, false, false, Varb0001); break;
    case 0011010: Input(false, false, true, true, false, true, false, Varb0001); break;
    case 0011001: Input(false, false, true, true, false, false, true, Varb0001); break;
    case 0010110: Input(false, false, true, false, true, true, false, Varb0001); break;
    case 0010101: Input(false, false, true, false, true, false, true, Varb0001); break;
    case 0010011: Input(false, false, true, false, false, true, true, Varb0001); break;
    case 0001110: Input(false, false, false, true, true, true, false, Varb0001); break;
    case 0001101: Input(false, false, false, true, true, false, true, Varb0001); break;
    case 0001011: Input(false, false, false, true, false, true, true, Varb0001); break;
    case 0000111: Input(false, false, false, false, true, true, true, Varb0001); break;
    case 1111000: Input(true, true, true, true, false, false, false, Varb0001); break;
    case 1110100: Input(true, true, true, false, true, false, false, Varb0001); break;
    case 1110010: Input(true, true, true, false, false, true, false, Varb0001); break;
    case 1110001: Input(true, true, true, false, false, false, true, Varb0001); break;
    case 1101100: Input(true, true, false, true, true, false, false, Varb0001); break;
    case 1101010: Input(true, true, false, true, false, true, false, Varb0001); break;
    case 1101001: Input(true, true, false, true, false, false, true, Varb0001); break;
    case 1100110: Input(true, true, false, false, true, true, false, Varb0001); break;
    case 1100101: Input(true, true, false, false, true, false, true, Varb0001); break;
    case 1100011: Input(true, true, false, false, false, true, true, Varb0001); break;
    case 1011100: Input(true, false, true, true, true, false, false, Varb0001); break;
    case 1011010: Input(true, false, true, true, false, true, false, Varb0001); break;
    case 1011001: Input(true, false, true, true, false, false, true, Varb0001); break;
    case 1010110: Input(true, false, true, false, true, true, false, Varb0001); break;
    case 1010101: Input(true, false, true, false, true, false, true, Varb0001); break;
    case 1010011: Input(true, false, true, false, false, true, true, Varb0001); break;
    case 1001110: Input(true, false, false, true, true, true, false, Varb0001); break;
    case 1001101: Input(true, false, false, true, true, false, true, Varb0001); break;
    case 1001011: Input(true, false, false, true, false, true, true, Varb0001); break;
    case 1000111: Input(true, false, false, false, true, true, true, Varb0001); break;
    case 0111100: Input(false, true, true, true, true, false, false, Varb0001); break;
    case 0111010: Input(false, true, true, true, false, true, false, Varb0001); break;
    case 0111001: Input(false, true, true, true, false, false, true, Varb0001); break;
    case 0110110: Input(false, true, true, false, true, true, false, Varb0001); break;
    case 0110101: Input(false, true, true, false, true, false, true, Varb0001); break;
    case 0110011: Input(false, true, true, false, false, true, true, Varb0001); break;
    case 0101110: Input(false, true, false, true, true, true, false, Varb0001); break;
    case 0101101: Input(false, true, false, true, true, false, true, Varb0001); break;
    case 0101011: Input(false, true, false, true, false, true, true, Varb0001); break;
    case 0100111: Input(false, true, false, false, true, true, true, Varb0001); break;
    case 0011110: Input(false, false, true, true, true, true, false, Varb0001); break;
    case 0011101: Input(false, false, true, true, true, false, true, Varb0001); break;
    case 0011011: Input(false, false, true, true, false, true, true, Varb0001); break;
    case 0010111: Input(false, false, true, false, true, true, true, Varb0001); break;
    case 0001111: Input(false, false, false, true, true, true, true, Varb0001); break;
    case 1111100: Input(true, true, true, true, true, false, false, Varb0001); break;
    case 1111010: Input(true, true, true, true, false, true, false, Varb0001); break;
    case 1111001: Input(true, true, true, true, false, false, true, Varb0001); break;
    case 1110110: Input(true, true, true, false, true, true, false, Varb0001); break;
    case 1110101: Input(true, true, true, false, true, false, true, Varb0001); break;
    case 1110011: Input(true, true, true, false, false, true, true, Varb0001); break;
    case 1101110: Input(true, true, false, true, true, true, false, Varb0001); break;
    case 1101101: Input(true, true, false, true, true, false, true, Varb0001); break;
    case 1101011: Input(true, true, false, true, false, true, true, Varb0001); break;
    case 1100111: Input(true, true, false, false, true, true, true, Varb0001); break;
    case 1011110: Input(true, false, true, true, true, true, false, Varb0001); break;
    case 1011101: Input(true, false, true, true, true, false, true, Varb0001); break;
    case 1011011: Input(true, false, true, true, false, true, true, Varb0001); break;
    case 1010111: Input(true, false, true, false, true, true, true, Varb0001); break;
    case 1001111: Input(true, false, false, true, true, true, true, Varb0001); break;
    case 0111110: Input(false, true, true, true, true, true, false, Varb0001); break;
    case 0111101: Input(false, true, true, true, true, false, true, Varb0001); break;
    case 0111011: Input(false, true, true, true, false, true, true, Varb0001); break;
    case 0110111: Input(false, true, true, false, true, true, true, Varb0001); break;
    case 0101111: Input(false, true, false, true, true, true, true, Varb0001); break;
    case 0011111: Input(false, false, true, true, true, true, true, Varb0001); break;
    case 1111110: Input(true, true, true, true, true, true, false, Varb0001); break;
    case 1111101: Input(true, true, true, true, true, false, true, Varb0001); break;
    case 1111011: Input(true, true, true, true, false, true, true, Varb0001); break;
    case 1110111: Input(true, true, true, false, true, true, true, Varb0001); break;
    case 1101111: Input(true, true, false, true, true, true, true, Varb0001); break;
    case 1011111: Input(true, false, true, true, true, true, true, Varb0001); break;
    case 0111111: Input(false, true, true, true, true, true, true, Varb0001); break;
    case 1111111: Input(true, true, true, true, true, true, true, Varb0001); break;
   }
   if(Varb0001 == Database_ExistT0Com[NumberOfExistT0Com - 1]) GameSystem();
  }
 //-//
 
 //Final Game-System
  void GameSystem()
  {
   int Varb0001;
   //Base Declarament
    for(Varb0001 = 0; Varb0001 < NumberOfExist; ++Varb0001)
    {
     if(game.objects[Database_Exist[Varb0001]].frame1 == 398)
     {
      Database_Status[(Database_Exist[Varb0001] * 12) + 3] = -9999;
      Database_Status[(Database_Exist[Varb0001] * 12) + 4] = -9999;
      Database_Status[(Database_Exist[Varb0001] * 12) + 5] = -9999;
     } else
     {
      if(Database_Status[(Database_Exist[Varb0001] * 12) + 3] == -9999) if(Database_Status[(Database_Exist[Varb0001] * 12) + 4] == -9999) if(Database_Status[(Database_Exist[Varb0001] * 12) + 5] == -9999)
      {
       if(StateEjection(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1, 3) == 0999)
       {
        ////////////////////// Number of Owner needed
       } else
       {
        Database_Status[(Database_Exist[Varb0001] * 12) + 3] = game.objects[Database_Exist[Varb0001]].x_real;
        Database_Status[(Database_Exist[Varb0001] * 12) + 4] = game.objects[Database_Exist[Varb0001]].y_real;
        Database_Status[(Database_Exist[Varb0001] * 12) + 5] = game.objects[Database_Exist[Varb0001]].z_real;
       }
      }
     }
    }
   //-//

   //Early State Declarament
    bool Varb0003; bool Varb0004; bool Varb0005;
    for(Varb0001 = 0; Varb0001 < NumberOfExist; ++Varb0001)
    {
     switch((StateEjection(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1, 5) % 1000000))
     {
      case 100000:
       if(((Database_Input[(Database_Exist[Varb0001] * 7) + 3] > 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 5] == 1) || (Database_Input[(Database_Exist[Varb0001] * 7) + 3] == 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 5] > 1 )) || ((Database_Input[(Database_Exist[Varb0001] * 7) + 4] > 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 6] == 1) || (Database_Input[(Database_Exist[Varb0001] * 7) + 4] == 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 6] > 1 )))
       Control_Frame1(Database_Exist[Varb0001], ((StateEjection(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1, 2) % 100000) / 100) + RandomValue(StateEjection(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1, 0) % 100));
      break;
      case 200000:
       switch((StateEjection(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1, 3) % 100000))
       {
        case 44000:
         Varb0003 = true;
         YVelUp(Database_Exist[Varb0001], -(MovementJumpYAmount * Database_Status[(Database_Exist[Varb0001] * 12) + 9]) - MovementJumpFixedYAmount - (game.objects[Database_Exist[Varb0001]].data.walking_speed * MovementBaseRatio * MovementJumpRatioY));
         if(Database_Input[(Database_Exist[Varb0001] * 7) + 3] > 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 5] == 1)
         {
          Varb0003 = false;
          if(Database_Input[(Database_Exist[Varb0001] * 7) + 4] > 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 6] == 1)
          {
           XVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * MovementBaseRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementJumpRatioX * MovementSideRatio));
           ZVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * MovementBaseRatio * PrespectiveRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementJumpRatioX * MovementSideRatio));
          } else
          {
           if(Database_Input[(Database_Exist[Varb0001] * 7) + 4] == 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 6] > 1)
           {
            XVelUp(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].data.walking_speed * MovementBaseRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementJumpRatioX * MovementSideRatio);
            ZVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * MovementBaseRatio * PrespectiveRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementJumpRatioX * MovementSideRatio));
           } else
           {
            ZVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * MovementBaseRatio * PrespectiveRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementJumpRatioX));
           }
          }
         } else
         {
          if(Database_Input[(Database_Exist[Varb0001] * 7) + 3] == 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 5] > 1)
          {
           Varb0003 = false;
           if(Database_Input[(Database_Exist[Varb0001] * 7) + 4] > 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 6] == 1)
           {
            XVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * MovementBaseRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementJumpRatioX * MovementSideRatio));
            ZVelUp(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].data.walking_speed * MovementBaseRatio * PrespectiveRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementJumpRatioX * MovementSideRatio);
           } else
           {
            if(Database_Input[(Database_Exist[Varb0001] * 7) + 4] == 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 6] > 1)
            {
             XVelUp(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].data.walking_speed * MovementBaseRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementJumpRatioX * MovementSideRatio);
             ZVelUp(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].data.walking_speed * MovementBaseRatio * PrespectiveRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementJumpRatioX * MovementSideRatio);
            } else
            {
             ZVelUp(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].data.walking_speed * MovementBaseRatio * PrespectiveRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementJumpRatioX);
            }
           }
          }
         }
         if(Varb0003)
         {
          if(Database_Input[(Database_Exist[Varb0001] * 7) + 4] > 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 6] == 1)
          {
           XVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * MovementBaseRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementJumpRatioX));
          } else
          {
           if(Database_Input[(Database_Exist[Varb0001] * 7) + 4] == 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 6] > 1)
           XVelUp(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].data.walking_speed * MovementBaseRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementJumpRatioX);
          }
         }
         Control_Frame1(Database_Exist[Varb0001], StateEjection(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1, 0) % 1000);
        break;
        case 45000:
         Varb0003 = true;
         YVelUp(Database_Exist[Varb0001], -(MovementDashYAmount * Database_Status[(Database_Exist[Varb0001] * 12) + 9]) - MovementDashFixedYAmount - (game.objects[Database_Exist[Varb0001]].data.walking_speed * MovementBaseRatio * MovementDashRatioY));
         if(Database_Input[(Database_Exist[Varb0001] * 7) + 3] > 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 5] == 1)
         {
          Varb0003 = false;
          if(Database_Input[(Database_Exist[Varb0001] * 7) + 4] > 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 6] == 1)
          {
           XVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * MovementBaseRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementDashRatioX * MovementSideRatio));
           ZVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * MovementBaseRatio * PrespectiveRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementDashRatioX * MovementSideRatio));
          } else
          {
           if(Database_Input[(Database_Exist[Varb0001] * 7) + 4] == 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 6] > 1)
           {
            XVelUp(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].data.walking_speed * MovementBaseRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementDashRatioX * MovementSideRatio);
            ZVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * MovementBaseRatio * PrespectiveRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementDashRatioX * MovementSideRatio));
           } else
           {
            if(Database_Status[(Database_Exist[Varb0001] * 12) + 6] < 0)
            XVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * MovementBaseRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementDashRatioX * MovementSideRatio));
            if(Database_Status[(Database_Exist[Varb0001] * 12) + 6] > 0)
            XVelUp(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].data.walking_speed * MovementBaseRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementDashRatioX * MovementSideRatio);
            if(Database_Status[(Database_Exist[Varb0001] * 12) + 6] == 0)
            if(game.objects[Database_Exist[Varb0001]].facing)
            {
             XVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * MovementBaseRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementDashRatioX * MovementSideRatio));
            } else
            {
             XVelUp(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].data.walking_speed * MovementBaseRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementDashRatioX * MovementSideRatio);
            }
            ZVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * MovementBaseRatio * PrespectiveRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementJumpRatioX * MovementSideRatio));
           }
          }
         } else
         {
          if(Database_Input[(Database_Exist[Varb0001] * 7) + 3] == 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 5] > 1)
          {
           Varb0003 = false;
           if(Database_Input[(Database_Exist[Varb0001] * 7) + 4] > 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 6] == 1)
           {
            XVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * MovementBaseRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementDashRatioX * MovementSideRatio));
            ZVelUp(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].data.walking_speed * MovementBaseRatio * PrespectiveRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementDashRatioX * MovementSideRatio);
           } else
           {
            if(Database_Input[(Database_Exist[Varb0001] * 7) + 4] == 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 6] > 1)
            {
             XVelUp(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].data.walking_speed * MovementBaseRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementDashRatioX * MovementSideRatio);
             ZVelUp(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].data.walking_speed * MovementBaseRatio * PrespectiveRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementDashRatioX * MovementSideRatio);
            } else
            {
             if(Database_Status[(Database_Exist[Varb0001] * 12) + 6] < 0)
             XVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * MovementBaseRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementDashRatioX * MovementSideRatio));
             if(Database_Status[(Database_Exist[Varb0001] * 12) + 6] > 0)
             XVelUp(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].data.walking_speed * MovementBaseRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementDashRatioX * MovementSideRatio);
             if(Database_Status[(Database_Exist[Varb0001] * 12) + 6] == 0)
             if(game.objects[Database_Exist[Varb0001]].facing)
             {
              XVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * MovementBaseRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementDashRatioX * MovementSideRatio));
             } else
             {
              XVelUp(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].data.walking_speed * MovementBaseRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementDashRatioX * MovementSideRatio);
             }
             ZVelUp(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].data.walking_speed * MovementBaseRatio * PrespectiveRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementJumpRatioX * MovementSideRatio);
            }
           }
          }
         }
         if(Varb0003)
         {
          if(Database_Input[(Database_Exist[Varb0001] * 7) + 4] > 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 6] == 1)
          {
           XVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * MovementBaseRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementDashRatioX));
          } else
          {
           if(Database_Input[(Database_Exist[Varb0001] * 7) + 4] == 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 6] > 1)
           {
            XVelUp(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].data.walking_speed * MovementBaseRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementDashRatioX);
           } else
           {
            if(Database_Status[(Database_Exist[Varb0001] * 12) + 6] < 0)
            XVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * MovementBaseRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementDashRatioX));
            if(Database_Status[(Database_Exist[Varb0001] * 12) + 6] > 0)
            XVelUp(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].data.walking_speed * MovementBaseRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementDashRatioX);
            if(Database_Status[(Database_Exist[Varb0001] * 12) + 6] == 0)
            if(game.objects[Database_Exist[Varb0001]].facing)
            {
             XVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * MovementBaseRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementDashRatioX));
            } else
            {
             XVelUp(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].data.walking_speed * MovementBaseRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementDashRatioX);
            }
           }
          }
         }
         Control_Frame1(Database_Exist[Varb0001], StateEjection(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1, 0) % 1000);
        break;
        default: break;
       }
      break;
      default: break;
     }
    }
   //-//

   //Input Declarament
    for(Varb0001 = 0; Varb0001 < NumberOfExistT0; ++Varb0001)
    {
     int Varb0002;
     switch((Database_Cast[Database_ExistT0[Varb0001]] % 1000000000) - (Database_Cast[Database_ExistT0[Varb0001]] % 100000000))
     {
      case 100000000:
       if(game.objects[Database_ExistT0[Varb0001]].facing)
       {
        Varb0002 = game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].hit_Da % 1000;
        if(Varb0002 != 0)
        {
         if(InputSetUp(Database_ExistT0[Varb0001], Varb0002, (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[1].unkwn1 - (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[1].unkwn1 % 1000000)) / 1000000))
         Database_Cast[Database_ExistT0[Varb0001]] -= 100000000;
        }
       }
      break;
      case 200000000:
       if(!game.objects[Database_ExistT0[Varb0001]].facing)
       {
        Varb0002 = game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].hit_Da % 1000;
        if(Varb0002 != 0)
        {
         if(InputSetUp(Database_ExistT0[Varb0001], Varb0002, (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[1].unkwn1 - (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[1].unkwn1 % 1000000)) / 1000000))
         Database_Cast[Database_ExistT0[Varb0001]] -= 200000000;
        }
       }
      break;
      case 300000000:
      if(!game.objects[Database_ExistT0[Varb0001]].facing)
       {
        Varb0002 = ((game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].hit_Fa % 1000000) - (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].hit_Fa % 1000)) / 1000;
        if(Varb0002 != 0)
        {
         if(InputSetUp(Database_ExistT0[Varb0001], Varb0002, ((game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[2].unkwn1 % 1000000) - (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[2].unkwn1 % 10000)) / 10000))
         Database_Cast[Database_ExistT0[Varb0001]] -= 300000000;
        }
       } else
       {
        Varb0002 = (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].hit_Fa - (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].hit_Fa % 1000000)) / 1000000;
        if(Varb0002 != 0)
        {
         if(InputSetUp(Database_ExistT0[Varb0001], Varb0002, (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[2].unkwn1 - (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[2].unkwn1 % 1000000)) / 1000000))
         Database_Cast[Database_ExistT0[Varb0001]] -= 300000000;
        }
       }
      break;
      case 400000000:
      if(game.objects[Database_ExistT0[Varb0001]].facing)
       {
        Varb0002 = ((game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].hit_Fa % 1000000) - (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].hit_Fa % 1000)) / 1000;
        if(Varb0002 != 0)
        {
         if(InputSetUp(Database_ExistT0[Varb0001], Varb0002, ((game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[2].unkwn1 % 1000000) - (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[2].unkwn1 % 10000)) / 10000))
         Database_Cast[Database_ExistT0[Varb0001]] -= 400000000;
        }
       } else
       {
        Varb0002 = (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].hit_Fa - (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].hit_Fa % 1000000)) / 1000000;
        if(Varb0002 != 0)
        {
         if(InputSetUp(Database_ExistT0[Varb0001], Varb0002, (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[2].unkwn1 - (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[2].unkwn1 % 1000000)) / 1000000))
         Database_Cast[Database_ExistT0[Varb0001]] -= 400000000;
        }
       }
      break;
      case 500000000:
       Varb0002 = ((game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].hit_Da % 1000000) - (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].hit_Da % 1000)) / 1000;
       if(Varb0002 != 0)
       {
        if(InputSetUp(Database_ExistT0[Varb0001], Varb0002, game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[1].unkwn1 % 100))
        Database_Cast[Database_ExistT0[Varb0001]] -= 500000000;
       }
      break;
      case 600000000:
       Varb0002 = (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].hit_Da - (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].hit_Da % 1000000)) / 1000000;
       if(Varb0002 != 0)
       {
        if(InputSetUp(Database_ExistT0[Varb0001], Varb0002, (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[1].unkwn1 - (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[1].unkwn1 % 100)) / 100))
        Database_Cast[Database_ExistT0[Varb0001]] -= 600000000;
       }
      break;
      default: break;
     }
     switch(Database_Cast[Database_ExistT0[Varb0001]] % 100)
     {
      case 1:
       Varb0002 = game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].hit_a % 1000;
       if(Varb0002 != 0)
       {
        if(InputSetUp(Database_ExistT0[Varb0001], Varb0002, game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[4].unkwn1 % 100))
        Database_Cast[Database_ExistT0[Varb0001]] -= 1;
       }
      break;
      case 2:
       Varb0002 = ((game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].hit_a % 1000000) - (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].hit_a % 1000)) / 1000;
       if(Varb0002 != 0)
       {
        if(InputSetUp(Database_ExistT0[Varb0001], Varb0002, ((game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[4].unkwn1 % 10000) - (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[4].unkwn1 % 100)) / 100))
        Database_Cast[Database_ExistT0[Varb0001]] -= 2;
       }
      break;
      case 3:
       Varb0002 = (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].hit_a - (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].hit_a % 1000000)) / 1000000;
       if(Varb0002 != 0)
       {
        if(InputSetUp(Database_ExistT0[Varb0001], Varb0002, ((game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[4].unkwn1 % 1000000) - (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[4].unkwn1 % 10000)) / 10000))
        Database_Cast[Database_ExistT0[Varb0001]] -= 3;
       }
      break;
      case 4:
       Varb0002 = game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].hit_d % 1000;
       if(Varb0002 != 0)
       {
        if(InputSetUp(Database_ExistT0[Varb0001], Varb0002, (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[4].unkwn1 - (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[4].unkwn1 % 1000000)) / 1000000))
        {Database_Cast[Database_ExistT0[Varb0001]] -= 4; Control_Facing(Database_ExistT0[Varb0001], 0);}
       }
      break;
      case 5:
       Varb0002 = ((game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].hit_d % 1000000) - (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].hit_d % 1000)) / 1000;
       if(Varb0002 != 0)
       {
        if(InputSetUp(Database_ExistT0[Varb0001], Varb0002, game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[3].unkwn1 % 100))
        {Database_Cast[Database_ExistT0[Varb0001]] -= 5; Control_Facing(Database_ExistT0[Varb0001], 0);}
       }
      break;
      case 6:
       Varb0002 = game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].hit_d % 1000;
       if(Varb0002 != 0)
       {
        if(InputSetUp(Database_ExistT0[Varb0001], Varb0002, (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[4].unkwn1 - (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[4].unkwn1 % 1000000)) / 1000000))
        {Database_Cast[Database_ExistT0[Varb0001]] -= 6; Control_Facing(Database_ExistT0[Varb0001], 1);}
       }
      break;
      case 7:
       Varb0002 = ((game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].hit_d % 1000000) - (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].hit_d % 1000)) / 1000;
       if(Varb0002 != 0)
       {
        if(InputSetUp(Database_ExistT0[Varb0001], Varb0002, game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[3].unkwn1 % 100))
        {Database_Cast[Database_ExistT0[Varb0001]] -= 7; Control_Facing(Database_ExistT0[Varb0001], 1);}
       }
      break;
      case 8:
       Varb0002 = (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].hit_d - (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].hit_d % 1000000)) / 1000000;
       if(Varb0002 != 0)
       {
        if(InputSetUp(Database_ExistT0[Varb0001], Varb0002, ((game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[3].unkwn1 % 10000) - (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[3].unkwn1 % 100)) / 100))
        Database_Cast[Database_ExistT0[Varb0001]] -= 8;
       }
      break;
      case 9:
       Varb0002 = game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].hit_j % 1000;
       if(Varb0002 != 0)
       {
        if(InputSetUp(Database_ExistT0[Varb0001], Varb0002, ((game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[3].unkwn1 % 1000000) - (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[3].unkwn1 % 10000)) / 10000))
        Database_Cast[Database_ExistT0[Varb0001]] -= 9;
       }
      break;
      case 10:
       Varb0002 = ((game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].hit_j % 1000000) - (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].hit_j % 1000)) / 1000;
       if(Varb0002 != 0)
       {
        if(InputSetUp(Database_ExistT0[Varb0001], Varb0002, (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[3].unkwn1 - (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[3].unkwn1 % 1000000)) / 1000000))
        Database_Cast[Database_ExistT0[Varb0001]] -= 10;
       }
      break;
      case 11:
       Varb0002 = (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].hit_j - (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].hit_j % 1000000)) / 1000000;
       if(Varb0002 != 0)
       {
        if(InputSetUp(Database_ExistT0[Varb0001], Varb0002, game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[2].unkwn1 % 100))
        Database_Cast[Database_ExistT0[Varb0001]] -= 11;
       }
      break;
      case 12:
       Varb0002 = game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].hit_Fa % 1000;
       if(Varb0002 != 0)
       {
        if(InputSetUp(Database_ExistT0[Varb0001], Varb0002, ((game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[2].unkwn1 % 10000) - (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[2].unkwn1 % 100)) / 100))
        Database_Cast[Database_ExistT0[Varb0001]] -= 12;
       }
      break;
      case 13:
       Varb0002 = game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].hit_Fj % 1000;
       if(Varb0002 != 0)
       {
        if(InputSetUp(Database_ExistT0[Varb0001], Varb0002, game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[1].unkwn1 % 100))
        Database_Cast[Database_ExistT0[Varb0001]] -= 13;
       }
      break;
      case 14:
       Varb0002 = ((game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].hit_Fj % 1000000) - (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].hit_Fj % 1000)) / 1000;
       if(Varb0002 != 0)
       {
        if(InputSetUp(Database_ExistT0[Varb0001], Varb0002, ((game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[1].unkwn1 % 10000) - (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[1].unkwn1 % 100)) / 100))
        Database_Cast[Database_ExistT0[Varb0001]] -= 14;
       }
      break;
      case 15:
       Varb0002 = (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].hit_Fj - (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].hit_Fj % 1000)) / 1000;
       if(Varb0002 != 0)
       {
        if(InputSetUp(Database_ExistT0[Varb0001], Varb0002, ((game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[1].unkwn1 % 1000000) - (game.objects[Database_ExistT0[Varb0001]].data.frames[game.objects[Database_ExistT0[Varb0001]].frame1].itrs[1].unkwn1 % 10000)) / 10000))
        Database_Cast[Database_ExistT0[Varb0001]] -= 15;
       }
      break;
      default: break;
     }
    }
   //-//

   //State Declarament
    for(Varb0001 = 0; Varb0001 < NumberOfExist; ++Varb0001)
    {
     bool Varb0018 = true;
     switch((StateEjection(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1, 5) % 1000000))
     {
      case 200000:
       switch((StateEjection(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1, 4) % 100000))
       {
        case 0: //20YYZZ
         Varb0003 = false; Varb0004 = false; Varb0005 = false;
         if(Database_Input[(Database_Exist[Varb0001] * 7) + 3] > 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 5] == 1) Varb0003 = true;
         if(Database_Input[(Database_Exist[Varb0001] * 7) + 3] == 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 5] > 1){Varb0003 = true; Varb0004 = true;}
         if(Database_Input[(Database_Exist[Varb0001] * 7) + 4] > 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 6] == 1){Varb0005 = true; if(Varb0003){if(Varb0004){XVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementWalkRatio * MovementSideRatio)); ZVelUp(Database_Exist[Varb0001], (game.objects[Database_Exist[Varb0001]].data.walking_speed * PrespectiveRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementWalkRatio * MovementSideRatio));} else {XVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementWalkRatio * MovementSideRatio)); ZVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * PrespectiveRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementWalkRatio * MovementSideRatio));}} else {XVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementWalkRatio));}}
         if(Database_Input[(Database_Exist[Varb0001] * 7) + 4] == 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 6] > 1){Varb0005 = true; if(Varb0003){if(Varb0004){XVelUp(Database_Exist[Varb0001], (game.objects[Database_Exist[Varb0001]].data.walking_speed * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementWalkRatio * MovementSideRatio)); ZVelUp(Database_Exist[Varb0001], (game.objects[Database_Exist[Varb0001]].data.walking_speed * PrespectiveRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementWalkRatio * MovementSideRatio));} else {XVelUp(Database_Exist[Varb0001], (game.objects[Database_Exist[Varb0001]].data.walking_speed * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementWalkRatio * MovementSideRatio)); ZVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * PrespectiveRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementWalkRatio * MovementSideRatio));}} else {XVelUp(Database_Exist[Varb0001], (game.objects[Database_Exist[Varb0001]].data.walking_speed * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementWalkRatio));}}
         if(!Varb0005 && Varb0003){if(Varb0004){ZVelUp(Database_Exist[Varb0001], (game.objects[Database_Exist[Varb0001]].data.walking_speed * PrespectiveRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementWalkRatio));} else {{ZVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * PrespectiveRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementWalkRatio));}}}
         if(Varb0003 || Varb0005) switch((StateEjection(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1, 0) % 10))
         {
          case 1:
           Database_WalkSys[Database_Exist[Varb0001]] += 1;
           Database_WalkSys[Database_Exist[Varb0001]] = 1000 + (Database_WalkSys[Database_Exist[Varb0001]] % 1000);
           if(Database_WalkSys[Database_Exist[Varb0001]] % 1000 >= ((StateEjection(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1, 1) % 10000) / 10))
           {
            Database_WalkSys[Database_Exist[Varb0001]] = 1000; Control_Frame1(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1 + 1);
           } else {Control_WaitCounter(Database_Exist[Varb0001], 0);}
          break;
          case 2:
           if(Database_WalkSys[Database_Exist[Varb0001]] == 0) Database_WalkSys[Database_Exist[Varb0001]] = 1000;
           Database_WalkSys[Database_Exist[Varb0001]] += 1;
           if(Database_WalkSys[Database_Exist[Varb0001]] % 1000 >= ((StateEjection(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1, 1) % 10000) / 10))
           {
            Database_WalkSys[Database_Exist[Varb0001]] -= Database_WalkSys[Database_Exist[Varb0001]] % 1000;
            if(Database_WalkSys[Database_Exist[Varb0001]] == 1000) Control_Frame1(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1 + 1);
            if(Database_WalkSys[Database_Exist[Varb0001]] == 2000) Control_Frame1(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1 - 1);
           } else {Control_WaitCounter(Database_Exist[Varb0001], 0);}
          break;
          case 3:
           Database_WalkSys[Database_Exist[Varb0001]] += 1;
           Database_WalkSys[Database_Exist[Varb0001]] = 2000 + (Database_WalkSys[Database_Exist[Varb0001]] % 1000);
           if(Database_WalkSys[Database_Exist[Varb0001]] % 1000 >= ((StateEjection(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1, 1) % 10000) / 10))
           {
            Database_WalkSys[Database_Exist[Varb0001]] = 2000; Control_Frame1(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1 - 1);
           } else {Control_WaitCounter(Database_Exist[Varb0001], 0);}
          break;
          default: break;
         }
        break;
        case 10000: //21YYZZ
         Varb0003 = false;
         if(Database_Input[(Database_Exist[Varb0001] * 7) + 3] > 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 5] == 1){Varb0003 = true; ZVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * PrespectiveRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementRunRatio * MovementSideRatio));}
         if(Database_Input[(Database_Exist[Varb0001] * 7) + 5] > 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 3] == 1){Varb0003 = true; ZVelUp(Database_Exist[Varb0001], (game.objects[Database_Exist[Varb0001]].data.walking_speed * PrespectiveRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementRunRatio * MovementSideRatio));}
         if(!game.objects[Database_Exist[Varb0001]].facing){if(Varb0003){XVelUp(Database_Exist[Varb0001], (game.objects[Database_Exist[Varb0001]].data.walking_speed * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementRunRatio * MovementSideRatio));} else {XVelUp(Database_Exist[Varb0001], (game.objects[Database_Exist[Varb0001]].data.walking_speed * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementRunRatio));}} else {if(Varb0003){XVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementRunRatio * MovementSideRatio));} else {XVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementRunRatio));}}
         switch((StateEjection(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1, 0) % 10))
         {
          case 1:
           Database_WalkSys[Database_Exist[Varb0001]] += 1;
           Database_WalkSys[Database_Exist[Varb0001]] = 1000 + (Database_WalkSys[Database_Exist[Varb0001]] % 1000);
           if(Database_WalkSys[Database_Exist[Varb0001]] % 1000 >= ((StateEjection(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1, 1) % 10000) / 10))
           {
            Database_WalkSys[Database_Exist[Varb0001]] = 1000; Control_Frame1(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1 + 1);
           } else {Control_WaitCounter(Database_Exist[Varb0001], 0);}
          break;
          case 2:
           if(Database_WalkSys[Database_Exist[Varb0001]] == 0) Database_WalkSys[Database_Exist[Varb0001]] = 1000;
           Database_WalkSys[Database_Exist[Varb0001]] += 1;
           if(Database_WalkSys[Database_Exist[Varb0001]] % 1000 >= ((StateEjection(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1, 1) % 10000) / 10))
           {
            Database_WalkSys[Database_Exist[Varb0001]] -= Database_WalkSys[Database_Exist[Varb0001]] % 1000;
            if(Database_WalkSys[Database_Exist[Varb0001]] == 1000) Control_Frame1(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1 + 1);
            if(Database_WalkSys[Database_Exist[Varb0001]] == 2000) Control_Frame1(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1 - 1);
           } else {Control_WaitCounter(Database_Exist[Varb0001], 0);}
          break;
          case 3:
           Database_WalkSys[Database_Exist[Varb0001]] += 1;
           Database_WalkSys[Database_Exist[Varb0001]] = 2000 + (Database_WalkSys[Database_Exist[Varb0001]] % 1000);
           if(Database_WalkSys[Database_Exist[Varb0001]] % 1000 >= ((StateEjection(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1, 1) % 10000) / 10))
           {
            Database_WalkSys[Database_Exist[Varb0001]] = 2000; Control_Frame1(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1 - 1);
           } else {Control_WaitCounter(Database_Exist[Varb0001], 0);}
          break;
          default: break;
         }
        break;
        case 20000: //22YYZZ
         Varb0003 = false; Varb0004 = false; Varb0005 = false;
         if(Database_Input[(Database_Exist[Varb0001] * 7) + 3] > 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 5] == 1) Varb0003 = true;
         if(Database_Input[(Database_Exist[Varb0001] * 7) + 3] == 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 5] > 1){Varb0003 = true; Varb0004 = true;}
         if(Database_Input[(Database_Exist[Varb0001] * 7) + 4] > 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 6] == 1){Varb0005 = true; if(Varb0003){if(Varb0004){XVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementHeavyRatio * MovementWalkRatio * MovementSideRatio)); ZVelUp(Database_Exist[Varb0001], (game.objects[Database_Exist[Varb0001]].data.walking_speed * PrespectiveRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementHeavyRatio * MovementWalkRatio * MovementSideRatio));} else {XVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementHeavyRatio * MovementWalkRatio * MovementSideRatio)); ZVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * PrespectiveRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementHeavyRatio * MovementWalkRatio * MovementSideRatio));}} else {XVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementHeavyRatio * MovementWalkRatio));}}
         if(Database_Input[(Database_Exist[Varb0001] * 7) + 4] == 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 6] > 1){Varb0005 = true; if(Varb0003){if(Varb0004){XVelUp(Database_Exist[Varb0001], (game.objects[Database_Exist[Varb0001]].data.walking_speed * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementHeavyRatio * MovementWalkRatio * MovementSideRatio)); ZVelUp(Database_Exist[Varb0001], (game.objects[Database_Exist[Varb0001]].data.walking_speed * PrespectiveRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementHeavyRatio * MovementWalkRatio * MovementSideRatio));} else {XVelUp(Database_Exist[Varb0001], (game.objects[Database_Exist[Varb0001]].data.walking_speed * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementHeavyRatio * MovementWalkRatio * MovementSideRatio)); ZVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * PrespectiveRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementHeavyRatio * MovementWalkRatio * MovementSideRatio));}} else {XVelUp(Database_Exist[Varb0001], (game.objects[Database_Exist[Varb0001]].data.walking_speed * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementHeavyRatio * MovementWalkRatio));}}
         if(!Varb0005 && Varb0003){if(Varb0004){ZVelUp(Database_Exist[Varb0001], (game.objects[Database_Exist[Varb0001]].data.walking_speed * PrespectiveRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementHeavyRatio * MovementWalkRatio));} else {{ZVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * PrespectiveRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementHeavyRatio * MovementWalkRatio));}}}
         if(Varb0003 || Varb0005) switch((StateEjection(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1, 0) % 10))
         {
          case 1:
           Database_WalkSys[Database_Exist[Varb0001]] += 1;
           Database_WalkSys[Database_Exist[Varb0001]] = 1000 + (Database_WalkSys[Database_Exist[Varb0001]] % 1000);
           if(Database_WalkSys[Database_Exist[Varb0001]] % 1000 >= ((StateEjection(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1, 1) % 10000) / 10))
           {
            Database_WalkSys[Database_Exist[Varb0001]] = 1000; Control_Frame1(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1 + 1);
           } else {Control_WaitCounter(Database_Exist[Varb0001], 0);}
          break;
          case 2:
           if(Database_WalkSys[Database_Exist[Varb0001]] == 0) Database_WalkSys[Database_Exist[Varb0001]] = 1000;
           Database_WalkSys[Database_Exist[Varb0001]] += 1;
           if(Database_WalkSys[Database_Exist[Varb0001]] % 1000 >= ((StateEjection(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1, 1) % 10000) / 10))
           {
            Database_WalkSys[Database_Exist[Varb0001]] -= Database_WalkSys[Database_Exist[Varb0001]] % 1000;
            if(Database_WalkSys[Database_Exist[Varb0001]] == 1000) Control_Frame1(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1 + 1);
            if(Database_WalkSys[Database_Exist[Varb0001]] == 2000) Control_Frame1(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1 - 1);
           } else {Control_WaitCounter(Database_Exist[Varb0001], 0);}
          break;
          case 3:
           Database_WalkSys[Database_Exist[Varb0001]] += 1;
           Database_WalkSys[Database_Exist[Varb0001]] = 2000 + (Database_WalkSys[Database_Exist[Varb0001]] % 1000);
           if(Database_WalkSys[Database_Exist[Varb0001]] % 1000 >= ((StateEjection(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1, 1) % 10000) / 10))
           {
            Database_WalkSys[Database_Exist[Varb0001]] = 2000; Control_Frame1(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1 - 1);
           } else {Control_WaitCounter(Database_Exist[Varb0001], 0);}
          break;
          default: break;
         }
        break;
        case 30000: //23YYZZ
         Varb0003 = false;
         if(Database_Input[(Database_Exist[Varb0001] * 7) + 3] > 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 5] == 1){Varb0003 = true; ZVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * PrespectiveRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementHeavyRatio * MovementRunRatio * MovementSideRatio));}
         if(Database_Input[(Database_Exist[Varb0001] * 7) + 5] > 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 3] == 1){Varb0003 = true; ZVelUp(Database_Exist[Varb0001], (game.objects[Database_Exist[Varb0001]].data.walking_speed * PrespectiveRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementHeavyRatio * MovementRunRatio * MovementSideRatio));}
         if(!game.objects[Database_Exist[Varb0001]].facing){if(Varb0003){XVelUp(Database_Exist[Varb0001], (game.objects[Database_Exist[Varb0001]].data.walking_speed * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementHeavyRatio * MovementRunRatio * MovementSideRatio));} else {XVelUp(Database_Exist[Varb0001], (game.objects[Database_Exist[Varb0001]].data.walking_speed * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementHeavyRatio * MovementRunRatio));}} else {if(Varb0003){XVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementHeavyRatio * MovementRunRatio * MovementSideRatio));} else {XVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementHeavyRatio * MovementRunRatio));}}
         switch((StateEjection(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1, 0) % 10))
         {
          case 1:
           Database_WalkSys[Database_Exist[Varb0001]] += 1;
           Database_WalkSys[Database_Exist[Varb0001]] = 1000 + (Database_WalkSys[Database_Exist[Varb0001]] % 1000);
           if(Database_WalkSys[Database_Exist[Varb0001]] % 1000 >= ((StateEjection(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1, 1) % 10000) / 10))
           {
            Database_WalkSys[Database_Exist[Varb0001]] = 1000; Control_Frame1(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1 + 1);
           } else {Control_WaitCounter(Database_Exist[Varb0001], 0);}
          break;
          case 2:
           if(Database_WalkSys[Database_Exist[Varb0001]] == 0) Database_WalkSys[Database_Exist[Varb0001]] = 1000;
           Database_WalkSys[Database_Exist[Varb0001]] += 1;
           if(Database_WalkSys[Database_Exist[Varb0001]] % 1000 >= ((StateEjection(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1, 1) % 10000) / 10))
           {
            Database_WalkSys[Database_Exist[Varb0001]] -= Database_WalkSys[Database_Exist[Varb0001]] % 1000;
            if(Database_WalkSys[Database_Exist[Varb0001]] == 1000) Control_Frame1(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1 + 1);
            if(Database_WalkSys[Database_Exist[Varb0001]] == 2000) Control_Frame1(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1 - 1);
           } else {Control_WaitCounter(Database_Exist[Varb0001], 0);}
          break;
          case 3:
           Database_WalkSys[Database_Exist[Varb0001]] += 1;
           Database_WalkSys[Database_Exist[Varb0001]] = 2000 + (Database_WalkSys[Database_Exist[Varb0001]] % 1000);
           if(Database_WalkSys[Database_Exist[Varb0001]] % 1000 >= ((StateEjection(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1, 1) % 10000) / 10))
           {
            Database_WalkSys[Database_Exist[Varb0001]] = 2000; Control_Frame1(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1 - 1);
           } else {Control_WaitCounter(Database_Exist[Varb0001], 0);}
          break;
          default: break;
         }
        break;
        case 40000:
         switch((StateEjection(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1, 3) % 10000))
         {
          case 4000:
          break;
          default: break;
         }
        break;
        default: break;
       }
      break;
      default: break;
     }
     if(Varb0018) if(Database_ToGround[Database_Exist[Varb0001]] > 0) Control_Frame1(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1 - 1);
    }
   //-//

   //Position Memorizing
    array < double > Varb0011 = MaximumObjNum * 3;
    for(Varb0001 = 0; Varb0001 < NumberOfExist; ++Varb0001)
    {
     Varb0011[(Database_Exist[Varb0001] * 3)] = Database_Status[(Database_Exist[Varb0001] * 12) + 3];
     Varb0011[(Database_Exist[Varb0001] * 3) + 1] = Database_Status[(Database_Exist[Varb0001] * 12) + 4];
     Varb0011[(Database_Exist[Varb0001] * 3) + 2] = Database_Status[(Database_Exist[Varb0001] * 12) + 5];
    }
   //-//

   //Early Itr Declarament

   //-//

   //Cpoint Declarament

   //-//

   //Wpoint Declarament

   //-//

   //Itr Declarament

   //-//

   //Velocity Calculation 
    for(Varb0001 = 0; Varb0001 < NumberOfExist; ++Varb0001)
    {
     switch(Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Dj - (game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Dj % 10000000)))
     {
      case 0:
       if(game.objects[Database_Exist[Varb0001]].facing)
       {
        XVelUp(Database_Exist[Varb0001], - Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Dj % 10000000));
       } else
       {
        XVelUp(Database_Exist[Varb0001], Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Dj % 10000000));
       }
      break;
      case 10000000:
       if(game.objects[Database_Exist[Varb0001]].facing)
       {
        XVelUp(Database_Exist[Varb0001], Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Dj % 10000000));
       } else
       {
        XVelUp(Database_Exist[Varb0001], - Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Dj % 10000000));
       }
      break;
      case 20000000:
       if(game.objects[Database_Exist[Varb0001]].facing)
       {
        Database_Status[(Database_Exist[Varb0001] * 12) + 6] = - Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Dj % 10000000);
       } else
       {
        Database_Status[(Database_Exist[Varb0001] * 12) + 6] = Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Dj % 10000000);
       }
      break;
      case 30000000:
       if(game.objects[Database_Exist[Varb0001]].facing)
       {
        Database_Status[(Database_Exist[Varb0001] * 12) + 6] = Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Dj % 10000000);
       } else
       {
        Database_Status[(Database_Exist[Varb0001] * 12) + 6] = - Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Dj % 10000000);
       }
      break;
      case 40000000:
       if(game.objects[Database_Exist[Varb0001]].shake == 0)
       if(game.objects[Database_Exist[Varb0001]].facing)
       {
        Database_Status[(Database_Exist[Varb0001] * 12) + 3] -= Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Dj) % 10000000;
       } else
       {
        Database_Status[(Database_Exist[Varb0001] * 12) + 3] += Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Dj) % 10000000;
       }
      break;
      case 50000000:
       if(game.objects[Database_Exist[Varb0001]].shake == 0)
       if(game.objects[Database_Exist[Varb0001]].facing)
       {
        Database_Status[(Database_Exist[Varb0001] * 12) + 3] += Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Dj) % 10000000;
       } else
       {
        Database_Status[(Database_Exist[Varb0001] * 12) + 3] -= Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Dj) % 10000000;
       }
      break;
      case 60000000:
       if(game.objects[Database_Exist[Varb0001]].facing)
       {
        XVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * (Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Dj % 10000000) * 0.00001)));
       } else
       {
        XVelUp(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].data.walking_speed * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * (Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Dj % 10000000) * 0.00001));
       }
      break;
      case 70000000:
       if(game.objects[Database_Exist[Varb0001]].facing)
       {
        XVelUp(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].data.walking_speed * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * (Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Dj % 10000000) * 0.00001));
       } else
       {
        XVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * (Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Dj % 10000000) * 0.00001)));
       }
      break;
      case 80000000:
       if(Database_Input[(Database_Exist[Varb0001] * 7) + 6] > 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 4] == 1)
       XVelUp(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].data.walking_speed * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * (Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Dj % 10000000) * 0.00001));
       if(Database_Input[(Database_Exist[Varb0001] * 7) + 4] > 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 6] == 1)
       XVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * (Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Dj % 10000000) * 0.00001)));
      break;
      case 90000000:
      if(Database_Input[(Database_Exist[Varb0001] * 7) + 6] > 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 4] == 1)
       {
        if(Database_Input[(Database_Exist[Varb0001] * 7) + 3] == 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 5] == 1)
        XVelUp(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].data.walking_speed * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * (Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Dj % 10000000) * 0.00001));
        if((Database_Input[(Database_Exist[Varb0001] * 7) + 3] > 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 5] == 1) || (Database_Input[(Database_Exist[Varb0001] * 7) + 5] > 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 3] == 1))
        XVelUp(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].data.walking_speed * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementSideRatio * (Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Dj % 10000000) * 0.00001));
       }
       if(Database_Input[(Database_Exist[Varb0001] * 7) + 4] > 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 6] == 1)
       {
        if(Database_Input[(Database_Exist[Varb0001] * 7) + 3] == 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 5] == 1)
        XVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * (Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Dj % 10000000) * 0.00001)));
        if((Database_Input[(Database_Exist[Varb0001] * 7) + 3] > 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 5] == 1) || (Database_Input[(Database_Exist[Varb0001] * 7) + 5] > 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 3] == 1))
        XVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementSideRatio * (Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Dj % 10000000) * 0.00001)));
       }
      break;
      default: break;
     }
     switch(Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Ua - (game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Ua % 10000000)))
     {
      case 0:
       YVelUp(Database_Exist[Varb0001], Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Ua % 10000000));
      break;
      case 10000000:
       YVelUp(Database_Exist[Varb0001], - Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Ua % 10000000));
      break;
      case 20000000:
       Database_Status[(Database_Exist[Varb0001] * 12) + 7] = Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Ua % 10000000);
      break;
      case 30000000:
       Database_Status[(Database_Exist[Varb0001] * 12) + 7] = - Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Ua % 10000000);
      break;
      case 40000000:
       if(game.objects[Database_Exist[Varb0001]].shake == 0)
       Database_Status[(Database_Exist[Varb0001] * 12) + 4] += Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Ua % 10000000);
      break;
      case 50000000:
       if(game.objects[Database_Exist[Varb0001]].shake == 0)
       Database_Status[(Database_Exist[Varb0001] * 12) + 4] -= Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Ua % 10000000);
      break;
      case 60000000:
       YVelUp(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].data.walking_speed * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * (Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Ua % 10000000) * 0.00001));
      break;
      case 70000000:
       YVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * (Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Ua % 10000000) * 0.00001)));
      break;
      case 80000000:
       if(Database_Input[(Database_Exist[Varb0001] * 7) + 5] > 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 3] == 1)
       YVelUp(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].data.walking_speed * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * (Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Ua % 10000000) * 0.00001));
       if(Database_Input[(Database_Exist[Varb0001] * 7) + 3] > 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 5] == 1)
       YVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * (Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Ua % 10000000) * 0.00001)));
      break;
      case 90000000:
       if(Database_Input[(Database_Exist[Varb0001] * 7) + 1] > 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 2] == 1)
       YVelUp(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].data.walking_speed * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * (Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Ua % 10000000) * 0.00001));
       if(Database_Input[(Database_Exist[Varb0001] * 7) + 2] > 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 1] == 1)
       YVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * (Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Ua % 10000000) * 0.00001)));
      break;
      default: break;
     }
     switch(Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Uj - (game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Uj % 10000000)))
     {
      case 0:
       ZVelUp(Database_Exist[Varb0001], Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Uj % 10000000));
      break;
      case 10000000:
       ZVelUp(Database_Exist[Varb0001], - Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Uj % 10000000));
      break;
      case 20000000:
       Database_Status[(Database_Exist[Varb0001] * 12) + 8] = Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Uj % 10000000);
      break;
      case 30000000:
       Database_Status[(Database_Exist[Varb0001] * 12) + 8] = - Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Uj % 10000000);
      break;
      case 40000000:
       if(game.objects[Database_Exist[Varb0001]].shake == 0)
       Database_Status[(Database_Exist[Varb0001] * 12) + 5] += Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Uj % 10000000);
      break;
      case 50000000:
       if(game.objects[Database_Exist[Varb0001]].shake == 0)
       Database_Status[(Database_Exist[Varb0001] * 12) + 5] -= Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Uj % 10000000);
      break;
      case 60000000:
       ZVelUp(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].data.walking_speed * PrespectiveRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * (Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Uj % 10000000) * 0.00001));
      break;
      case 70000000:
       ZVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * PrespectiveRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * (Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Uj % 10000000) * 0.00001)));
      break;
      case 80000000:
       if(Database_Input[(Database_Exist[Varb0001] * 7) + 5] > 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 3] == 1)
       ZVelUp(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].data.walking_speed * PrespectiveRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * (Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Uj % 10000000) * 0.00001));
       if(Database_Input[(Database_Exist[Varb0001] * 7) + 3] > 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 5] == 1)
       ZVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * PrespectiveRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * (Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Uj % 10000000) * 0.00001)));
      break;
      case 90000000:
       if(Database_Input[(Database_Exist[Varb0001] * 7) + 5] > 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 3] == 1)
       {
        if(Database_Input[(Database_Exist[Varb0001] * 7) + 4] == 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 6] == 1)
        ZVelUp(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].data.walking_speed * PrespectiveRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * (Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Uj % 10000000) * 0.00001));
        if((Database_Input[(Database_Exist[Varb0001] * 7) + 4] > 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 6] == 1) || (Database_Input[(Database_Exist[Varb0001] * 7) + 6] > 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 4] == 1))
        ZVelUp(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].data.walking_speed * PrespectiveRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementSideRatio * (Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Uj % 10000000) * 0.00001));
       }
       if(Database_Input[(Database_Exist[Varb0001] * 7) + 3] > 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 5] == 1)
       {
        if(Database_Input[(Database_Exist[Varb0001] * 7) + 4] == 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 6] == 1)
        ZVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * PrespectiveRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * (Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Uj % 10000000) * 0.00001)));
        if((Database_Input[(Database_Exist[Varb0001] * 7) + 4] > 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 6] == 1) || (Database_Input[(Database_Exist[Varb0001] * 7) + 6] > 1 && Database_Input[(Database_Exist[Varb0001] * 7) + 4] == 1))
        ZVelUp(Database_Exist[Varb0001], -(game.objects[Database_Exist[Varb0001]].data.walking_speed * PrespectiveRatio * Database_Status[(Database_Exist[Varb0001] * 12) + 9] * MovementBaseRatio * MovementSideRatio * (Iabs(game.objects[Database_Exist[Varb0001]].data.frames[game.objects[Database_Exist[Varb0001]].frame1].hit_Uj % 10000000) * 0.00001)));
       }
      break;
      default: break;
     }
     if(game.objects[Database_Exist[Varb0001]].shake == 0)
     {
      if(HighLevelCalculation)
      {
       double Varb0012 = 0; double Varb0013 = 0; double Varb0014 = 0;
       switch(game.objects[Database_Exist[Varb0001]].data.type)
       {
        case 0:
         if(Database_ToGround[Database_Exist[Varb0001]] > 0)
         {
          Varb0012 = (Dabs(Database_Status[(Database_Exist[Varb0001] * 12) + 6]) / (AirDensitySpeed * (1 - (WeightEffectiveness / 100) + (game.objects[Database_Exist[Varb0001]].data.walking_speedz * (WeightEffectiveness / 100))))) * (DecreasionEffectiveness / 100) * ((Type0MXGravity * DecreasionRateRatio * 0.01) + DecreasionRateBase);
          Varb0013 = (Dabs(Database_Status[(Database_Exist[Varb0001] * 12) + 7]) / (AirDensitySpeed * (1 - (WeightEffectiveness / 100) + (game.objects[Database_Exist[Varb0001]].data.walking_speedz * (WeightEffectiveness / 100))))) * (DecreasionEffectiveness / 100) * ((Type0MYGravity * DecreasionRateRatio * 0.01) + DecreasionRateBase);
          Varb0014 = (Dabs(Database_Status[(Database_Exist[Varb0001] * 12) + 8]) / (AirDensitySpeed * (1 - (WeightEffectiveness / 100) + (game.objects[Database_Exist[Varb0001]].data.walking_speedz * (WeightEffectiveness / 100))) * PrespectiveRatio)) * (DecreasionEffectiveness / 100) * ((Type0MXGravity * PrespectiveRatio * DecreasionRateRatio * 0.01) + (DecreasionRateBase * PrespectiveRatio));
          print("\n <!> "+Database_Status[(Database_Exist[Varb0001] * 12) + 6]+" "+Database_Status[(Database_Exist[Varb0001] * 12) + 7]+" "+Database_Status[(Database_Exist[Varb0001] * 12) + 8]);
          print("\n <> "+Varb0012+" "+Varb0013+" "+Varb0014);
         } else
         {
          Varb0012 = (Dabs(Database_Status[(Database_Exist[Varb0001] * 12) + 6]) / (AirDensitySpeed * (1 - (WeightEffectiveness / 100) + (game.objects[Database_Exist[Varb0001]].data.walking_speedz * (WeightEffectiveness / 100))))) * (DecreasionEffectiveness / 100) * ((Type0GXGravity * DecreasionRateRatio * 0.01) + DecreasionRateBase);
          Varb0013 = (Dabs(Database_Status[(Database_Exist[Varb0001] * 12) + 7]) / (AirDensitySpeed * (1 - (WeightEffectiveness / 100) + (game.objects[Database_Exist[Varb0001]].data.walking_speedz * (WeightEffectiveness / 100))))) * (DecreasionEffectiveness / 100) * ((Type0MYGravity * DecreasionRateRatio * 0.01) + DecreasionRateBase);
          Varb0014 = (Dabs(Database_Status[(Database_Exist[Varb0001] * 12) + 8]) / (AirDensitySpeed * (1 - (WeightEffectiveness / 100) + (game.objects[Database_Exist[Varb0001]].data.walking_speedz * (WeightEffectiveness / 100))) * PrespectiveRatio)) * (DecreasionEffectiveness / 100) * ((Type0GXGravity * PrespectiveRatio * DecreasionRateRatio * 0.01) + (DecreasionRateBase * PrespectiveRatio));
          print("\n <!> "+Database_Status[(Database_Exist[Varb0001] * 12) + 6]+" "+Database_Status[(Database_Exist[Varb0001] * 12) + 8]);
          print("\n <> "+Varb0012+" "+Varb0014);
         }
         if(Database_Status[(Database_Exist[Varb0001] * 12) + 6] > 0)if(Database_Status[(Database_Exist[Varb0001] * 12) + 6] - Varb0012 < 0){Database_Status[(Database_Exist[Varb0001] * 12) + 6] = 0;} else {Database_Status[(Database_Exist[Varb0001] * 12) + 6] -= Varb0012;}
         if(Database_Status[(Database_Exist[Varb0001] * 12) + 6] < 0)if(Database_Status[(Database_Exist[Varb0001] * 12) + 6] + Varb0012 > 0){Database_Status[(Database_Exist[Varb0001] * 12) + 6] = 0;} else {Database_Status[(Database_Exist[Varb0001] * 12) + 6] += Varb0012;}
         if(Database_Status[(Database_Exist[Varb0001] * 12) + 7] > 0)if(Database_Status[(Database_Exist[Varb0001] * 12) + 7] - Varb0013 < 0){Database_Status[(Database_Exist[Varb0001] * 12) + 7] = 0;} else {Database_Status[(Database_Exist[Varb0001] * 12) + 7] -= Varb0013;}
         if(Database_Status[(Database_Exist[Varb0001] * 12) + 7] < 0)if(Database_Status[(Database_Exist[Varb0001] * 12) + 7] + Varb0013 > 0){Database_Status[(Database_Exist[Varb0001] * 12) + 7] = 0;} else {Database_Status[(Database_Exist[Varb0001] * 12) + 7] += Varb0013;}
         if(Database_Status[(Database_Exist[Varb0001] * 12) + 8] > 0)if(Database_Status[(Database_Exist[Varb0001] * 12) + 8] - Varb0014 < 0){Database_Status[(Database_Exist[Varb0001] * 12) + 8] = 0;} else {Database_Status[(Database_Exist[Varb0001] * 12) + 8] -= Varb0014;}
         if(Database_Status[(Database_Exist[Varb0001] * 12) + 8] < 0)if(Database_Status[(Database_Exist[Varb0001] * 12) + 8] + Varb0014 > 0){Database_Status[(Database_Exist[Varb0001] * 12) + 8] = 0;} else {Database_Status[(Database_Exist[Varb0001] * 12) + 8] += Varb0014;}
        break;
        default: break;
       }
      }
      Database_Status[(Database_Exist[Varb0001] * 12) + 3] += Database_Status[(Database_Exist[Varb0001] * 12) + 6];
      Database_Status[(Database_Exist[Varb0001] * 12) + 4] += Database_Status[(Database_Exist[Varb0001] * 12) + 7];
      Database_Status[(Database_Exist[Varb0001] * 12) + 5] += Database_Status[(Database_Exist[Varb0001] * 12) + 8];
      switch(game.objects[Database_Exist[Varb0001]].data.type)
      {
       case 0:
        if(Database_ToGround[Database_Exist[Varb0001]] > 0)
        {
         if(Database_Status[(Database_Exist[Varb0001] * 12) + 6] > 0) if(Database_Status[(Database_Exist[Varb0001] * 12) + 6] - Type0MXGravity < 0){Database_Status[(Database_Exist[Varb0001] * 12) + 6] = 0;} else {Database_Status[(Database_Exist[Varb0001] * 12) + 6] -= Type0MXGravity;}
         if(Database_Status[(Database_Exist[Varb0001] * 12) + 6] < 0) if(Database_Status[(Database_Exist[Varb0001] * 12) + 6] + Type0MXGravity > 0){Database_Status[(Database_Exist[Varb0001] * 12) + 6] = 0;} else {Database_Status[(Database_Exist[Varb0001] * 12) + 6] += Type0MXGravity;}
         Database_Status[(Database_Exist[Varb0001] * 12) + 7] += Type0MYGravity;
         if(Database_Status[(Database_Exist[Varb0001] * 12) + 8] > 0) if(Database_Status[(Database_Exist[Varb0001] * 12) + 8] - (Type0MXGravity * PrespectiveRatio) < 0){Database_Status[(Database_Exist[Varb0001] * 12) + 8] = 0;} else {Database_Status[(Database_Exist[Varb0001] * 12) + 8] -= (Type0MXGravity * PrespectiveRatio);}
         if(Database_Status[(Database_Exist[Varb0001] * 12) + 8] < 0) if(Database_Status[(Database_Exist[Varb0001] * 12) + 8] + (Type0MXGravity * PrespectiveRatio) > 0){Database_Status[(Database_Exist[Varb0001] * 12) + 8] = 0;} else {Database_Status[(Database_Exist[Varb0001] * 12) + 8] += (Type0MXGravity * PrespectiveRatio);}
        } else
        {
         if(Database_Status[(Database_Exist[Varb0001] * 12) + 6] > 0) if(Database_Status[(Database_Exist[Varb0001] * 12) + 6] - Type0GXGravity < 0){Database_Status[(Database_Exist[Varb0001] * 12) + 6] = 0;} else {Database_Status[(Database_Exist[Varb0001] * 12) + 6] -= Type0GXGravity;}
         if(Database_Status[(Database_Exist[Varb0001] * 12) + 6] < 0) if(Database_Status[(Database_Exist[Varb0001] * 12) + 6] + Type0GXGravity > 0){Database_Status[(Database_Exist[Varb0001] * 12) + 6] = 0;} else {Database_Status[(Database_Exist[Varb0001] * 12) + 6] += Type0GXGravity;}
         if(Database_Status[(Database_Exist[Varb0001] * 12) + 8] > 0) if(Database_Status[(Database_Exist[Varb0001] * 12) + 8] - (Type0GXGravity * PrespectiveRatio) < 0){Database_Status[(Database_Exist[Varb0001] * 12) + 8] = 0;} else {Database_Status[(Database_Exist[Varb0001] * 12) + 8] -= (Type0GXGravity * PrespectiveRatio);}
         if(Database_Status[(Database_Exist[Varb0001] * 12) + 8] < 0) if(Database_Status[(Database_Exist[Varb0001] * 12) + 8] + (Type0GXGravity * PrespectiveRatio) > 0){Database_Status[(Database_Exist[Varb0001] * 12) + 8] = 0;} else {Database_Status[(Database_Exist[Varb0001] * 12) + 8] += (Type0GXGravity * PrespectiveRatio);}
        }
       break;
       default: break;
      }
     }
    }
   //-//

   //Layer Offside & Layer Deployment
    int Varb0006 = 0;
    for(Varb0001 = 0; Varb0001 < 40; ++Varb0001) if(game.files.get_backgrounds()[background].transparency[Varb0001] != 999999999){Varb0006 += 1;} else {break;}
    array < int > Varb0007 = 30; int Varb0008 = 0; array < int > Varb0009 = 30; int Varb0010 = 0;
    for(Varb0001 = Varb0006 + 2; Varb0001 < game.files.get_backgrounds()[background].layer_count + Varb0006; ++Varb0001)
    if(game.files.get_backgrounds()[background].transparency[Varb0001] > 1)
    {
     if(game.files.get_backgrounds()[background].transparency[Varb0001] >= 100000000 && game.files.get_backgrounds()[background].transparency[Varb0001] <= 499999999)
     {Varb0007[Varb0008] = Varb0001; Varb0008 += 1;}
     if(game.files.get_backgrounds()[background].transparency[Varb0001] >= 500000000 && game.files.get_backgrounds()[background].transparency[Varb0001] <= 899999999)
     {Varb0009[Varb0010] = Varb0001; Varb0010 += 1;}
    }

         print(Varb0007[0]+" "+Varb0008);
    for(Varb0001 = 0; Varb0001 < NumberOfExist; ++Varb0001)
    {
     //ToGround Deployment
      int Varb0016 = 0; int Varb0017 = 0;
      for(int Varb0015 = 0; Varb0015 < Varb0008; ++Varb0015)
      {
       switch(Iabs(game.files.get_backgrounds()[background].transparency[Varb0007[Varb0015]] - (game.files.get_backgrounds()[background].transparency[Varb0007[Varb0015]] % 100000000)))
       {
        case 100000000:
         Varb0017 = (((game.files.get_backgrounds()[background].transparency[Varb0007[Varb0015]] % 100000000) - (game.files.get_backgrounds()[background].transparency[Varb0007[Varb0015]] % 10000)) / 10000) + (game.files.get_backgrounds()[background].transparency[Varb0007[Varb0015]] % 10000);
         if(Varb0017 >= Varb0016 && Varb0011[(Database_Exist[Varb0001] * 3) + 1] <= Varb0017)
         if(Varb0011[(Database_Exist[Varb0001] * 3)] >= ((game.files.get_backgrounds()[background].layer_x[Varb0007[Varb0015]] % 100000000) - (game.files.get_backgrounds()[background].layer_x[Varb0007[Varb0015]] % 10000)) / 10000 && Varb0011[(Database_Exist[Varb0001] * 3)] <= (((game.files.get_backgrounds()[background].layer_x[Varb0007[Varb0015]] % 100000000) - (game.files.get_backgrounds()[background].layer_x[Varb0007[Varb0015]] % 10000)) / 10000) + (game.files.get_backgrounds()[background].layer_x[Varb0007[Varb0015]] % 10000))
         if(Varb0011[(Database_Exist[Varb0001] * 3) + 2] >= ((game.files.get_backgrounds()[background].layer_y[Varb0007[Varb0015]] % 100000000) - (game.files.get_backgrounds()[background].layer_y[Varb0007[Varb0015]] % 10000)) / 10000 && Varb0011[(Database_Exist[Varb0001] * 3) + 2] <= (((game.files.get_backgrounds()[background].layer_y[Varb0007[Varb0015]] % 100000000) - (game.files.get_backgrounds()[background].layer_y[Varb0007[Varb0015]] % 10000)) / 10000) + (game.files.get_backgrounds()[background].layer_y[Varb0007[Varb0015]] % 10000))
         {
          Varb0016 = Varb0017; Database_ToGround[Database_Exist[Varb0001]] = -(Database_Status[(Database_Exist[Varb0001] * 12) + 4] + Cnvrt_I_D(Varb0017));
         }
        break;
       }
      }
      if(Varb0016 == 0) Database_ToGround[Database_Exist[Varb0001]] = -(Database_Status[(Database_Exist[Varb0001] * 12) + 4] + 0);
     //-//

     //Landing
      Varb0016 = StateEjection2(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1, 5); double Varb0019;
      switch((Varb0016 - (Varb0016 % 100000000)))
      {
       case 300000000: break;            
       case 200000000: break;  
       default: Database_Bounce[Database_Exist[Varb0001]] = false; break;
      }
      if(Database_ToGround[Database_Exist[Varb0001]] < 0)
      {
       if(Varb0016 % 100000000 == 0)
       {
        switch((Varb0016 - (Varb0016 % 100000000)))
        {
         case 200000000:
          Varb0019 = (Database_Status[(Database_Exist[Varb0001] * 12) + 3] - Varb0011[(Database_Exist[Varb0001] * 3)]) * ((Database_Status[(Database_Exist[Varb0001] * 12) + 4] - Varb0011[(Database_Exist[Varb0001] * 3) + 1] + Database_ToGround[Database_Exist[Varb0001]]) / (Database_Status[(Database_Exist[Varb0001] * 12) + 4] - Varb0011[(Database_Exist[Varb0001] * 3) + 1]));
          Database_Status[(Database_Exist[Varb0001] * 12) + 3] = Varb0011[(Database_Exist[Varb0001] * 3)] + Varb0019 + (((Database_Status[(Database_Exist[Varb0001] * 12) + 3] - Varb0011[(Database_Exist[Varb0001] * 3)]) - Varb0019) * LandingSpeedReduction);
          Database_Status[(Database_Exist[Varb0001] * 12) + 6] = Database_Status[(Database_Exist[Varb0001] * 12) + 6] * LandingSpeedReduction;
          Varb0019 = (Database_Status[(Database_Exist[Varb0001] * 12) + 5] - Varb0011[(Database_Exist[Varb0001] * 3) + 2]) * ((Database_Status[(Database_Exist[Varb0001] * 12) + 4] - Varb0011[(Database_Exist[Varb0001] * 3) + 1] + Database_ToGround[Database_Exist[Varb0001]]) / (Database_Status[(Database_Exist[Varb0001] * 12) + 4] - Varb0011[(Database_Exist[Varb0001] * 3) + 1]));
          Database_Status[(Database_Exist[Varb0001] * 12) + 5] = Varb0011[(Database_Exist[Varb0001] * 3) + 2] + Varb0019 + (((Database_Status[(Database_Exist[Varb0001] * 12) + 5] - Varb0011[(Database_Exist[Varb0001] * 3) + 2]) - Varb0019) * LandingSpeedReduction);
          Database_Status[(Database_Exist[Varb0001] * 12) + 8] = Database_Status[(Database_Exist[Varb0001] * 12) + 8] * LandingSpeedReduction;
          if(Database_Status[(Database_Exist[Varb0001] * 12) + 7] < VelocityForHighFall)
          {
           if(Database_Status[(Database_Exist[Varb0001] * 12) + 7] < VelocityForFall)
           {
            Control_Frame1(Database_Exist[Varb0001], (StateEjection(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1, 6) / 1000000) + 3);
            Database_Status[(Database_Exist[Varb0001] * 12) + 4] += Database_ToGround[Database_Exist[Varb0001]];
            Database_Status[(Database_Exist[Varb0001] * 12) + 7] = 0;
           } else
           {
            
           }
          } else
          {
           Control_Frame1(Database_Exist[Varb0001], (StateEjection(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1, 6) / 1000000) + 32);
           Database_Status[(Database_Exist[Varb0001] * 12) + 4] += Database_ToGround[Database_Exist[Varb0001]];
           if(Database_Bounce[Database_Exist[Varb0001]])
           {
            if(HighFallRebound > BounceRebound)
            {
             if(HighFallReboundVel > BounceReboundVel)
             {
              if(Database_Status[(Database_Exist[Varb0001] * 12) + 7] * HighFallRebound > HighFallReboundVel)
              {
               Database_Status[(Database_Exist[Varb0001] * 12) + 7] = -(Database_Status[(Database_Exist[Varb0001] * 12) + 7] * HighFallRebound);
              } else
              {
               Database_Status[(Database_Exist[Varb0001] * 12) + 7] = -HighFallReboundVel
              }
             } else
             {
              if(Database_Status[(Database_Exist[Varb0001] * 12) + 7] * HighFallRebound > BounceReboundVel)
              {
               Database_Status[(Database_Exist[Varb0001] * 12) + 7] = -(Database_Status[(Database_Exist[Varb0001] * 12) + 7] * HighFallRebound);
              } else
              {
               Database_Status[(Database_Exist[Varb0001] * 12) + 7] = -BounceReboundVel
              }
             }
            } else
            {
             if(HighFallReboundVel > BounceReboundVel)
             {
              if(Database_Status[(Database_Exist[Varb0001] * 12) + 7] * BounceRebound > HighFallReboundVel)
              {
               Database_Status[(Database_Exist[Varb0001] * 12) + 7] = -(Database_Status[(Database_Exist[Varb0001] * 12) + 7] * BounceRebound);
              } else
              {
               Database_Status[(Database_Exist[Varb0001] * 12) + 7] = -HighFallReboundVel
              }
             } else
             {
              if(Database_Status[(Database_Exist[Varb0001] * 12) + 7] * BounceRebound > BounceReboundVel)
              {
               Database_Status[(Database_Exist[Varb0001] * 12) + 7] = -(Database_Status[(Database_Exist[Varb0001] * 12) + 7] * BounceRebound);
              } else
              {
               Database_Status[(Database_Exist[Varb0001] * 12) + 7] = -BounceReboundVel
              }
             }
            }
           } else
           {
            if(Database_Status[(Database_Exist[Varb0001] * 12) + 7] * HighFallRebound > HighFallReboundVel)
            {
             Database_Status[(Database_Exist[Varb0001] * 12) + 7] = -(Database_Status[(Database_Exist[Varb0001] * 12) + 7] * HighFallRebound);
            } else
            {
             Database_Status[(Database_Exist[Varb0001] * 12) + 7] = -HighFallReboundVel
            }
           }
           DamageCalculaion(Database_Exist[Varb0001], Cnvrt_F_I(HighFallDamage - (HighFallDamage % 1)), Cnvrt_F_I(HighFallDamage % 1) * 10, -1);
          }
          Database_ToGround[Database_Exist[Varb0001]] = 0;
         break;
         case 100000000:
          Varb0019 = (Database_Status[(Database_Exist[Varb0001] * 12) + 3] - Varb0011[(Database_Exist[Varb0001] * 3)]) * ((Database_Status[(Database_Exist[Varb0001] * 12) + 4] - Varb0011[(Database_Exist[Varb0001] * 3) + 1] + Database_ToGround[Database_Exist[Varb0001]]) / (Database_Status[(Database_Exist[Varb0001] * 12) + 4] - Varb0011[(Database_Exist[Varb0001] * 3) + 1]));
          Database_Status[(Database_Exist[Varb0001] * 12) + 3] = Varb0011[(Database_Exist[Varb0001] * 3)] + Varb0019 + (((Database_Status[(Database_Exist[Varb0001] * 12) + 3] - Varb0011[(Database_Exist[Varb0001] * 3)]) - Varb0019) * LandingSpeedReduction);
          Database_Status[(Database_Exist[Varb0001] * 12) + 6] = Database_Status[(Database_Exist[Varb0001] * 12) + 6] * LandingSpeedReduction;
          Varb0019 = (Database_Status[(Database_Exist[Varb0001] * 12) + 5] - Varb0011[(Database_Exist[Varb0001] * 3) + 2]) * ((Database_Status[(Database_Exist[Varb0001] * 12) + 4] - Varb0011[(Database_Exist[Varb0001] * 3) + 1] + Database_ToGround[Database_Exist[Varb0001]]) / (Database_Status[(Database_Exist[Varb0001] * 12) + 4] - Varb0011[(Database_Exist[Varb0001] * 3) + 1]));
          Database_Status[(Database_Exist[Varb0001] * 12) + 5] = Varb0011[(Database_Exist[Varb0001] * 3) + 2] + Varb0019 + (((Database_Status[(Database_Exist[Varb0001] * 12) + 5] - Varb0011[(Database_Exist[Varb0001] * 3) + 2]) - Varb0019) * LandingSpeedReduction);
          Database_Status[(Database_Exist[Varb0001] * 12) + 8] = Database_Status[(Database_Exist[Varb0001] * 12) + 8] * LandingSpeedReduction;
          if(Database_Status[(Database_Exist[Varb0001] * 12) + 7] < VelocityForHighFall)
          {
           Database_Status[(Database_Exist[Varb0001] * 12) + 4] += Database_ToGround[Database_Exist[Varb0001]];
           Database_Status[(Database_Exist[Varb0001] * 12) + 7] = 0;
          } else
          {
           Control_Frame1(Database_Exist[Varb0001], (StateEjection(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1, 6) / 1000000) + 32);
           Database_Status[(Database_Exist[Varb0001] * 12) + 4] += Database_ToGround[Database_Exist[Varb0001]];
           Database_Status[(Database_Exist[Varb0001] * 12) + 7] = -(Database_Status[(Database_Exist[Varb0001] * 12) + 7] * HighFallRebound);
           DamageCalculaion(Database_Exist[Varb0001], Cnvrt_F_I(HighFallDamage - (HighFallDamage % 1)), Cnvrt_F_I(HighFallDamage % 1) * 10, -1);
          }
          Database_ToGround[Database_Exist[Varb0001]] = 0;
         break;
         default:
          Varb0019 = (Database_Status[(Database_Exist[Varb0001] * 12) + 3] - Varb0011[(Database_Exist[Varb0001] * 3)]) * ((Database_Status[(Database_Exist[Varb0001] * 12) + 4] - Varb0011[(Database_Exist[Varb0001] * 3) + 1] + Database_ToGround[Database_Exist[Varb0001]]) / (Database_Status[(Database_Exist[Varb0001] * 12) + 4] - Varb0011[(Database_Exist[Varb0001] * 3) + 1]));
          Database_Status[(Database_Exist[Varb0001] * 12) + 3] = Varb0011[(Database_Exist[Varb0001] * 3)] + Varb0019 + (((Database_Status[(Database_Exist[Varb0001] * 12) + 3] - Varb0011[(Database_Exist[Varb0001] * 3)]) - Varb0019) * LandingSpeedReduction);
          Database_Status[(Database_Exist[Varb0001] * 12) + 6] = Database_Status[(Database_Exist[Varb0001] * 12) + 6] * LandingSpeedReduction;
          Varb0019 = (Database_Status[(Database_Exist[Varb0001] * 12) + 5] - Varb0011[(Database_Exist[Varb0001] * 3) + 2]) * ((Database_Status[(Database_Exist[Varb0001] * 12) + 4] - Varb0011[(Database_Exist[Varb0001] * 3) + 1] + Database_ToGround[Database_Exist[Varb0001]]) / (Database_Status[(Database_Exist[Varb0001] * 12) + 4] - Varb0011[(Database_Exist[Varb0001] * 3) + 1]));
          Database_Status[(Database_Exist[Varb0001] * 12) + 5] = Varb0011[(Database_Exist[Varb0001] * 3) + 2] + Varb0019 + (((Database_Status[(Database_Exist[Varb0001] * 12) + 5] - Varb0011[(Database_Exist[Varb0001] * 3) + 2]) - Varb0019) * LandingSpeedReduction);
          Database_Status[(Database_Exist[Varb0001] * 12) + 8] = Database_Status[(Database_Exist[Varb0001] * 12) + 8] * LandingSpeedReduction;
          if(Database_Status[(Database_Exist[Varb0001] * 12) + 7] < VelocityForHighFall)
          {
           Control_Frame1(Database_Exist[Varb0001], (StateEjection(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1, 6) / 1000000) + 3);
           Database_Status[(Database_Exist[Varb0001] * 12) + 4] += Database_ToGround[Database_Exist[Varb0001]];
           Database_Status[(Database_Exist[Varb0001] * 12) + 7] = 0;
          } else
          {
           Control_Frame1(Database_Exist[Varb0001], (StateEjection(Database_Exist[Varb0001], game.objects[Database_Exist[Varb0001]].frame1, 6) / 1000000) + 32);
           Database_Status[(Database_Exist[Varb0001] * 12) + 4] += Database_ToGround[Database_Exist[Varb0001]];
           Database_Status[(Database_Exist[Varb0001] * 12) + 7] = -(Database_Status[(Database_Exist[Varb0001] * 12) + 7] * HighFallRebound);
           DamageCalculaion(Database_Exist[Varb0001], Cnvrt_F_I(HighFallDamage - (HighFallDamage % 1)), Cnvrt_F_I(HighFallDamage % 1) * 10, -1);
          }
          Database_ToGround[Database_Exist[Varb0001]] = 0;
         break;
        }
       } else
       {
        
       }
      }
     //-//
    }
   //-//

   //Finalizer
    for(Varb0001 = 0; Varb0001 < NumberOfExist; ++Varb0001)
    {
     Control_XR(Database_Exist[Varb0001], Rounding(Database_Status[(Database_Exist[Varb0001] * 12) + 3]));
     Control_YR(Database_Exist[Varb0001], Rounding(Database_Status[(Database_Exist[Varb0001] * 12) + 4] - YAxisSingularity - (Database_Status[(Database_Exist[Varb0001] * 12) + 4] + Database_ToGround[Database_Exist[Varb0001]])));
     Control_ZR(Database_Exist[Varb0001], Rounding(Database_Status[(Database_Exist[Varb0001] * 12) + 5] + (Database_Status[(Database_Exist[Varb0001] * 12) + 4] + Database_ToGround[Database_Exist[Varb0001]])));
     Control_VX(Database_Exist[Varb0001], 0);
     Control_VY(Database_Exist[Varb0001], 0);
     Control_VZ(Database_Exist[Varb0001], 0);
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
     int Varb1000 = elapsed_time % 70; int Varb1001 = (ElapsedTime + 35) % 70;
     if(Varb1000 == 0 || Varb1001 == 19){RandomSingleFont();} else {print("D");}
     if(Varb1000 == 2 || Varb1001 == 33){RandomSingleFont();} else {print("e");}
     if(Varb1000 == 1 || Varb1001 == 5){RandomSingleFont();} else {print("b");}
     if(Varb1000 == 3 || Varb1001 == 11){RandomSingleFont();} else {print("u");}
     if(Varb1000 == 4 || Varb1001 == 31){RandomSingleFont();} else {print("g");}
     if(Varb1000 == 7 || Varb1001 == 12){RandomSingleFont();} else {print(" ");}
     if(Varb1000 == 9 || Varb1001 == 13){RandomSingleFont();} else {print("b");}
     if(Varb1000 == 2 || Varb1001 == 24){RandomSingleFont();} else {print("y");}
     if(Varb1000 == 16 || Varb1001 == 27){RandomSingleFont();} else {print(" ");}
     if(Varb1000 == 34 || Varb1001 == 16){RandomSingleFont();} else {print("M");}
     if(Varb1000 == 6 || Varb1001 == 29){RandomSingleFont();} else {print("e");}
     if(Varb1000 == 28 || Varb1001 == 14){RandomSingleFont();} else {print("s");}
     if(Varb1000 == 25 || Varb1001 == 15){RandomSingleFont();} else {print("u");}
     if(Varb1000 == 22 || Varb1001 == 16){RandomSingleFont();} else {print("j");}
     if(Varb1000 == 19 || Varb1001 == 26){RandomSingleFont();} else {print("i");}
     if(Varb1000 == 30 || Varb1001 == 8){RandomSingleFont();} else {print("n");}
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
  bool SpecialityCheck(int Varb01, double Varb02){if(game.objects[Varb01].data.walking_frame_rate == Cnvrt_D_I(Varb02)) return true; if(game.objects[Varb01].data.running_frame_rate == Cnvrt_D_I(Varb02)) return true; if(game.objects[Varb01].data.running_speed == Varb02) return true; if(game.objects[Varb01].data.running_speedz == Varb02) return true; if(game.objects[Varb01].data.heavy_walking_speed == Varb02) return true; if(game.objects[Varb01].data.heavy_walking_speedz == Varb02) return true; if(game.objects[Varb01].data.heavy_running_speed == Varb02) return true; if(game.objects[Varb01].data.heavy_running_speedz == Varb02) return true; if(game.objects[Varb01].data.jump_height == Varb02) return true; if(game.objects[Varb01].data.jump_distance == Varb02) return true; if(game.objects[Varb01].data.jump_distancez == Varb02) return true; if(game.objects[Varb01].data.dash_distance == Varb02) return true; if(game.objects[Varb01].data.dash_distancez == Varb02) return true; if(game.objects[Varb01].data.rowing_height == Varb02) return true; if(game.objects[Varb01].data.rowing_distance == Varb02) return true; return false;}
  int RandomValue(int Varb01){return rand(Varb01 + 1);}
  int Iabs(int Varb01){if(Varb01 < 0) return (-Varb01); return Varb01;}
  float Fabs(float Varb01){if(Varb01 < 0) return (-Varb01); return Varb01;}
  double Dabs(double Varb01){if(Varb01 < 0) return (-Varb01); return Varb01;}
  double Rounding(double Varb01){return Cnvrt_Round(Varb01);}
  int StateEjection(int Varb01, int Varb02, int Varb03)
  {
   if(game.objects[Varb01].data.frames[Varb02].state > 999999) return (game.objects[Varb01].data.frames[Varb02].state - (game.objects[Varb01].data.frames[Varb02].state % (10 ** Varb03)));
   return (game.objects[Varb01].data.frames[Varb02].hit_ja - (game.objects[Varb01].data.frames[Varb02].hit_ja % (10 ** Varb03)));
  }
  int StateEjection2(int Varb01, int Varb02, int Varb03)
  {
   if(game.objects[Varb01].data.frames[Varb02].state > 999999) return (game.objects[Varb01].data.frames[Varb02].hit_ja - (game.objects[Varb01].data.frames[Varb02].hit_ja % (10 ** Varb03)));
   return (game.objects[Varb01].data.frames[Varb02].cpoint.daction - (game.objects[Varb01].data.frames[Varb02].cpoint.daction % (10 ** Varb03)));
  }
  void DamageCalculaion(int Varb01, int Varb02, int Varb03, int Varb04)
  {
   double Varb05 = 1; double Varb06; double Varb07;
   if(Varb04 != -1) Varb05 = Database_Status[(Varb04 * 12) + 10];
   switch(Varb03)
   {
    case 0:
     Varb06 = Cnvrt_I_D(Varb02) * Database_Status[(Varb01 * 12) + 11] * Varb05 * (DamageElement - (DamageElement % 1)) * 0.01;
     Varb07 = Cnvrt_I_D(Varb02) * Database_Status[(Varb01 * 12) + 11] * Varb05 * (DamageElement % 1) * 10;
     Database_Status[(Varb01 * 12)] -= Varb06; Database_Summary[(Varb01 * 10) + 4] += Varb06;
     Database_Status[(Varb01 * 12) + 1] -= Varb07; Database_Summary[(Varb01 * 10) + 5] += Varb07;
     if(Varb04 != -1){Database_Summary[(Varb04 * 10) + 2] += Varb06; Database_Summary[(Varb04 * 10) + 3] += Varb07;}
    break;
    default: break;
   }
  }
  bool InputSetUp(int Varb01, int Varb02, int Varb03)
  {
   Varb02 = Iabs(Varb02);
   switch(Varb03)
   {
    case 0:
     Control_Frame1(Varb01, Varb02);
    return true;
    case 1:
     Control_Frame1(Varb01, Varb02); if(game.objects[Varb01].facing){Control_Facing(Varb01, 0);} else {Control_Facing(Varb01, 1);}
    return true;
    case 7:
     Control_Frame1(Varb01, Varb02); Database_Cast[Varb01] -= (Database_Cast[Varb01] % 1000000000000) - (Database_Cast[Varb01] % 100000000000);
    return true;
    case 8: Control_Frame1(Varb01, Varb02); if(game.objects[Varb01].facing){Control_Facing(Varb01, 0);} else {Control_Facing(Varb01, 1);} Database_Cast[Varb01] -= (Database_Cast[Varb01] % 1000000000000) - (Database_Cast[Varb01] % 100000000000); return true;
    default: break;
   }
   return false;
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
  void YVelUp(int Varb01, double Varb02)
  {
   if(Varb02 > 0)
   {
    if(Database_Status[(Varb01 * 12) + 7] + Varb02 < Varb02)
    {Database_Status[(Varb01 * 12) + 7] += Varb02;} else
    {if(Database_Status[(Varb01 * 12) + 7] < Varb02) Database_Status[(Varb01 * 12) + 7] = Varb02;}
   }
   if(Varb02 < 0)
   {
    if(Database_Status[(Varb01 * 12) + 7] + Varb02 > Varb02)
    {Database_Status[(Varb01 * 12) + 7] += Varb02;} else
    {if(Database_Status[(Varb01 * 12) + 7] > Varb02) Database_Status[(Varb01 * 12) + 7] = Varb02;}
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

   uint64 Varb09 = Database_Cast[Varb08] % 100;
   uint64 Varb10 = (Database_Cast[Varb08] % 10000) - (Database_Cast[Varb08] % 100);
   uint64 Varb11 = (Database_Cast[Varb08] % 1000000) - (Database_Cast[Varb08] % 10000);
   uint64 Varb12 = (Database_Cast[Varb08] % 100000000) - (Database_Cast[Varb08] % 1000000);
   uint64 Varb13 = (Database_Cast[Varb08] % 1000000000) - (Database_Cast[Varb08] % 100000000);
   uint64 Varb14 = (Database_Cast[Varb08] % 100000000000) - (Database_Cast[Varb08] % 1000000000);
   uint64 Varb15 = (Database_Cast[Varb08] % 1000000000000) - (Database_Cast[Varb08] % 100000000000);
   uint64 Varb16 = (Database_Cast[Varb08] % 100000000000000) - (Database_Cast[Varb08] % 1000000000000);

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
     if(Varb11 == 420000){Varb18 = false; Varb09 = 11; Varb10 = CastAvail * 100; Varb11 = 1;}
     if(Varb11 == 520000){Varb18 = false; Varb09 = 7; Varb10 = CastAvail * 100; Varb11 = 1;}
     if(Varb11 == 620000){Varb18 = false; Varb09 = 9; Varb10 = CastAvail * 100; Varb11 = 1;}
     if(Varb11 == 720000){Varb18 = false; Varb09 = 5; Varb10 = CastAvail * 100; Varb11 = 1;}
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
     if(Varb11 == 420000){Varb18 = false; Varb09 = 10; Varb10 = CastAvail * 100; Varb11 = 1;}
     if(Varb11 == 520000){Varb18 = false; Varb09 = 6; Varb10 = CastAvail * 100; Varb11 = 1;}
     if(Varb11 == 620000){Varb18 = false; Varb09 = 8; Varb10 = CastAvail * 100; Varb11 = 1;}
     if(Varb11 == 720000){Varb18 = false; Varb09 = 4; Varb10 = CastAvail * 100; Varb11 = 1;}
     if(Varb11 == 320000){Varb18 = false; Varb09 = 12; Varb10 = CastAvail * 100; Varb11 = 1;}
     if(Varb18){Varb11 = 0;}
    }
   }

   if(!IncludeAJADDJAsACast && Varb11 != 1)
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

   if(Varb11 == 1) Varb11 = 0;
   if(Varb20){Varb09 = 0; Varb11 = 0; if(Varb13 > 200000000 || Database_Input[(Varb08 * 7) + 6] == Database_Input[(Varb08 * 7) + 4]) Varb13 = 0; Varb15 = 0;}
   Database_Cast[Varb08] = Varb09 + Varb10 + Varb11 + Varb12 + Varb13 + Varb14 + Varb15 + Varb16;
  }
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
 //-//
 //GameEnd
//-//

//AI-System
 void LF2ETAI(int Varb0001)
 {

 }
 //AIEnd
//-//