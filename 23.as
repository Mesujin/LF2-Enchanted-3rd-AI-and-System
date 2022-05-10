 ////////////////////////////////////////////////////////////////////////////////////////////////
 // Universal AI for LF2ET, by Mesujin.                                                        //
 // Ver. 0.81.220401                                                                           //
 //                                                                                            //
 // Do not modify if you don't know what you're gonna modify!                                  //
 // If you know what you're gonna modify, then have fun modifiying. ;3                         //
 // You did better to turn off the "Word Wrap" setting to get better look to the code. XD      //
 // ..normally, "Alt + Z" is the default shortcut for "Word Wrap" (if you don't know where is) //
 //                                                                                            //
 // Credit: ddraw.dll by Lord Silva(Boop), Som1Lse, and everyone who take an effort in it.     //
 // Repository: https://github.com/Mesujin/LF2-Enchanted-3rd-AI-and-System                     //
 // The right of this AI belong to Mesujin :P this's mine :<                                   //
 ////////////////////////////////////////////////////////////////////////////////////////////////

//AI Configuration
 //In-game Settings
  int RandomItemsFromTheSky;
  int BattleTimer;
  int RoundBattle;
  int ConsoleDebug;
 //-//

 //System
  int MaximumObjNum = 400                    ;//In case using an .exe were the Maximum Objects in the layer are modified. (Tho the ddraw.dll itself didn't support this i guess.)
  int MaximumFrame  = 400                    ;//In case using an .exe were the Maximum Frame of an object are modified. (Limit = 998; Either My code nor the game didn't support for more than 998 Max Frame.)

  double PrespectiveRatio = 0.4              ;//Modifing this one isn't recomended tbh, this one has a deal with alot things. {Default = 0.4}
  int YAxisSingularity    = 1000             ;//                                           {ddraw.dll modifiyng are Required} {Default = 1000}

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

  bool WeaponPhysic                = true    ;//Activate a Physic calculation for Weapons/Items when landing?    {Default = true}
  double MilkTotalRestorationRatio = 0.35    ;//Amount of Milk's that could heals, scaling to character's MaxHP. {Default = 0.35}
  double MilkRestorationPer1TU     = 0.001   ;//Amount of Milk's regeneration each TU.                           {Default = 0.001}
  double TeaTotalRestorationRatio  = 0.8     ;//Amount of Tea's that could heals, scaling to character's MaxHP.  {Default = 0.8}
  double TeaRestorationPer1TU      = 0.002   ;//Amount of Tea's regeneration each TU.                            {Default = 0.002}

  double DamageElement      = 100.040        ;//Percentage to the HP and DHP. (XXX.YYY : XXX = HP, YYY = DHP) {Default = 100.040}
  double TrueDamageElement  = 100.100        ;//Percentage to the HP and DHP. (XXX.YYY : XXX = HP, YYY = DHP) {Default = 100.100} 
  double BurstDamageElement = 100.000        ;//Percentage to the HP and DHP. (XXX.YYY : XXX = HP, YYY = DHP) {Default = 100.000} 
  double InnerDamageElement = 000.100        ;//Percentage to the HP and DHP. (XXX.YYY : XXX = HP, YYY = DHP) {Default = 000.100}
  
  bool IncludeAJADDJAsACast = false          ;//Include AJ, AD, and DJ as a Cast?                              {Default = false}
  int InputCastWait         = 0              ;//Wait time for next Input to Cast. (0 = No wait.) (Limit = 999) {Default = 0}
  int InputRunWait          = 10             ;//Wait time for next Input to Run. (0 = No wait.) (Limit = 999)  {Default = 10}

  double HighFallDamage        = 50.0        ;//The damage taken by victim when High Fall property activated.   (XXX.Y : XXX = Amount, Y = Damage Type {0 = Damage; 1 = True Damage; 2 = Burst Damage; 3 = Inner Damage;}) {Default = 50.0}
  double MediumFallDamage      = 15.0        ;//The damage taken by victim when Medium Fall property activated. (XXX.Y : XXX = Amount, Y = Damage Type {0 = Damage; 1 = True Damage; 2 = Burst Damage; 3 = Inner Damage;}) {Default = 15.0}
  double VelocityForHighFall   = 40          ;//The minimum velocity to activate High Fall Property.                                                                                                                       {Default = 40}
  double VelocityForMediumFall = 10          ;//The minimum velocity to activate Medium Fall Property.                                                                                                                     {Default = 10}
  double BounceDamage          = 30.0        ;//The damage taken by victim when Bounce property activated.      (XXX.Y : XXX = Amount, Y = Damage Type {0 = Damage; 1 = True Damage; 2 = Burst Damage; 3 = Inner Damage;}) {Default = 30.0}
  double BounceVelRatio        = 0.3         ;//Reflected velocity by Bounce effect.                                                                                                                                       {Default = 0.3}

  double StageDifficultyModifier = 0.25      ;//HP, DHP, and Damage modifier by difficulty. (Easy = 1 - 2X)(Normal = 1 - X)(Difficult/Crazy = 1) {Default = 0.25}
  double StageEnemyDamageRatio   = 0.8       ;//Enemy's damage ratio in the stage mode.                                                          {Default = 0.8}
  double StageEnemyRegenRatio    = 0.8       ;//Enemy's natural regen ratio in the stage mode.                                                   {Default = 0.8}

  double MovementBaseRatio   = 0.01          ;// {Default = 0.01}
  double MovementWalkRatio   = 1             ;// {Default = 1}
  double MovementJumpRatioX  = 1.5           ;// {Default = 1.5}
  double MovementJumpRatioY  = 0.1           ;// {Default = 0.1}
  double MovementJumpYAmount = 16            ;// {Default = 16}
  double MovementRunRatio    = 2             ;// {Default = 2}
  double MovementDashRatioX  = 2.5           ;// {Default = 2.5}
  double MovementDashRatioY  = 0.05          ;// {Default = 0.05}
  double MovementDashYAmount = 10            ;// {Default = 10}
  double MovementHeavyRatio  = 0.8           ;// {Default = 0.8}

  bool WeightCalculation            = true   ;//Activate the Weight Calculation?                                                        {Default = true}
  double GAttackerVelKnockbackRatio = 0      ;//The ratio of Velocity that Attacker will gain once the attack are successful on ground. {Default = 0}
  double MAttackerVelKnockbackRatio = 0.5    ;//The ratio of Velocity that Attacker will gain once the attack are successful in midair. {Default = 0.5}
  double GAttackedVelKnockbackRatio = 1      ;//The ratio of Velocity that Attacked will gain once the attack are successful on ground. {Default = 1}
  double MAttackedVelKnockbackRatio = 0.5    ;//The ratio of Velocity that Attacked will gain once the attack are successful in midair. {Default = 0.5}

  double Type0GXGravity = 1.7                ;//Type0's ground X-axis Gravity/Velocity reduction per 1 TU. {Default = 1.7}
  double Type0GYGravity = 0                  ;//Type0's ground Y-axis Gravity/Velocity reduction per 1 TU. {Default = 0}
  double Type0MXGravity = 0.2                ;//Type0's midair X-axis Gravity/Velocity reduction per 1 TU. {Default = 0.2}
  double Type0MYGravity = 1.85               ;//Type0's midair Y-axis Gravity/Velocity reduction per 1 TU. {Default = 1.7}

  double Type1GXGravity = 1.7;
  double Type1GYGravity = 0;
  double Type1MXGravity = 0.2;
  double Type1MYGravity = 1.85;

  double Type2GXGravity = 1.7;
  double Type2GYGravity = 0;
  double Type2MXGravity = 0.2;
  double Type2MYGravity = 1.85;

  double Type3GXGravity = 0                  ;//Type3's ground X-axis Gravity/Velocity reduction per 1 TU. {Default = 0} (Modifiying this one might causing a bug..)
  double Type3GYGravity = 0                  ;//Type3's ground Y-axis Gravity/Velocity reduction per 1 TU. {Default = 0} (Modifiying this one might causing a bug..)
  double Type3MXGravity = 0                  ;//Type3's midair X-axis Gravity/Velocity reduction per 1 TU. {Default = 0} (Modifiying this one might causing a bug..)
  double Type3MYGravity = 0                  ;//Type3's midair Y-axis Gravity/Velocity reduction per 1 TU. {Default = 0} (Modifiying this one might causing a bug..)

  double Type4GXGravity = 1.7;
  double Type4GYGravity = 0;
  double Type4MXGravity = 0.2;
  double Type4MYGravity = 1.85;

  double Type5GXGravity = 1.7;
  double Type5GYGravity = 0;
  double Type5MXGravity = 0.2;
  double Type5MYGravity = 1.85;
 //-//
