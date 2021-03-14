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

class mcc_Troubles : EventHandler
{

  override
  void OnRegister()
  {
    SetOrder(int.min);
  }

  override
  void NetworkProcess(ConsoleEvent event)
  {
    string command = event.name;

    if (command == "mcc-make-player-null") makePlayerNull();
    if (command == "mcc-make-spawned-thing-null") makeSpawnedThingNull();
    if (command == "mcc-make-player-weapon-null") makePlayerWeaponNull();
  }

  override
  void WorldThingSpawned(WorldEvent event)
  {
    if (mIsScheduledSpawnedThingIsNull)
    {
      mIsScheduledSpawnedThingIsNull = false;
      event.thing.destroy();
    }
  }

// private: ////////////////////////////////////////////////////////////////////////////////////////

  private
  void makePlayerNull()
  {
    players[consolePlayer].mo.destroy();

    // Interestingly, the following line
    //players[consolePlayer].mo = NULL;
    // just crashes GZDoom. Don't ever do that!
  }

  private
  void makeSpawnedThingNull()
  {
    mIsScheduledSpawnedThingIsNull = true;
  }

  private
  void makePlayerWeaponNull()
  {
    players[consolePlayer].readyWeapon = NULL;
  }

  private bool mIsScheduledSpawnedThingIsNull;

} // class mcc_Troubles
