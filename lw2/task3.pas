PROGRAM Task3(INPUT, OUTPUT);
USES DOS;
VAR
  QueryStr, Name: STRING;
  I: INTEGER;
BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;
  QueryStr := GetEnv('QUERY_STRING');
  Name := '';
  IF POS('name=', QueryStr) > 0
  THEN
    BEGIN
      FOR I := POS('name=', QueryStr) + LENGTH('name=') + 1 TO LENGTH(QueryStr)
      DO
        BEGIN
          IF QueryStr[I] = '&'
          THEN
            BREAK;
          Name := Name + QueryStr[I];
        END;
      IF LENGTH(Name) > 0
      THEN
        WRITELN('Hello dear, ', Name)
      ELSE
        WRITELN('Hello, Anonymous')
    END
  ELSE
    WRITELN('Hello, Anonymous')
END.