//-//

//Main System
 //Variables
  array < int > Database_Control = 3;
  array < int > Database_CameraZ = 3;
  array < int > Database_Exist = MaximumObjNum;
  array < int > Database_ExistCon = MaximumObjNum;
  array < int > Database_ExistT0 = MaximumObjNum;
  array < int > Database_ExistT0Com = MaximumObjNum;
  array < int > Database_Output = MaximumObjNum;
  array < int > Database_Input = MaximumObjNum * 7;
  array < int > Database_Cast = MaximumObjNum;
  array < int > Database_Dash = MaximumObjNum;
  array < int > Database_TimeStop = MaximumObjNum;
  array < int > Database_OpoFrame = MaximumObjNum;
  array < double > Database_ToGround = MaximumObjNum;
  array < double > Database_Status = MaximumObjNum * 12; //HP/Shield; DHP; MP/EP; X; Y; Z; Vel_X; Vel_Y; Vel_Z; Speed_Multipler; DMG_Multipler; DMGTaken_Multipler;
  int NumberOfExist;
  int NumberOfExistCon;
  int NumberOfExistT0;
  int NumberOfExistT0Com;
  int ElapsedTime;
  int EXRatio;
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
   if(ConsoleDebug > 0){clr();} else {if(ConsoleDebug < 0) ConsoleDebug -= 1;}

   if(elapsed_time == 1)
   {
    InBattle = true;
   }

   NumberOfExist = 0; NumberOfExistCon = 0; NumberOfExistT0 = 0; NumberOfExistT0Com = 0;
   for(int Varb0003 = 0; Varb0003 < MaximumObjNum; ++Varb0003)
   {
    switch(loadTarget(Varb0003))
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
      Database_OpoFrame[Varb0003] = game.objects[Varb0003].frame1;
      if(game.objects[Varb0003].frame1 == 399) Control_Frame1(Varb0003, 0);
     break;
     case 1:
      Database_Exist[NumberOfExist] = Varb0003; NumberOfExist += 1;
      Database_OpoFrame[Varb0003] = game.objects[Varb0003].frame1;
      if(game.objects[Varb0003].frame1 == 399) Control_Frame1(Varb0003, 0);
     break;
     case 2:
      Database_Exist[NumberOfExist] = Varb0003; NumberOfExist += 1;
      Database_OpoFrame[Varb0003] = game.objects[Varb0003].frame1;
      if(game.objects[Varb0003].frame1 == 399) Control_Frame1(Varb0003, 0);
     break;
     case 3:
      Database_Exist[NumberOfExist] = Varb0003; NumberOfExist += 1;
      Database_OpoFrame[Varb0003] = game.objects[Varb0003].frame1;
      if(game.objects[Varb0003].frame1 == 399) Control_Frame1(Varb0003, 0);
     break;
     case 4:
      Database_Exist[NumberOfExist] = Varb0003; NumberOfExist += 1;
      Database_OpoFrame[Varb0003] = game.objects[Varb0003].frame1;
      if(game.objects[Varb0003].frame1 == 399) Control_Frame1(Varb0003, 0);
     break;
     case 5:
      Database_Exist[NumberOfExist] = Varb0003; NumberOfExist += 1;
      Database_OpoFrame[Varb0003] = game.objects[Varb0003].frame1;
      if(game.objects[Varb0003].frame1 == 399) Control_Frame1(Varb0003, 0);
     break;
     case 6:
      Database_Exist[NumberOfExist] = Varb0003; NumberOfExist += 1;
      Database_OpoFrame[Varb0003] = game.objects[Varb0003].frame1;
      if(game.objects[Varb0003].frame1 == 399) Control_Frame1(Varb0003, 0);
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

   if(InBattle) for(int Varb0002 = 0; Varb0002 < 10; ++Varb0002)
   {
    Database_Output[Varb0002] = 0;
    if(game.objects[Varb0002].A) Database_Output[Varb0002] += 1000000;
    if(game.objects[Varb0002].D) Database_Output[Varb0002] += 100000;
    if(game.objects[Varb0002].J) Database_Output[Varb0002] += 10000;
    if(game.objects[Varb0002].up) Database_Output[Varb0002] += 1000;
    if(game.objects[Varb0002].left) Database_Output[Varb0002] += 100;
    if(game.objects[Varb0002].down) Database_Output[Varb0002] += 10;
    if(game.objects[Varb0002].right) Database_Output[Varb0002] += 1;
    UnderControl(Varb0002);
   }
   UnderControl(Varb0001);
  }
 //-//

 //Input Declaration
  void UnderControl(int Varb0005)
  {
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
   print(InBattle+"\n");

   for(int Varb0006 = 0; Varb0006 < NumberOfExist; ++Varb0006)
   {
    if(game.objects[Database_Exist[Varb0006]].frame1 == 398)
      {
       Database_Status[(Database_Exist[Varb0006] * 12) + 3] = -9999999;
       Database_Status[(Database_Exist[Varb0006] * 12) + 4] = 9999999;
       Database_Status[(Database_Exist[Varb0006] * 12) + 5] = -9999999;
      } else
      {
       if(Database_Status[(Database_Exist[Varb0006] * 12) + 3] == -9999999 && Database_Status[(Database_Exist[Varb0006] * 12) + 4] == 9999999 && Database_Status[(Database_Exist[Varb0006] * 12) + 5] == -9999999)
       {
        if(StatusEjection(Database_Exist[Varb0006], game.objects[Database_Exist[Varb0006]].frame1, 3) == 0999)
        {
//////////////////////
        } else
        {
         Database_Status[(Database_Exist[Varb0006] * 12) + 3] = game.objects[Database_Exist[Varb0006]].x_real;
         Database_Status[(Database_Exist[Varb0006] * 12) + 4] = game.objects[Database_Exist[Varb0006]].y_real;
         Database_Status[(Database_Exist[Varb0006] * 12) + 5] = game.objects[Database_Exist[Varb0006]].z_real;
        }
       }
      }
   }
  }
 //-//

 //Functions
  void Input(bool Varb01, bool Varb02, bool Varb03, bool Varb04, bool Varb05, bool Varb06, bool Varb07, int Varb08)
  {
   if(Varb01){Database_Input[(Varb08 * 7)] += 1;} else {Database_Input[(Varb08 * 7)] = 1;}
   if(Varb02){Database_Input[(Varb08 * 7) + 1] += 1;} else {Database_Input[(Varb08 * 7) + 1] = 1;}
   if(Varb03){Database_Input[(Varb08 * 7) + 2] += 1;} else {Database_Input[(Varb08 * 7) + 2] = 1;}
   if(Varb04){Database_Input[(Varb08 * 7) + 3] += 1;} else {Database_Input[(Varb08 * 7) + 3] = 1;}
   if(Varb05){Database_Input[(Varb08 * 7) + 4] += 1;} else {Database_Input[(Varb08 * 7) + 4] = 1;}
   if(Varb06){Database_Input[(Varb08 * 7) + 5] += 1;} else {Database_Input[(Varb08 * 7) + 5] = 1;}
   if(Varb07){Database_Input[(Varb08 * 7) + 6] += 1;} else {Database_Input[(Varb08 * 7) + 6] = 1;}

   if(Database_Input[(Varb08 * 7)] == 2 || Database_Input[(Varb08 * 7) + 1] == 2 || Database_Input[(Varb08 * 7) + 2] == 2 || Database_Input[(Varb08 * 7) + 3] == 2 || Database_Input[(Varb08 * 7) + 4] == 2 || Database_Input[(Varb08 * 7) + 5] == 2 || Database_Input[(Varb08 * 7) + 6] == 2) Database_Cast[Varb08] = Database_Cast[Varb08] - (Database_Cast[Varb08] % 100);

   if(Database_Input[(Varb08 * 7) + 1] == 2) Database_Cast[Varb08] = 100200;
   if(Database_Cast[Varb08] == 100200)
   {
    
   }
   
   if(Database_Cast[Varb08] >= 1000000) Database_Cast[Varb08] += 1000000;
   if(Database_Cast[Varb08] > 99899999) Database_Cast[Varb08] = Database_Cast[Varb08] % 100;
   if(Database_Cast[Varb08] < 999999) if(InputCastWait != 0) Database_Cast[Varb08] += 999 - InputCastWait;
  }
  void InputAttack(int Varb01){if(Iabs(Database_Input[(Varb01 * 7)]) > 1){if(Database_Input[(Varb01 * 7)] < 0){Database_Input[(Varb01 * 7)] -= 1;} else {Database_Input[(Varb01 * 7)] += 1;}} else {Database_Input[(Varb01 * 7)] = -2;}}
  void InputDefend(int Varb01){if(Iabs(Database_Input[(Varb01 * 7) + 1]) > 1){if(Database_Input[(Varb01 * 7) + 1] < 0){Database_Input[(Varb01 * 7) + 1] -= 1;} else {Database_Input[(Varb01 * 7) + 1] += 1;}} else {Database_Input[(Varb01 * 7) + 1] = -2;}}
  void InputJump(int Varb01){if(Iabs(Database_Input[(Varb01 * 7) + 2]) > 1){if(Database_Input[(Varb01 * 7) + 2] < 0){Database_Input[(Varb01 * 7) + 2] -= 1;} else {Database_Input[(Varb01 * 7) + 2] += 1;}} else {Database_Input[(Varb01 * 7) + 2] = -2;}}
  void InputUp(int Varb01){if(Iabs(Database_Input[(Varb01 * 7) + 3]) > 1){if(Database_Input[(Varb01 * 7) + 3] < 0){Database_Input[(Varb01 * 7) + 3] -= 1;} else {Database_Input[(Varb01 * 7) + 3] += 1;}} else {Database_Input[(Varb01 * 7) + 3] = -2;}}
  void InputLeft(int Varb01){if(Iabs(Database_Input[(Varb01 * 7) + 4]) > 1){if(Database_Input[(Varb01 * 7) + 4] < 0){Database_Input[(Varb01 * 7) + 4] -= 1;} else {Database_Input[(Varb01 * 7) + 4] += 1;}} else {Database_Input[(Varb01 * 7) + 4] = -2;}}
  void InputDown(int Varb01){if(Iabs(Database_Input[(Varb01 * 7) + 5]) > 1){if(Database_Input[(Varb01 * 7) + 5] < 0){Database_Input[(Varb01 * 7) + 5] -= 1;} else {Database_Input[(Varb01 * 7) + 5] += 1;}} else {Database_Input[(Varb01 * 7) + 5] = -2;}}
  void InputRight(int Varb01){if(Iabs(Database_Input[(Varb01 * 7) + 6]) > 1){if(Database_Input[(Varb01 * 7) + 6] < 0){Database_Input[(Varb01 * 7) + 6] -= 1;} else {Database_Input[(Varb01 * 7) + 6] += 1;}} else {Database_Input[(Varb01 * 7) + 6] = -2;}}
  int StatusEjection(int Varb01, int Varb02, int Varb03)
  {
   return ((game.objects[Varb01].data.frames[Varb02].state % 10000000) - (game.objects[Varb01].data.frames[Varb02].state % (10 ^ Varb03)));
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
  int Fabs(float Varb01){if(Varb01 < 0) return (-Varb01); return Varb01;}
  int Dabs(double Varb01){if(Varb01 < 0) return (-Varb01); return Varb01;}
 //-// //MainEnd
//-//