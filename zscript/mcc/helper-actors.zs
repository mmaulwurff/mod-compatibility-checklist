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

mixin class mcc_Volatile
{
  override void Tick()
  {
    if (GetAge() > 0) destroy();
  }
}

class mcc_WeaponWithNoTag : Weapon
{
  mixin mcc_Volatile;
}

class mcc_EnemyWithNoTag : Actor
{
  Default
  {
    +IsMonster;
  }

  mixin mcc_Volatile;
}

class mcc_Spawnable : Actor
{
  mixin mcc_Volatile;
}
