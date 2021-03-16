/* Copyright Alexander 'm8f' Kromm (mmaulwurff@gmail.com) 2021
 *
 * This file is a part of Mod Compatibility Checklist.
 *
 * Mod Compatibility Checklist is free software: you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or (at your
 * option) any later version.
 *
 * Mod Compatibility Checklist is distributed in the hope that it will be
 * useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General
 * Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along with
 * Mod Compatibility Checklist.  If not, see <https://www.gnu.org/licenses/>.
 */

class mcc_Logger : EventHandler
{

  override void OnRegister()
  {
    SetOrder(int.max);
  }

  override void WorldLoaded(WorldEvent event)
  {
    checkOtherEventHandlers();

    initFunction("WorldLoaded");
    checkPlayerIsNull();
    checkPlayerWeaponIsNull();
    checkPlayerHasNoWeapons();
    // checkWorldEventThingIsNull(event); // Thing is NULL here, don't check.
  }

  override void WorldUnloaded(WorldEvent event)
  {
    initFunction("WorldUnloaded");
    checkPlayerIsNull();
    checkPlayerWeaponIsNull();
    checkPlayerHasNoWeapons();
    // checkWorldEventThingIsNull(event); // Thing is NULL here, don't check.
  }

  override void WorldThingSpawned(WorldEvent event)
  {
    initFunction("WorldThingSpawned");
    checkPlayerIsNull();
    checkPlayerWeaponIsNull();
    checkPlayerHasNoWeapons();
    checkWorldEventThingIsNull(event);
    checkWorldEventThingTag(event);
  }

  override void WorldThingDied(WorldEvent event)
  {
    initFunction("WorldThingDied");
    checkPlayerIsNull();
    checkPlayerWeaponIsNull();
    checkPlayerHasNoWeapons();
    checkWorldEventThingIsNull(event);
  }

  override void WorldThingGround(WorldEvent event)
  {
    initFunction("WorldThingGround");
    checkPlayerIsNull();
    checkPlayerWeaponIsNull();
    checkPlayerHasNoWeapons();
    checkWorldEventThingIsNull(event);
  }

  override void WorldThingRevived(WorldEvent event)
  {
    initFunction("WorldThingRevived");
    checkPlayerIsNull();
    checkPlayerWeaponIsNull();
    checkPlayerHasNoWeapons();
    checkWorldEventThingIsNull(event);
  }

  override void WorldThingDamaged(WorldEvent event)
  {
    initFunction("WorldThingDamaged");
    checkPlayerIsNull();
    checkPlayerWeaponIsNull();
    checkPlayerHasNoWeapons();
    checkWorldEventThingIsNull(event);
  }

  override void WorldThingDestroyed(WorldEvent event)
  {
    initFunction("WorldThingDestroyed");
    // checkPlayerIsNull(); // Player can be null here, don't check.
    checkWorldEventThingIsNull(event);
  }

  override void WorldLinePreActivated(WorldEvent event)
  {
    initFunction("WorldLinePreActivated");
    checkPlayerIsNull();
    checkPlayerWeaponIsNull();
    checkPlayerHasNoWeapons();
    checkWorldEventThingIsNull(event);
  }

  override void WorldLineActivated(WorldEvent event)
  {
    initFunction("WorldLineActivated");
    checkPlayerIsNull();
    checkPlayerWeaponIsNull();
    checkPlayerHasNoWeapons();
    checkWorldEventThingIsNull(event);
  }

  override void WorldSectorDamaged(WorldEvent event)
  {
    initFunction("WorldSectorDamaged");
    checkPlayerIsNull();
    checkPlayerWeaponIsNull();
    checkPlayerHasNoWeapons();
    // checkWorldEventThingIsNull(event); // Thing is NULL here, don't check (m8f: not sure).
  }

  override void WorldLineDamaged(WorldEvent event)
  {
    initFunction("WorldLineDamaged");
    checkPlayerIsNull();
    checkPlayerWeaponIsNull();
    checkPlayerHasNoWeapons();
    // checkWorldEventThingIsNull(event); // Thing is NULL here, don't check (m8f: not sure).
  }

