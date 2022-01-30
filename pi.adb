with Ada.Text_IO;       use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure pi is
   --
   function pi_NKS (Limit : Positive) return Float is
      PI : Float   := 3.0;
      S  : Integer := 1;
      I  : Integer := 0;
   begin
      loop
         exit when I >= Limit;
         I  := I + 2;
         PI := PI + Float (S) * Float (4) / Float (I * (I + 1) * (I + 2));
         S  := (S * (-1));
      end loop;
      return PI;
   end pi_NKS;

   function pi_GLS (Limit : Positive) return Float is
      PI : Float   := 0.0;
      S  : Integer := 1;
      I  : Integer := 0;
   begin
      loop
         exit when I >= Limit;
         I  := I + 2;
         PI := PI + Float (S) * Float (4 / I);
         S  := (S * (-1));
      end loop;
      return PI;
   end pi_GLS;

   ---
   Limit        : constant Positive := 100;
   PI_NKS_Value : Float;
   PI_GLS_Value : Float;
begin
   PI_NKS_Value := pi_NKS (Limit => Limit);
   Put ("NKS: ");
   Put (PI_NKS_Value, Fore => 0, Aft => 13, Exp => 1);

   Put_Line ("");
   PI_GLS_Value := pi_NKS (Limit => Limit);
   Put ("GLS: ");
   Put (PI_GLS_Value, Fore => 0, Aft => 13, Exp => 1);
end pi;
