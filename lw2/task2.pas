PROGRAM HttpRequest(INPUT, OUTPUT);
USES DOS;
VAR
  lanterns: STRING;
  N: INTEGER;
BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;
  lanterns := GetEnv('QUERY_STRING');
  IF LENGTH(lanterns) < 9
  THEN
    WRITELN('I don''t know')
  ELSE
    BEGIN
      N := POS('lanterns=', lanterns);
      IF N <> 0
      THEN
        BEGIN
          DELETE(lanterns, 1, N + 8);
          IF lanterns = '1'
          THEN
            WRITELN('By land')
          ELSE
            IF lanterns = '2'
            THEN
              WRITELN('By sea')
            ELSE
              WRITELN('I don''t know')
        END;
     END;
END.