  override void WorldLightning(WorldEvent event)
  {
    initFunction("WorldLightning");
    checkPlayerIsNull();
    checkPlayerWeaponIsNull();
    checkPlayerHasNoWeapons();
    // checkWorldEventThingIsNull(event); // Thing is NULL here, don't check (m8f: not sure).
  }

  override void WorldTick()
  {
    initFunction("WorldTick");
    checkPlayerIsNull();
    checkPlayerWeaponIsNull();
    checkPlayerHasNoWeapons();
  }

  override void PlayerEntered(PlayerEvent event)
  {
    initFunction("PlayerEntered");
    checkPlayerIsNull();
    checkPlayerWeaponIsNull();
    checkPlayerHasNoWeapons();
  }

  override void PlayerSpawned(PlayerEvent event)
  {
    initFunction("PlayerSpawned");
    checkPlayerIsNull();
    checkPlayerWeaponIsNull();
    checkPlayerHasNoWeapons();
  }

  override void PlayerRespawned(PlayerEvent event)
  {
    initFunction("PlayerRespawned");
    checkPlayerIsNull();
    checkPlayerWeaponIsNull();
    checkPlayerHasNoWeapons();
  }

  override void PlayerDied(PlayerEvent event)
  {
    initFunction("PlayerDied");
    checkPlayerIsNull();
    checkPlayerWeaponIsNull();
    checkPlayerHasNoWeapons();
  }

  override void PlayerDisconnected(PlayerEvent event)
  {
    initFunction("PlayerDisconnected");
    checkPlayerIsNull();
    checkPlayerWeaponIsNull();
    checkPlayerHasNoWeapons();
  }

  override bool UiProcess(UiEvent event)
  {
    initFunction("UiProcess");
    checkPlayerIsNull();
    checkPlayerWeaponIsNull();
    checkPlayerHasNoWeapons();
    return false;
  }

  override bool InputProcess(InputEvent event)
  {
    initFunction("InputProcess");
    checkPlayerIsNull();
    checkPlayerWeaponIsNull();
    checkPlayerHasNoWeapons();
    return false;
  }

  override void ConsoleProcess(ConsoleEvent event)
  {
    initFunction("ConsoleProcess");
    checkPlayerIsNull();
    checkPlayerWeaponIsNull();
    checkPlayerHasNoWeapons();
  }

  override void NetworkProcess(ConsoleEvent event)
  {
    initFunction("NetworkProcess");
    checkPlayerIsNull();
    checkPlayerWeaponIsNull();
    checkPlayerHasNoWeapons();
  }

  override void CheckReplacement(ReplaceEvent event)
  {
    initFunction("CheckReplacement");
    checkPlayerIsNull();
    checkPlayerWeaponIsNull();
    checkPlayerHasNoWeapons();
  }

  override void CheckReplacee(ReplacedEvent event)
  {
    initFunction("CheckReplacee");
    checkPlayerIsNull();
    checkPlayerWeaponIsNull();
    checkPlayerHasNoWeapons();
  }

  override void NewGame()
  {
    initFunction("NewGame");
    // checkPlayerIsNull(); // Player can be null here, don't check.
  }

  override void RenderOverlay(RenderEvent event)
  {
    initFunction("RenderOverlay");
    checkPlayerIsNull();
    checkPlayerWeaponIsNull();
    checkPlayerHasNoWeapons();
  }

  override void RenderUnderlay(RenderEvent event)
  {
    initFunction("RenderUnderlay");
    checkPlayerIsNull();
    checkPlayerWeaponIsNull();
    checkPlayerHasNoWeapons();
  }

  override void UiTick()
  {
    initFunction("UiTick");
    checkPlayerIsNull();
    checkPlayerWeaponIsNull();
    checkPlayerHasNoWeapons();
  }

  override void PostUiTick()
  {
    initFunction("PostUiTick");
    checkPlayerIsNull();
    checkPlayerWeaponIsNull();
    checkPlayerHasNoWeapons();
  }

// private: ////////////////////////////////////////////////////////////////////////////////////////

