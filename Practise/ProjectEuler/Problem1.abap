*Project Euler, Problem 1
*Given max_number writes out the sum of numbers
*divisible by 5 or 3 from 1 to max_number
FORM is_div_by_five_or_three USING max_number TYPE i.
  DATA sum_all_divisible TYPE i VALUE 0.
  DATA number TYPE i.
  DATA boolean_div TYPE i.
  
  IF max_number < 3.
    EXIT.
    ENDIF.
  DO max_number TIMES.

    number = sy-index.
    PERFORM is_div_by USING number
                            5
                            boolean_div.
    IF boolean_div = 1.
      sum_all_divisible = sum_all_divisible + number.
    
	ELSE.
      PERFORM is_div_by USING number
                            3
                            boolean_div.
      IF boolean_div = 1.
        sum_all_divisible = sum_all_divisible + number.
      ENDIF.
    ENDIF.
    ENDDO.

  WRITE / sum_all_divisible.
  WRITE 'is the sum of all number that are divisible by either 3 or 5.'.
  ENDFORM.
