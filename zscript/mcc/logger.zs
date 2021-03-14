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

  override void WorldLoaded(WorldEvent event)
  {
    initFunction("WorldLoaded");
    checkPlayerIsNull();
    // checkWorldEventThingIsNull(event); // Thing is NULL here, don't check.
  }

  override void WorldUnloaded(WorldEvent event)
  {
    initFunction("WorldUnloaded");
    checkPlayerIsNull();
    // checkWorldEventThingIsNull(event); // Thing is NULL here, don't check.
  }

  override void WorldThingSpawned(WorldEvent event)
  {
    initFunction("WorldThingSpawned");
    checkPlayerIsNull();
    checkWorldEventThingIsNull(event);
  }

  override void WorldThingDied(WorldEvent event)
  {
    initFunction("WorldThingDied");
    checkPlayerIsNull();
    checkWorldEventThingIsNull(event);
  }

  override void WorldThingGround(WorldEvent event)
  {
    initFunction("WorldThingGround");
    checkPlayerIsNull();
    checkWorldEventThingIsNull(event);
  }

  override void WorldThingRevived(WorldEvent event)
  {
    initFunction("WorldThingRevived");
    checkPlayerIsNull();
    checkWorldEventThingIsNull(event);
  }

  override void WorldThingDamaged(WorldEvent event)
  {
    initFunction("WorldThingDamaged");
    checkPlayerIsNull();
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
    checkWorldEventThingIsNull(event);
  }

  override void WorldLineActivated(WorldEvent event)
  {
    initFunction("WorldLineActivated");
    checkPlayerIsNull();
    checkWorldEventThingIsNull(event);
  }

  override void WorldSectorDamaged(WorldEvent event)
  {
    initFunction("WorldSectorDamaged");
    checkPlayerIsNull();
    // checkWorldEventThingIsNull(event); // Thing is NULL here, don't check (m8f: not sure).
  }

  override void WorldLineDamaged(WorldEvent event)
  {
    initFunction("WorldLineDamaged");
    checkPlayerIsNull();
    // checkWorldEventThingIsNull(event); // Thing is NULL here, don't check (m8f: not sure).
  }

  override void WorldLightning(WorldEvent event)
  {
    initFunction("WorldLightning");
    checkPlayerIsNull();
    // checkWorldEventThingIsNull(event); // Thing is NULL here, don't check (m8f: not sure).
  }

  override void WorldTick()
  {
    initFunction("WorldTick");
    checkPlayerIsNull();
  }

  override void PlayerEntered(PlayerEvent event)
  {
    initFunction("PlayerEntered");
    checkPlayerIsNull();
  }

  override void PlayerSpawned(PlayerEvent event)
  {
    initFunction("PlayerSpawned");
    checkPlayerIsNull();
  }

  override void PlayerRespawned(PlayerEvent event)
  {
    initFunction("PlayerRespawned");
    checkPlayerIsNull();
  }

  override void PlayerDied(PlayerEvent event)
  {
    initFunction("PlayerDied");
    checkPlayerIsNull();
  }

  override void PlayerDisconnected(PlayerEvent event)
  {
    initFunction("PlayerDisconnected");
    checkPlayerIsNull();
  }

  override bool UiProcess(UiEvent event)
  {
    initFunction("UiProcess");
    checkPlayerIsNull();
    return false;
  }

  override bool InputProcess(InputEvent event)
  {
    initFunction("InputProcess");
    checkPlayerIsNull();
    return false;
  }

  override void ConsoleProcess(ConsoleEvent event)
  {
    initFunction("ConsoleProcess");
    checkPlayerIsNull();
  }

  override void NetworkProcess(ConsoleEvent event)
  {
    initFunction("NetworkProcess");
    checkPlayerIsNull();
  }

  override void CheckReplacement(ReplaceEvent event)
  {
    initFunction("CheckReplacement");
    checkPlayerIsNull();
  }

  override void CheckReplacee(ReplacedEvent event)
  {
    initFunction("CheckReplacee");
    checkPlayerIsNull();
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
  }

  override void RenderUnderlay(RenderEvent event)
  {
    initFunction("RenderUnderlay");
    checkPlayerIsNull();
  }

  override void UiTick()
  {
    initFunction("UiTick");
    checkPlayerIsNull();
  }

  override void PostUiTick()
  {
    initFunction("PostUiTick");
    checkPlayerIsNull();
  }

// private: ////////////////////////////////////////////////////////////////////////////////////////

  private play
  void initFunction(string functionName) const
  {
    mFunctionName = functionName;
    //console.printf(mFunctionName);
  }

  /**
   * MCC2
   */
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

  private string mFunctionName;
  private bool mIsPlayerNullLogged;

} // class mcc_Logger
