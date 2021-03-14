/* Copyright Alexander Kromm (mmaulwurff@gmail.com) 2021
 *
 * This file is part of Mod Compatibility Checklist.
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

class mcc_Log
{

  static
  void print(string s)
  {
    Console.printf("%s", StringTable.localize(s, false));
  }

  static
  void notice(string s)
  {
    Console.printf("[NOTICE] %s: %s", MOD_NAME, StringTable.localize(s, false));
  }

  static
  void error(string s)
  {
    Console.printf("[ERROR] %s: %s.", MOD_NAME, s);
  }

  static
  void log(string s)
  {
    Console.printf("[LOG] %s: %s.", MOD_NAME, s);
  }

  static
  void debug(string s)
  {
    if (DEBUG_ENABLED)
    {
      Console.printf("[DEBUG] %s: %s.", MOD_NAME, s);
    }
  }

  const DEBUG_ENABLED = 0; // == false

  const MOD_NAME = "Mod Compatibility Checklist";

} // class mcc_Log
