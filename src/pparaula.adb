with Ada.Text_IO, Ada.Wide_Wide_Characters.Handling;
use Ada.Text_IO, Ada.Wide_Wide_Characters.Handling;

package body pparaula is
   procedure put(p : in tparaula) is
      i: tllargaria;
   begin
      i:= 1;
      for i in 1 .. p.llargaria loop
         Put(p.lletres(i));
      end loop;
   end put;

   procedure put(f : in out File_Type; p : in tparaula) is
      i: tllargaria;
   begin
      i:= 1;
      for i in 1 .. p.llargaria loop
         Put(f, p.lletres(i));
      end loop;
   end put;

   function "=" (a, b : in tparaula) return boolean is
      i: tllargaria;
   begin
      if a.llargaria /= b.llargaria then
         return False;
      end if;


   end "=";

   function llargaria(p : in tparaula) return tllargaria is
   begin
     return p.llargaria;
   end llargaria;

end pparaula;