  private play
  void initFunction(string functionName) const
  {
    mFunctionName = functionName;
    //console.printf(mFunctionName);
  }

  private play
  void checkPlayerIsNull() const
  {
    if (players[consolePlayer].mo == NULL && !mIsPlayerNullLogged)
    {
      mIsPlayerNullLogged = true;
      mcc_Log.error(mFunctionName .. ": Player is NULL");
    }
  }

  private play
  void checkWorldEventThingIsNull(WorldEvent event)
  {
    if (event.thing == NULL)
    {
      mcc_Log.error(mFunctionName .. ": WorldEvent event.thing is NULL");
    }
  }

  private
  void checkWorldEventThingTag(WorldEvent event)
  {
    Actor thing = event.thing;
    if (thing == NULL) return;

    if ((thing.bIsMonster || thing is "Weapon") && thing.getTag(".") == ".")
    {
      mcc_Log.notice("Class " .. thing.getClassName() .. " is missing a tag");
    }
  }

  private play
  void checkPlayerWeaponIsNull() const
  {
    if (players[consolePlayer].readyWeapon == NULL && !mIsPlayerWeaponNullLogged)
    {
      mIsPlayerWeaponNullLogged = true;
      mcc_Log.error(mFunctionName .. ": Player weapon is NULL");
    }
  }

  private play
  void checkPlayerHasNoWeapons() const
  {
    let player = players[consolePlayer].mo;
    if (player.findInventory("Weapon", true) == NULL && !mIsPlayerHasNoWeaponsLogged)
    {
      mIsPlayerHasNoWeaponsLogged = true;
      mcc_Log.error(mFunctionName .. ": Player has no weapons");
    }
  }

  private
  void checkOtherEventHandlers()
  {
    // The order in which classes are defined (in code), which is used here for
    // isLoggerFound and isTroublesFound, is not always the same as the event
    // handler run order, which is defined in mapinfo. But if the events
    // handlers are in different mods, it's the same.

    if (mAreOtherEventHandlersChecked) return;

    mAreOtherEventHandlersChecked = true;

    bool isLoggerFound = false;
    bool isTroublesFound = false;

    uint nClasses = AllClasses.size();
    for (uint i = 0; i < nClasses; ++i)
    {
      class aClass = AllClasses[i];

      if (aClass is "mcc_Logger") isLoggerFound = true;
      if (aClass is "mcc_Troubles") isTroublesFound = true;

      if (!(aClass is "StaticEventHandler")
          || aClass == "StaticEventHandler"
          || aClass == "EventHandler"
          || aClass == "mcc_Logger"
          || aClass == "mcc_Troubles") continue;

      string eventHandlerName = aClass.getClassName();
      class<EventHandler> eventHandlerClass = eventHandlerName;
      let instance = (aClass is "EventHandler")
        ? EventHandler.find(eventHandlerClass)
        : StaticEventHandler.find(eventHandlerClass);

      if (instance == NULL)
      {
        mcc_Log.notice(string.format("Event handler %s is defined but not activated in MAPINFO"
                                    , eventHandlerName
                                    ));
        continue;
      }

      int contenderOrder = instance.order;
      if (contenderOrder == int.max && isLoggerFound)
      {
        mcc_Log.notice(string.format("Can't inspect events from %s. Load MCC after %s"
                                    , eventHandlerName
                                    , eventHandlerName
                                    ));
      }

      if (contenderOrder == int.min && !isTroublesFound)
      {
        mcc_Log.notice(string.format("Simulated troubles won't affect %s. Load MCC before %s"
                                    , eventHandlerName
                                    , eventHandlerName
                                    ));
      }
    }
  }

  private string mFunctionName;
  private bool mIsPlayerNullLogged;
  private bool mIsPlayerWeaponNullLogged;
  private bool mIsPlayerHasNoWeaponsLogged;
  private bool mAreOtherEventHandlersChecked;

} // class mcc_Logger
