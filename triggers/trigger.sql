CREATE OR REPLACE TRIGGER trg_obra_id
BEFORE INSERT ON Obra
FOR EACH ROW
BEGIN
    SELECT obra_seq.NEXTVAL 
    INTO :NEW.id 
    FROM DUAL;
END;
/

CREATE OR REPLACE TRIGGER trg_artista_id
BEFORE INSERT ON Artistas
FOR EACH ROW
BEGIN
    SELECT artista_seq.NEXTVAL 
    INTO :NEW.id 
    FROM DUAL;
END;
/

CREATE OR REPLACE TRIGGER trg_lista_per_id
BEFORE INSERT ON Lista_Personalizada
FOR EACH ROW
BEGIN
    SELECT lista_per_seq.NEXTVAL 
    INTO :NEW.id 
    FROM DUAL;
END;
/

CREATE OR REPLACE TRIGGER trg_lista_watch_id
BEFORE INSERT ON Watchlist
FOR EACH ROW
BEGIN
    SELECT lista_watch_seq.NEXTVAL 
    INTO :NEW.id 
    FROM DUAL;
END;
/

CREATE OR REPLACE TRIGGER trg_usuario_id
BEFORE INSERT ON Usuario
FOR EACH ROW
BEGIN
    SELECT usuario_seq.NEXTVAL 
    INTO :NEW.id 
    FROM DUAL;
END;
/

-- Triggers de comando
CREATE OR REPLACE TRIGGER insert_Curtiu_review_trg
    AFTER INSERT ON Curtiu_Review
BEGIN
    DBMS_OUTPUT.PUT_LINE('Sucesso! A review foi curtida.');
    DBMS_OUTPUT.PUT_LINE('Instante: ' || TO_CHAR(SYSDATE, 'DD/MM/YYYY HH24:MI:SS'));

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Erro na execução da ação.');
END;
/

CREATE OR REPLACE TRIGGER update_lista_personalizada_trg
    AFTER UPDATE OF visibilidade ON Lista_Personalizada
BEGIN
    DBMS_OUTPUT.PUT_LINE('Visibilidade da lista foi alterada.');
    DBMS_OUTPUT.PUT_LINE('Instante: ' || TO_CHAR(SYSDATE, 'DD/MM/YYYY HH24:MI:SS'));

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Erro na execução da ação.');
END;
/

CREATE OR REPLACE TRIGGER delete_entrada_log_trg
    BEFORE DELETE ON Entrada_do_Log
BEGIN
    RAISE_APPLICATION_ERROR(-20001, 'Não é permitido apagar o histórico de logs.');

END;
/
