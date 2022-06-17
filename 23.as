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

//Configuration (The Value must be Positive!) (If there's no "Limit", then the "Limit" is their Data Type limit.)
 //In-game Settings (Only purposed for default setting, the values are carried in the data save.)
  bool FixedInput           = false  ;//
  bool FlawlessInput        = true   ;//
  int8 FlawlessInputSet     = 0      ;//0 ≡ P1 - P2 | P3 - P4; 1 ≡ P1 - P3 | P2 - P4; 2 ≡ P1 - P4 | P2 - P3;
  int RandomItemsFromTheSky = 0      ;//
  int BattleTimer           = 0      ;//
  int RoundBattle           = 0      ;//
 //-//

 //Windows Console API - Debug Console (Debug Ver. only.)
  bool ConsoleDebug = true   ;//Set ConsoleDebug into 'true' to activate the Debug Console that would helpful in modding the game.                                                                  {Default = false}
  int16 ConsoleRate = 0      ;//Sometimes the Console might causing some lag, so increasing the ConsoleRate would nice.                                                                 {Limit = 9} {Default = 0}
  int8 ConsoleDeCon = 0      ;//Default controller in controlling the Debug Menu. (0 = Non-default control)                                                                             {Limit = 8} {Default = 0}
  int ConsoleBuffer = 120    ;//The buffer size of the Console. ("Right Click" on the Console's title bar > Properties > Layout > Screen Buffer Size > Width) {Available value : 60; 80; 100; 120;} {Default = 100}
 //-//

 //Main Configuration
  int MaximumObjNum       = 400              ;//In case using an .exe were the Maximum Objects in the layer are modified. (Tho the ddraw.dll itself didn't support this, i guess.) {Default = 400}
  int MaximumFrame        = 400              ;//In case using an .exe were the Maximum Frame of an object are modified.                                              {Limit = 998} {Default = 400}
  double YSingularity     = 1000             ;//The singularity of Y-Axis.                                                                                        {Minimum = 1000} {Default = 1000}
  double PrespectiveRatio = 0.4              ;//Prespective of X-Axis to Z-Axis.                                                                                                   {Default = 0.4} {Modify might causing a bug.}

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
  uint64 InputRunWait         = 10           ;//Wait time for next Input to Run.  (0 = No wait.) {Limit = 99} {Default = 10}
  uint64 SingleCastAvail      = 6            ;//Available time for single Input.  (0 = Always.)  {Limit = 99} {Default = 6}
  uint64 CastAvail            = 0            ;//Available time for Cast.          (0 = Always.)  {Limit = 99} {Default = 0}
  uint64 RunAvail             = 6            ;//Available time for Run.           (0 = Always.)  {Limit = 99} {Default = 6}
  uint16 AJADDJOffside        = 3            ;//The TU Offside for AJ, AD, or DJ.                             {Default = 3}

  double LandingSpeedReduction = 0.3         ;//X-Vel and Z-Vel reduction when landing.                                                                                                                                  {Default = 0.3}
  double VelocityForHighFall   = 30          ;//The minimum velocity to activate High Fall Property.                                                                                                                     {Default = 40}
  double VelocityForFall       = 10          ;//The minimum velocity to activate Fall Property.                                                                                                                          {Default = 10}
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
  double MovementJumpRatioX       = 2        ;//            {Default = 2}
  double MovementJumpRatioY       = 0.1      ;//            {Default = 0.1}
  double MovementJumpYAmount      = 14       ;//Base value  {Default = 14}
  double MovementJumpFixedYAmount = 1        ;//Fixed value {Default = 1}
  double MovementRunRatio         = 2        ;//            {Default = 2}
  double MovementDashRatioX       = 3        ;//            {Default = 2.5}
  double MovementDashRatioY       = 0.07     ;//            {Default = 0.07}
  double MovementDashYAmount      = 9.8      ;//Base value  {Default = 9.8}
  double MovementDashFixedYAmount = 0.7      ;//Fixed value {Default = 0.7}
  double MovementHeavyRatio       = 0.8      ;//            {Default = 0.8}

  bool WeightCalculation            = true   ;//Activate the Weight Calculation?                                                        {Default = true}
  double GAttackerVelKnockbackRatio = 0      ;//The ratio of Velocity that Attacker will gain once the attack are successful on ground. {Default = 0}
  double MAttackerVelKnockbackRatio = 0.5    ;//The ratio of Velocity that Attacker will gain once the attack are successful in midair. {Default = 0.5}
  double GAttackedVelKnockbackRatio = 1      ;//The ratio of Velocity that Attacked will gain once the attack are successful on ground. {Default = 1}
  double MAttackedVelKnockbackRatio = 0.5    ;//The ratio of Velocity that Attacked will gain once the attack are successful in midair. {Default = 0.5}

  int8 Type0HitLag      = 2                  ;//Type0's hitlag.                                            {Default = 2}
  double Type0GXGravity = 1.35               ;//Type0's ground X-axis Gravity/Velocity reduction per 1 TU. {Default = 1.35}
  double Type0MXGravity = 0.1                ;//Type0's midair X-axis Gravity/Velocity reduction per 1 TU. {Default = 0.1}
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
  array < int > Database_TimeStop = MaximumObjNum;
  array < uint > Database_Output = MaximumObjNum;         // {(7)>++} (X)Attack; (X)Defend; (X)Jump; (X)Up; (X)Left; (X)Down; (X)Right;
  array < bool > Database_Bounce = MaximumObjNum;
  array < int8 > Database_LastVel = MaximumObjNum;
  array < int8 > Database_HitLag = MaximumObjNum;
  array < int16 > Database_Held = MaximumObjNum * 2;      // {>>} (+0)Held_1; (+1)Held_2;
  array < int16 > Database_Owner = MaximumObjNum;
  array < int16 > Database_Target = MaximumObjNum;
  array < int16 > Database_Exist = MaximumObjNum;
  array < int16 > Database_ExistCon = MaximumObjNum;
  array < int16 > Database_ExistT0 = MaximumObjNum;
  array < int16 > Database_ExistNT0 = MaximumObjNum;
  array < int16 > Database_ExistT0Com = MaximumObjNum;
  array < int16 > Database_Cooldown = MaximumObjNum * 10; // {>>} (+0)Slot_0; (+1)Slot_1; (+2)Slot_2; (+3)Slot_3; (+4)Slot_4; (+5)Slot_5; (+6)Slot_6; (+7)Slot_7; (+8)Slot_8; (+9)Slot_9;
  array < uint16 > Database_FirstFrame = MaximumObjNum;
  array < uint16 > Database_Counter = MaximumObjNum;      // {<++} (XXX)Wait; (X)Set; // {<++} (XXXX)NT0's_Counter;
  array < uint16 > Database_Input = MaximumObjNum * 7;    // {>>} (+0)Attack; (+1)Defend; (+2)Jump; (+3)Up; (+4)Left; (+5)Down; (+6)Right;
  array < uint64 > Database_Cast = MaximumObjNum;         // {<++} (XX)Cast; (XX)Cast_Availablelity; (XX)Cast_Sequence; (XX)Cast_Wait; (X)Run; (XX)Run_Avaiablelity; (X)Run_Sequence; (XX)Run_Wait;
  array < double > Database_Summary = MaximumObjNum * 10; // {>>} (+0)Hero_Kill; (+1)Minion_Kill; (+2)DMG_Dealt; (+3)DHP_DMG_Dealt; (+4)DMG_Taken; (+5)DHP_DMG_Taken; (+6)HP_Usage; (+7)MP/EP_Usage; (+8)HP_Regen; (+9)Item_Pick;
  array < double > Database_ToGround = MaximumObjNum;
  array < double > Database_Status = MaximumObjNum * 12;  // {>>} (+0)HP/Shield; (+1)DHP; (+2)MP/EP; (+3)X; (+4)Y; (+5)Z; (+6)Vel_X; (+7)Vel_Y; (+8)Vel_Z; (+9)Speed_Multipler; (+10)DMG_Multipler; (+11)DMGTaken_Multipler;
  bool InBattle;
  bool Randomize;
  uint64 RandHigh = 0;
  uint64 RandLow = 0;
  bool Database_Control01 = true;
  bool Database_Control02;
  int Database_Control03;
  int NumberOfExist;
  int NumberOfExistCon;
  int NumberOfExistNT0;
  int NumberOfExistT0;
  int NumberOfExistT0Com;
  int8 RandomSingleFontCount;
  int64 ElapsedTime;
  uint64 RandomizeSeed;
 //-//
 
 //Main System
  void id(){loadTarget(self.num); ego();}
  void ego(){if(Database_Control01){Database_Control01 = false; Controller(self.num);} else {UnderControl(self.num);}}
  void Controller(int Varb0001)
  {
   InBattle = false; int Varb0002;
   //New Battle Reset
    if(elapsed_time == 0)
    {
     RandomizeSeed = rand(9) + (rand(9) * 10) + (rand(9) * 100) + (rand(9) * 1000) + (rand(9) * 10000) + (rand(9) * 100000) + (rand(9) * 1000000) + (rand(9) * 10000000) + (rand(9) * 100000000) + (rand(9) * 1000000000) + (rand(9) * 10000000000) + (rand(9) * 100000000000) + (rand(9) * 1000000000000);
     Randomize = true; RandomSingleFontCount = 0; InBattle = true; Database_Control02 = true; ElapsedTime = -10;
     for(Varb0002 = 0; Varb0002 < MaximumObjNum; ++Varb0002)
     {
      if(loadTarget(Varb0002) != -1)
      {
       Database_Owner[Varb0002] = Varb0002;
       Database_Status[(Varb0002 * 12)] = game.objects[Varb0002].data.dash_height;
       Database_Status[(Varb0002 * 12) + 1] = game.objects[Varb0002].data.dash_height;
       if(SpecialityCheck(Varb0002, 1)){Database_Status[(Varb0002 * 12) + 2] = StartingEP;} else {Database_Status[(Varb0002 * 12) + 2] = StartingMP;}
       Database_Status[(Varb0002 * 12) + 3] = -999999;
       Database_Status[(Varb0002 * 12) + 4] = -999999;
       Database_Status[(Varb0002 * 12) + 5] = -999999;
       Database_Cast[Varb0002] = 0;
       Database_HitLag[Varb0002] = 0;
       Database_Output[Varb0002] = 0;
       Database_Target[Varb0002] = -1;
       Database_LastVel[Varb0002] = 0;
       Database_TimeStop[Varb0002] = 0;
       Database_Bounce[Varb0002] = false;
       Database_Held[(Varb0002 * 2) + 0] = -1;
       Database_Held[(Varb0002 * 2) + 1] = -1;
       Database_Input[(Varb0002 * 7) + 0] = 1;
       Database_Input[(Varb0002 * 7) + 1] = 1;
       Database_Input[(Varb0002 * 7) + 2] = 1;
       Database_Input[(Varb0002 * 7) + 3] = 1;
       Database_Input[(Varb0002 * 7) + 4] = 1;
       Database_Input[(Varb0002 * 7) + 5] = 1;
       Database_Input[(Varb0002 * 7) + 6] = 1;
       Database_Status[(Varb0002 * 12) + 6] = 0;
       Database_Status[(Varb0002 * 12) + 7] = 0;
       Database_Status[(Varb0002 * 12) + 8] = 0;
       Database_Summary[(Varb0002 * 10) + 0] = 0;
       Database_Summary[(Varb0002 * 10) + 1] = 0;
       Database_Summary[(Varb0002 * 10) + 2] = 0;
       Database_Summary[(Varb0002 * 10) + 3] = 0;
       Database_Summary[(Varb0002 * 10) + 4] = 0;
       Database_Summary[(Varb0002 * 10) + 5] = 0;
       Database_Summary[(Varb0002 * 10) + 6] = 0;
       Database_Summary[(Varb0002 * 10) + 7] = 0;
       Database_Summary[(Varb0002 * 10) + 8] = 0;
       Database_Summary[(Varb0002 * 10) + 9] = 0;
       Database_Cooldown[(Varb0002 * 10) + 0] = 0;
       Database_Cooldown[(Varb0002 * 10) + 1] = 0;
       Database_Cooldown[(Varb0002 * 10) + 2] = 0;
       Database_Cooldown[(Varb0002 * 10) + 3] = 0;
       Database_Cooldown[(Varb0002 * 10) + 4] = 0;
       Database_Cooldown[(Varb0002 * 10) + 5] = 0;
       Database_Cooldown[(Varb0002 * 10) + 6] = 0;
       Database_Cooldown[(Varb0002 * 10) + 7] = 0;
       Database_Cooldown[(Varb0002 * 10) + 8] = 0;
       Database_Cooldown[(Varb0002 * 10) + 9] = 0;
      }
     }
    }
   //-//

   //TU Declarament
    int Varb0004 = 0; ElapsedTime += 1; NumberOfExist = 0; NumberOfExistCon = 0; NumberOfExistT0 = 0; NumberOfExistT0Com = 0; NumberOfExistNT0 = 0;
    for(Varb0002 = 0; Varb0002 < 90; ++Varb0002)
    {
     if(game.files.get_backgrounds()[background].transparency[Varb0002] - (game.files.get_backgrounds()[background].transparency[Varb0002] % 100000000) == 800000000)
     {Varb0004 = Varb0002; break;}
    }
    for(Varb0002 = 0; Varb0002 < MaximumObjNum; ++Varb0002)
    {
     int Varb0003 = loadTarget(Varb0002);
     if(Varb0003 != -1)
     {
      if(Varb0003 < 7)
      {
       if(Database_Status[(Varb0002 * 12) + 3] == -999999)
       {
        if(Database_Status[(Varb0002 * 12) + 4] == -999999)
        if(Database_Status[(Varb0002 * 12) + 5] == -999999)
        {
         Database_Status[(Varb0002 * 12) + 3] = (((game.files.get_backgrounds()[background].layer_x[Varb0004] % 100000000) - (game.files.get_backgrounds()[background].layer_x[Varb0004] % 10000)) / 10000) + RandomValue(((game.files.get_backgrounds()[background].layer_y[Varb0004] % 100000000) - (game.files.get_backgrounds()[background].layer_y[Varb0004] % 10000)) / 10000);
         Database_Status[(Varb0002 * 12) + 4] = -((((game.files.get_backgrounds()[background].transparency[Varb0004] % 100000000) - (game.files.get_backgrounds()[background].transparency[Varb0004] % 10000)) / 10000) + RandomValue(game.files.get_backgrounds()[background].transparency[Varb0004] % 10000));
         Database_Status[(Varb0002 * 12) + 5] = (game.files.get_backgrounds()[background].layer_x[Varb0004] % 10000) + RandomValue(game.files.get_backgrounds()[background].layer_y[Varb0004] % 10000);
         if(Varb0003 != 0)
         {
          Database_Status[(Varb0002 * 12) + 4] -= 400;
         }
        }
       } else
       {
        if(Database_Status[(Varb0002 * 12) + 3] == 999999)
        if(Database_Status[(Varb0002 * 12) + 4] == 999999)
        if(Database_Status[(Varb0002 * 12) + 5] == 999999)
        {
         Database_Status[(Varb0002 * 12) + 3] = game.objects[Varb0002].x_real;
         Database_Status[(Varb0002 * 12) + 4] = game.objects[Varb0002].y_real;
         Database_Status[(Varb0002 * 12) + 5] = game.objects[Varb0002].z_real;
        }
       }
       Database_FirstFrame[Varb0002] = game.objects[Varb0002].frame1;
       Database_Status[(Varb0002 * 12) + 9] = 1;
       Database_Status[(Varb0002 * 12) + 10] = 1;
       Database_Status[(Varb0002 * 12) + 11] = 1;
       if(game.objects[Varb0002].data.id != 51){Database_Exist[NumberOfExist] = Varb0002; NumberOfExist += 1;} else {Database_ExistCon[NumberOfExistCon] = Varb0002; NumberOfExistCon += 1;}
       switch(Varb0003)
       {
        case 0:
         if(game.objects[Varb0002].data.id != 51){Database_ExistT0[NumberOfExistT0] = Varb0002; NumberOfExistT0 += 1;}
         if(Varb0002 > 9){Database_ExistT0Com[NumberOfExistT0Com] = Varb0002; NumberOfExistT0Com += 1;}
        break;
        default:
         Database_ExistNT0[NumberOfExistNT0] = Varb0002; NumberOfExistNT0 += 1;
        break;
       }
      }
     } else
     {
      if(Database_Owner[Varb0002] == -1) continue;
      Database_Owner[Varb0002] = -1;
      Database_Status[(Varb0002 * 12)] = 0;
      Database_Status[(Varb0002 * 12) + 1] = 0;
      Database_Status[(Varb0002 * 12) + 2] = 0;
      Database_Status[(Varb0002 * 12) + 3] = 999999;
      Database_Status[(Varb0002 * 12) + 4] = 999999;
      Database_Status[(Varb0002 * 12) + 5] = 999999;
      Database_Cast[Varb0002] = 0;
      Database_HitLag[Varb0002] = 0;
      Database_Output[Varb0002] = 0;
      Database_Target[Varb0002] = -1;
      Database_LastVel[Varb0002] = 0;
      Database_TimeStop[Varb0002] = 0;
      Database_Bounce[Varb0002] = false;
      Database_Held[(Varb0002 * 2) + 0] = -1;
      Database_Held[(Varb0002 * 2) + 1] = -1;
      Database_Input[(Varb0002 * 7) + 0] = 1;
      Database_Input[(Varb0002 * 7) + 1] = 1;
      Database_Input[(Varb0002 * 7) + 2] = 1;
      Database_Input[(Varb0002 * 7) + 3] = 1;
      Database_Input[(Varb0002 * 7) + 4] = 1;
      Database_Input[(Varb0002 * 7) + 5] = 1;
      Database_Input[(Varb0002 * 7) + 6] = 1;
      Database_Status[(Varb0002 * 12) + 6] = 0;
      Database_Status[(Varb0002 * 12) + 7] = 0;
      Database_Status[(Varb0002 * 12) + 8] = 0;
      Database_Summary[(Varb0002 * 10) + 0] = 0;
      Database_Summary[(Varb0002 * 10) + 1] = 0;
      Database_Summary[(Varb0002 * 10) + 2] = 0;
      Database_Summary[(Varb0002 * 10) + 3] = 0;
      Database_Summary[(Varb0002 * 10) + 4] = 0;
      Database_Summary[(Varb0002 * 10) + 5] = 0;
      Database_Summary[(Varb0002 * 10) + 6] = 0;
      Database_Summary[(Varb0002 * 10) + 7] = 0;
      Database_Summary[(Varb0002 * 10) + 8] = 0;
      Database_Summary[(Varb0002 * 10) + 9] = 0;
      Database_Cooldown[(Varb0002 * 10) + 0] = 0;
      Database_Cooldown[(Varb0002 * 10) + 1] = 0;
      Database_Cooldown[(Varb0002 * 10) + 2] = 0;
      Database_Cooldown[(Varb0002 * 10) + 3] = 0;
      Database_Cooldown[(Varb0002 * 10) + 4] = 0;
      Database_Cooldown[(Varb0002 * 10) + 5] = 0;
      Database_Cooldown[(Varb0002 * 10) + 6] = 0;
      Database_Cooldown[(Varb0002 * 10) + 7] = 0;
      Database_Cooldown[(Varb0002 * 10) + 8] = 0;
      Database_Cooldown[(Varb0002 * 10) + 9] = 0;
     }
    }
   //-//

   //InBattle Check
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
     print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
     int Varb1000 = elapsed_time % 60; int Varb1001 = ElapsedTime % 35;
     switch(ConsoleBuffer)
     {
      case 60: print("\n|============ "); break;
      case 80: print("\n|====================== "); break;
      case 100: print("\n|================================ "); break;
      case 120: print("\n|========================================== "); break;
      default: ConsoleBuffer = 100; print("\n|================================ "); break;
     }
     if(Varb1000 == 0 || Varb1001 == 0){RandomSingleFont();} else {print("D");}
     if(Varb1000 == 1 || Varb1001 == 1){RandomSingleFont();} else {print("e");}
     if(Varb1000 == 2 || Varb1001 == 2){RandomSingleFont();} else {print("b");}
     if(Varb1000 == 3 || Varb1001 == 3){RandomSingleFont();} else {print("u");}
     if(Varb1000 == 4 || Varb1001 == 4){RandomSingleFont();} else {print("g");}
     if(Varb1000 == 5 || Varb1001 == 5){RandomSingleFont();} else {print(" ");}
     if(Varb1000 == 6 || Varb1001 == 6){RandomSingleFont();} else {print("M");}
     if(Varb1000 == 7 || Varb1001 == 7){RandomSingleFont();} else {print("e");}
     if(Varb1000 == 8 || Varb1001 == 8){RandomSingleFont();} else {print("n");}
     if(Varb1000 == 9 || Varb1001 == 9){RandomSingleFont();} else {print("u");}
     if(Varb1000 == 10 || Varb1001 == 10){RandomSingleFont();} else {print(" ");}
     if(Varb1000 == 11 || Varb1001 == 11){RandomSingleFont();} else {print("-");}
     if(Varb1000 == 12 || Varb1001 == 12){RandomSingleFont();} else {print(" ");}
     if(Varb1000 == 13 || Varb1001 == 13){RandomSingleFont();} else {print("V");}
     if(Varb1000 == 14 || Varb1001 == 14){RandomSingleFont();} else {print("e");}
     if(Varb1000 == 15 || Varb1001 == 15){RandomSingleFont();} else {print("r");}
     if(Varb1000 == 16 || Varb1001 == 16){RandomSingleFont();} else {print("s");}
     if(Varb1000 == 17 || Varb1001 == 17){RandomSingleFont();} else {print("i");}
     if(Varb1000 == 18 || Varb1001 == 18){RandomSingleFont();} else {print("o");}
     if(Varb1000 == 19 || Varb1001 == 19){RandomSingleFont();} else {print("n");}
     if(Varb1000 == 20 || Varb1001 == 20){RandomSingleFont();} else {print(" ");}
     if(Varb1000 == 21 || Varb1001 == 21){RandomSingleFont();} else {print("0");}
     if(Varb1000 == 22 || Varb1001 == 22){RandomSingleFont();} else {print(".");}
     if(Varb1000 == 23 || Varb1001 == 23){RandomSingleFont();} else {print("8");}
     if(Varb1000 == 24 || Varb1001 == 24){RandomSingleFont();} else {print("1");}
     if(Varb1000 == 25 || Varb1001 == 25){RandomSingleFont();} else {print(".");}
     if(Varb1000 == 26 || Varb1001 == 26){RandomSingleFont();} else {print("2");}
     if(Varb1000 == 27 || Varb1001 == 27){RandomSingleFont();} else {print("2");}
     if(Varb1000 == 28 || Varb1001 == 28){RandomSingleFont();} else {print("0");}
     if(Varb1000 == 29 || Varb1001 == 29){RandomSingleFont();} else {print("5");}
     if(Varb1000 == 30 || Varb1001 == 30){RandomSingleFont();} else {print("1");}
     if(Varb1000 == 31 || Varb1001 == 31){RandomSingleFont();} else {print("2");}
     switch(ConsoleBuffer)
     {
      case 60: print(" ============|"); break;
      case 80: print(" ======================|"); break;
      case 100: print(" ================================|"); break;
      case 120: print(" ==========================================|"); break;
     }
     if(InBattle)
     {
     //Debug's Core
      print(" ");
      int Varb0923 = RandomValue(999999);
      if(Varb0923 < 10){print("00000");} else
      {if(Varb0923 < 100){print("0000");} else
      {if(Varb0923 < 1000){print("000");} else
      {if(Varb0923 < 10000){print("00");} else
      {if(Varb0923 < 100000){print("0");}}}}}
      print(Varb0923+" "+RandHigh+" "+RandLow+" "+RandomizeSeed);
      if(Varb0923 < 500000){RandLow += 1;} else {RandHigh += 1;}
     //-//
     } else
     {
      print(" Waitting for a battle..");
      switch(ConsoleBuffer)
      {
       case 60: print("\n|==================== "); break;
       case 80: print("\n|============================== "); break;
       case 100: print("\n|======================================== "); break;
       case 120: print("\n|================================================== "); break;
      }
      Varb1000 = elapsed_time % 70; Varb1001 = (ElapsedTime + 35) % 70;
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
     }
    } else {if(!InBattle) printLogClear();}
   //-//

   //Outputs
    for(Varb0002 = 0; Varb0002 < 10; ++Varb0002)
    {
     if((elapsed_time - 1) % 2 == 0 || FixedInput)
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
    for(Varb0002 = 0; Varb0002 < NumberOfExistT0Com; ++Varb0002) if(game.objects[Database_ExistT0Com[Varb0002]].data.id != 51) Database_Output[Database_ExistT0Com[Varb0002]] = LF2ETAI(Database_ExistT0Com[Varb0002]);
   //-//
   UnderControl(Varb0001);
  }
 //-//

 //Second System
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
   if(Database_Control01) GameSystem();
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
 //-//

 //Final System
  void GameSystem()
  {
   int Varb0001;
   //Finalizer
    for(Varb0001 = 0; Varb0001 < NumberOfExist; ++Varb0001)
    {
     Control_XR(Database_Exist[Varb0001], Rounding(Database_Status[(Database_Exist[Varb0001] * 12) + 3]));
     Control_YR(Database_Exist[Varb0001], Rounding(Database_Status[(Database_Exist[Varb0001] * 12) + 4] - YSingularity - (Database_Status[(Database_Exist[Varb0001] * 12) + 4] + Database_ToGround[Database_Exist[Varb0001]])));
     Control_ZR(Database_Exist[Varb0001], Rounding(Database_Status[(Database_Exist[Varb0001] * 12) + 5] + (Database_Status[(Database_Exist[Varb0001] * 12) + 4] + Database_ToGround[Database_Exist[Varb0001]])));
     Control_VX(Database_Exist[Varb0001], 0);
     Control_VY(Database_Exist[Varb0001], 0);
     Control_VZ(Database_Exist[Varb0001], 0);
     Control_PicNReserve(Database_Exist[Varb0001], 0, 0);
     if(Database_HitLag[Database_Exist[Varb0001]] < 0)
     {
      Control_Shake(Database_Exist[Varb0001], (Database_HitLag[Database_Exist[Varb0001]] % 2) - 1);
     } else
     { 
      if(Database_HitLag[Database_Exist[Varb0001]] > 0)
      {
       Control_Shake(Database_Exist[Varb0001], (Database_HitLag[Database_Exist[Varb0001]] % 2) + 1);
      } else
      {
       Control_Shake(Database_Exist[Varb0001], 0);
      }
     }
    }
   //-//

   //Debug Menu End
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
  void XVelUp(int Varb01, double Varb02){if(Varb02 > 0){if(Database_Status[(Varb01 * 12) + 6] + Varb02 < Varb02){Database_Status[(Varb01 * 12) + 6] += Varb02;} else {if(Database_Status[(Varb01 * 12) + 6] < Varb02) Database_Status[(Varb01 * 12) + 6] = Varb02;}} else {if(Varb02 < 0){if(Database_Status[(Varb01 * 12) + 6] + Varb02 > Varb02){Database_Status[(Varb01 * 12) + 6] += Varb02;} else {if(Database_Status[(Varb01 * 12) + 6] > Varb02) Database_Status[(Varb01 * 12) + 6] = Varb02;}}}}
  void YVelUp(int Varb01, double Varb02){if(Varb02 > 0){if(Database_Status[(Varb01 * 12) + 7] + Varb02 < Varb02){Database_Status[(Varb01 * 12) + 7] += Varb02;} else {if(Database_Status[(Varb01 * 12) + 7] < Varb02) Database_Status[(Varb01 * 12) + 7] = Varb02;}} else {if(Varb02 < 0){if(Database_Status[(Varb01 * 12) + 7] + Varb02 > Varb02){Database_Status[(Varb01 * 12) + 7] += Varb02;} else {if(Database_Status[(Varb01 * 12) + 7] > Varb02) Database_Status[(Varb01 * 12) + 7] = Varb02;}}}}
  void ZVelUp(int Varb01, double Varb02){if(Varb02 > 0){if(Database_Status[(Varb01 * 12) + 8] + Varb02 < Varb02){Database_Status[(Varb01 * 12) + 8] += Varb02;} else {if(Database_Status[(Varb01 * 12) + 8] < Varb02) Database_Status[(Varb01 * 12) + 8] = Varb02;}} else {if(Varb02 < 0){if(Database_Status[(Varb01 * 12) + 8] + Varb02 > Varb02){Database_Status[(Varb01 * 12) + 8] += Varb02;} else {if(Database_Status[(Varb01 * 12) + 8] > Varb02) Database_Status[(Varb01 * 12) + 8] = Varb02;}}}}
  void RandomSingleFont(){RandomSingleFontCount += 1; if(RandomSingleFontCount > 50) RandomSingleFontCount = 0; switch(RandomSingleFontCount){case 0: print("A"); break; case 1: print("&"); break; case 2: print("0"); break; case 3: print("^"); break; case 4: print("z"); break; case 5: print("H"); break; case 6: print("7"); break; case 7: print("#"); break; case 8: print("!"); break; case 9: print("b"); break; case 10: print("%"); break; case 11: print("@"); break; case 12: print("n"); break; case 13: print("("); break; case 14: print("E"); break; case 15: print("l"); break; case 16: print("q"); break; case 17: print(")"); break; case 18: print(" "); break; case 19: print("D"); break; case 20: print("e"); break; case 21: print("6"); break; case 22: print("0"); break; case 23: print("1"); break; case 24: print("0"); break; case 25: print("1"); break; case 26: print("*"); break; case 27: print("="); break; case 28: print("V"); break; case 29: print("/"); break; case 30: print("N"); break; case 31: print("i"); break; case 32: print("n"); break; case 33: print("\\"); break; case 34: print("G"); break; case 35: print("}"); break; case 36: print("b"); break; case 37: print("["); break; case 38: print("g"); break; case 39: print("o"); break; case 40: print(";"); break; case 41: print("<"); break; case 42: print("x"); break; case 43: print("'"); break; case 44: print("?"); break; case 45: print("?"); break; default: print(" "); break;}}
  void CharPrint(int8 Varb01){switch(Varb01){case 33: print("!"); break; case 34: print('"'); break; case 35: print("#"); break; case 36: print("$"); break; case 37: print("%"); break; case 38: print("&"); break; case 39: print("'"); break; case 40: print("("); break; case 41: print(")"); break; case 42: print("*"); break; case 43: print("+"); break; case 44: print(","); break; case 45: print("-"); break; case 46: print("."); break; case 47: print("/"); break; case 48: print("0"); break; case 49: print("1"); break; case 50: print("2"); break; case 51: print("3"); break; case 52: print("4"); break; case 53: print("5"); break; case 54: print("6"); break; case 55: print("7"); break; case 56: print("8"); break; case 57: print("9"); break; case 58: print(":"); break; case 59: print(';'); break; case 60: print("<"); break; case 61: print("="); break; case 62: print(">"); break; case 63: print("?"); break; case 64: print("@"); break; case 65: print("A"); break; case 66: print("B"); break; case 67: print("C"); break; case 68: print("D"); break; case 69: print("E"); break; case 70: print("F"); break; case 71: print("G"); break; case 72: print("H"); break; case 73: print("I"); break; case 74: print("J"); break; case 75: print("K"); break; case 76: print("L"); break; case 77: print("M"); break; case 78: print("N"); break; case 79: print("O"); break; case 80: print("P"); break; case 81: print("Q"); break; case 82: print("R"); break; case 83: print("S"); break; case 84: print("T"); break; case 85: print("U"); break; case 86: print("V"); break; case 87: print("W"); break; case 88: print("X"); break; case 89: print("Y"); break; case 90: print("Z"); break; case 91: print("["); break; case 92: print("\\"); break; case 93: print("]"); break; case 94: print("^"); break; case 95: print("_"); break; case 96: print("`"); break; case 97: print("a"); break; case 98: print("b"); break; case 99: print("c"); break; case 100: print("d"); break; case 101: print("e"); break; case 102: print("f"); break; case 103: print("g"); break; case 104: print("h"); break; case 105: print("i"); break; case 106: print("j"); break; case 107: print("k"); break; case 108: print("l"); break; case 109: print("m"); break; case 110: print("n"); break; case 111: print("o"); break; case 112: print("p"); break; case 113: print("q"); break; case 114: print("r"); break; case 115: print("s"); break; case 116: print("t"); break; case 117: print("u"); break; case 118: print("v"); break; case 119: print("w"); break; case 120: print("x"); break; case 121: print("y"); break; case 122: print("z"); break; case 123: print("{"); break; case 124: print("|"); break; case 125: print("}"); break; case 126: print("~"); break; default: print(" "); break;}}
  bool SpecialityCheck(int Varb01, double Varb02){if(game.objects[Varb01].data.walking_frame_rate == Cnvrt_D_I(Varb02)) return true; if(game.objects[Varb01].data.running_frame_rate == Cnvrt_D_I(Varb02)) return true; if(game.objects[Varb01].data.running_speed == Varb02) return true; if(game.objects[Varb01].data.running_speedz == Varb02) return true; if(game.objects[Varb01].data.heavy_walking_speed == Varb02) return true; if(game.objects[Varb01].data.heavy_walking_speedz == Varb02) return true; if(game.objects[Varb01].data.heavy_running_speed == Varb02) return true; if(game.objects[Varb01].data.heavy_running_speedz == Varb02) return true; if(game.objects[Varb01].data.jump_height == Varb02) return true; if(game.objects[Varb01].data.jump_distance == Varb02) return true; if(game.objects[Varb01].data.jump_distancez == Varb02) return true; if(game.objects[Varb01].data.dash_distance == Varb02) return true; if(game.objects[Varb01].data.dash_distancez == Varb02) return true; if(game.objects[Varb01].data.rowing_height == Varb02) return true; if(game.objects[Varb01].data.rowing_distance == Varb02) return true; return false;}
  bool InputSetUp(int Varb01, int Varb02, int Varb03)
  {
   if(game.objects[Varb01].data.frames[Varb02].exists)
   {
    switch((game.objects[Varb01].data.frames[Varb02].mp - (game.objects[Varb01].data.frames[Varb02].mp % 10000000)))
    {
     case 010000000:
      if(Database_Status[(Varb01 * 12) + 2] < Cnvrt_I_D((game.objects[Varb01].data.frames[Varb02].mp % 1000) + 1) / 100) return false;
      if(Database_Status[(Varb01 * 12)] < Cnvrt_I_D((game.objects[Varb01].data.frames[Varb02].mp % 10000000) - (game.objects[Varb01].data.frames[Varb02].mp % 1000)) / 100) return false;
     break;
     case 020000000:
      if(Database_Status[(Varb01 * 12)] < Cnvrt_I_D(game.objects[Varb01].data.frames[Varb02].mp % 1000000) / 10) return false;
     break;
     case 030000000:
      if(Database_Cooldown[(Varb01 * 10) + (((game.objects[Varb01].data.frames[Varb02].mp % 10000000) - (game.objects[Varb01].data.frames[Varb02].mp % 1000000)) / 1000000)] != 0) return false;
      if(Database_Status[(Varb01 * 12) + 2] < Cnvrt_I_D((game.objects[Varb01].data.frames[Varb02].mp % 1000) + 1) / 100) return false;
      if(Database_Status[(Varb01 * 12)] < Cnvrt_I_D((game.objects[Varb01].data.frames[Varb02].mp % 1000000) - (game.objects[Varb01].data.frames[Varb02].mp % 1000)) / 100) return false;
     break;
     default: break;
    }
    switch(Varb03)
    {
     case 1:
      if(game.objects[Varb01].facing){Control_Facing(Varb01, 0);} else {Control_Facing(Varb01, 1);}
     case 0:
      Control_Frame1(Varb01, Varb02);
     return true;
     case 3:
      if(game.objects[Varb01].facing){Control_Facing(Varb01, 0);} else {Control_Facing(Varb01, 1);}
     case 2:
      Control_Frame1(Varb01, Varb02);
      if(Database_Input[(Varb01 * 7) + 4] > 1 && Database_Input[(Varb01 * 7) + 6] == 1)
      {Control_Facing(Varb01, 1);} else
      {
       if(Database_Input[(Varb01 * 7) + 4] == 1 && Database_Input[(Varb01 * 7) + 6] > 1)
       Control_Facing(Varb01, 0);
      }
     return true;
     case 4:
      Varb02 += RandomValue(1) * 2;
      if(Database_Held[(Varb01 * 2)] != -1) Varb02 += 1;
      if(Database_Input[(Varb01 * 7) + 4] > 1 && Database_Input[(Varb01 * 7) + 6] == 1)
      {Control_Facing(Varb01, 1);} else
      {
       if(Database_Input[(Varb01 * 7) + 4] == 1 && Database_Input[(Varb01 * 7) + 6] > 1)
       Control_Facing(Varb01, 0);
      }
      Control_Frame1(Varb01, Varb02);
     return true;
     case 7:
      Control_Frame1(Varb01, Varb02); Database_Cast[Varb01] -= (Database_Cast[Varb01] % 1000000000000) - (Database_Cast[Varb01] % 100000000000);
     return true;
     case 8: 
      Control_Frame1(Varb01, Varb02); if(game.objects[Varb01].facing){Control_Facing(Varb01, 0);} else {Control_Facing(Varb01, 1);} Database_Cast[Varb01] -= (Database_Cast[Varb01] % 1000000000000) - (Database_Cast[Varb01] % 100000000000);
     return true;
     case 10:
      if(game.objects[Varb01].facing){Database_LastVel[Varb01] = 7;} else {Database_LastVel[Varb01] = 3;}
      Control_Frame1(Varb01, Varb02);
     return true;
     case 11:
      switch(Database_LastVel[Varb01])
      {
       case 2:
       case 3:
       case 4:
       case 6:
       case 7:
       case 8:
        Control_Frame1(Varb01, Varb02);
       return true;
       default:
        if((Database_Input[(Varb01 * 7) + 4] > 1 && Database_Input[(Varb01 * 7) + 6] == 1) || (Database_Input[(Varb01 * 7) + 4] == 1 && Database_Input[(Varb01 * 7) + 6] > 1)){Control_Frame1(Varb01, Varb02); return true;}
       return false;
      }
     break;
     default: break;
    }
    return false;
   } else {return false;}
  }
  int RandomValue(int Varb01)
  {
   int Varb02 = 0;
   if(Varb01 > 9) Var02 += Randing(0);
  }
  int Randing(int Varb01)
  {
   switch(Varb01)
   {
    case 0: return (int(((RandomizeSeed % (10 ** ((elapsed_time % 13) + 1))) - (RandomizeSeed % (10 ** (elapsed_time % 13)))) / (10 ** (elapsed_time % 13))));
    case 1: return (int(((RandomizeSeed % (10 ** ((elapsed_time % 13) + 1))) - (RandomizeSeed % (10 ** (elapsed_time % 13)))) / (10 ** (elapsed_time % 13))) * 10);
    case 2: return (int(((RandomizeSeed % (10 ** ((elapsed_time % 13) + 1))) - (RandomizeSeed % (10 ** (elapsed_time % 13)))) / (10 ** (elapsed_time % 13))) * 100);
    case 3: return (int(((RandomizeSeed % (10 ** ((elapsed_time % 13) + 1))) - (RandomizeSeed % (10 ** (elapsed_time % 13)))) / (10 ** (elapsed_time % 13))) * 1000);
    case 4: return (int(((RandomizeSeed % (10 ** ((elapsed_time % 13) + 1))) - (RandomizeSeed % (10 ** (elapsed_time % 13)))) / (10 ** (elapsed_time % 13))) * 10000);
    case 5: return (int(((RandomizeSeed % (10 ** ((elapsed_time % 13) + 1))) - (RandomizeSeed % (10 ** (elapsed_time % 13)))) / (10 ** (elapsed_time % 13))) * 100000);
    case 6: return (int(((RandomizeSeed % (10 ** ((elapsed_time % 13) + 1))) - (RandomizeSeed % (10 ** (elapsed_time % 13)))) / (10 ** (elapsed_time % 13))) * 1000000);
    case 7: return (int(((RandomizeSeed % (10 ** ((elapsed_time % 13) + 1))) - (RandomizeSeed % (10 ** (elapsed_time % 13)))) / (10 ** (elapsed_time % 13))) * 10000000);
    case 8: return (int(((RandomizeSeed % (10 ** ((elapsed_time % 13) + 1))) - (RandomizeSeed % (10 ** (elapsed_time % 13)))) / (10 ** (elapsed_time % 13))) * 100000000);
    default: return 0;
   }
  }
  int StateEjection(int Varb01, int Varb02, int Varb03){if(game.objects[Varb01].data.frames[Varb02].state > 999999) return (game.objects[Varb01].data.frames[Varb02].state - (game.objects[Varb01].data.frames[Varb02].state % (10 ** Varb03))); return (game.objects[Varb01].data.frames[Varb02].hit_ja - (game.objects[Varb01].data.frames[Varb02].hit_ja % (10 ** Varb03)));}
  int StateEjection2(int Varb01, int Varb02, int Varb03){if(game.objects[Varb01].data.frames[Varb02].state > 999999) return (game.objects[Varb01].data.frames[Varb02].hit_ja - (game.objects[Varb01].data.frames[Varb02].hit_ja % (10 ** Varb03))); return (game.objects[Varb01].data.frames[Varb02].cpoint.daction - (game.objects[Varb01].data.frames[Varb02].cpoint.daction % (10 ** Varb03)));}
  int Iabs(int Varb01){if(Varb01 < 0) return (-Varb01); return Varb01;}
  float Fabs(float Varb01){if(Varb01 < 0) return (-Varb01); return Varb01;}
  double Dabs(double Varb01){if(Varb01 < 0) return (-Varb01); return Varb01;}
  double Rounding(double Varb01){return Cnvrt_Round(Varb01);}
 //-//

 //GameEnd
//-//

//AI-System
 uint LF2ETAI(int Varb0001)
 {
  if(!InBattle) return 0;
  bool Varb0002 = false; bool Varb0003 = false; bool Varb0004 = false; bool Varb0005 = false; bool Varb0006 = false; bool Varb0007 = false; bool Varb0008 = false;
  ///////////////////////
  
  if(FlawlessInput)
  {
   int Varb0009 = 0;
  }

  ///////////////////////
  uint Varb0009 = 0; if(Varb0002) Varb0009 += 1000000; if(Varb0003) Varb0009 += 100000; if(Varb0004) Varb0009 += 10000; if(Varb0005) Varb0009 += 1000; if(Varb0006) Varb0009 += 100; if(Varb0007) Varb0009 += 10; if(Varb0008) Varb0009 += 1;
  return Varb0009;
 }
 //AIEnd
//-//