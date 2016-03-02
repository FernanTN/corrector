with Ada.Text_IO, Ada.Wide_Wide_Characters.Handling;
use Ada.Text_IO, Ada.Wide_Wide_Characters.Handling;

package body pparaula is
   --Procediment per escriure per pantalla
   procedure put(p : in tparaula) is
      i: tllargaria;
   begin
      i:= 1;
      for i in 1 .. p.llargaria loop
         Put(p.lletres(i));
      end loop;
   end put;
   --Procediment per escriure a un fitxer de text
   procedure put(f : in out File_Type; p : in tparaula) is
      i: tllargaria;
   begin
      i:= 1;
      for i in 1 .. p.llargaria loop
         Put(f, p.lletres(i));
      end loop;
   end put;
   -- Funció per determinar si són iguals o no dues paraules
   function "=" (a, b : in tparaula) return boolean is
      i: tllargaria;
   begin
      if a.llargaria /= b.llargaria then
         return False;
      end if;
      i:=1;
      for i in 1 .. a.llargaria loop
         if a.lletres(i) /= b.lletres(i) then
            return False;
         end if;
      end loop;
      return True;
   end "=";
   -- Funció que mos retorna la llagaria d'una paraula
   function llargaria(p : in tparaula) return tllargaria is
   begin
     return p.llargaria;
   end llargaria;
   -- Funció per dir si la paraula és buida
   function buida(p : in tparaula) return boolean is
   begin
      if p.llargaria = 0 then
         return False;
      end if;
      return True;
   end buida;
   -- Funció que retorna la lletra d'una posició determinada
   function caracter(p : in tparaula; posicio : in rang_lletres) return character is
   begin
      return p.lletres(posicio);
   end caracter;
   -- Funció que converteix un tparaula a string
   function toString(p: in tparaula) return  String is
      paraula: String (1 .. p.llargaria);
      i: tllargaria;
   begin
      i:=1;
      for i in 1 .. p.llargaria loop
         paraula(i):= p.lletres(i);
      end loop;
      return paraula;
   end toString;

end pparaula;
