create or replace package body chinese_zodiac is
  function age_ddi
   (v_age number) return varchar2
    is
     begin
      if mod(v_age,12) = 6 then
      return ('snake');
      elsif mod(v_age,12) = 7 then
      return ('dragon');
      elsif mod(v_age,12) = 8 then
      return ('rabbit'); 
      elsif mod(v_age,12) = 9 then
      return ('tiger');
      elsif mod(v_age,12) = 10 then
      return ('cow');
      elsif mod(v_age,12) = 11 then
      return ('mouse');
      elsif mod(v_age,12) = 0 then
      return ('pig');
      elsif mod(v_age,12) = 1 then
      return ('dog');
      elsif mod(v_age,12) = 2 then
      return ('rooster');
      elsif mod(v_age,12) = 3 then
      return ('monkey');
      elsif mod(v_age,12) = 4 then
      return ('sheep');
      elsif mod(v_age,12) = 5 then
      return ('horse');
      else
      return ('sorry');
     end if;
    end age_ddi;
  function age_ddi
      (v_birth date)
      return varchar2
      is
      b_birth number; 
     begin
      select 
      to_char(v_birth,'yyyy')
      into b_birth
      from dual;
    if mod(b_birth,12) = 0 then
     return ('monkey');
    elsif mod(b_birth,12) = 1 then
     return ('rooster');
    elsif mod(b_birth,12) = 2 then
     return ('dog');
    elsif mod(b_birth,12) = 3 then
     return ('pig');
    elsif mod(b_birth,12) = 4 then
     return ('mouse');
    elsif mod(b_birth,12) = 5 then
     return ('cow');
    elsif mod(b_birth,12) = 6 then
     return ('tiger');
    elsif mod(b_birth,12) = 7 then
     return ('rabbit');
    elsif mod(b_birth,12) = 8 then
     return ('dragon');
    elsif mod(b_birth,12) = 9 then
     return ('snake');
    elsif mod(b_birth,12) = 10 then
     return ('horse');
    elsif mod(b_birth,12) = 11 then
     return ('sheep');
    else
      return ('sorry');
     end if;
    end age_ddi;
    end chinese_zodiac;
/
