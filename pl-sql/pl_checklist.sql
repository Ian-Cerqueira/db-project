DECLARE
    TYPE TopReviewObra IS RECORD(
        obra_nome Obra.nome%TYPE,
        obra_data Obra.dataLancamento%TYPE,
        obra_tipo Obra.tipo%TYPE,
        obra_origem Obra.paisDeOrigem%TYPE
    );
    ObraMaisReview TopReviewObra;
BEGIN
    SELECT o.nome, o.dataLancamento, o.tipo, o.paisDeOrigem
    INTO ObraMaisReview
    FROM Obra o
    WHERE o.id = 2;