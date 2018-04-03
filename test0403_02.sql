create or replace function age_check
    (v_birth number)
     return number
    is
    v_koage number;
    begin
    select to_char(sysdate,'yyyy') - v_birth +1
    into v_koage
    from dual;
    return v_koage;
  end age_check;
/
