mochila(amarela).
mochila(azul).
mochila(branca).
mochila(verde).
mochila(vermelha).
nome(denis).
nome(joao).
nome(lenin).
nome(otavio).
nome(will).
mes(agosto).
mes(dezembro).
mes(janeiro).
mes(maio).
mes(setembro).
jogo(tresMais).
jogo(cacaPalavra).
jogo(cuboVermelho).
jogo(forca).
jogo(logica).
materia(biologia).
materia(geografia).
materia(historia).
materia(matematica).
materia(portugues).
suco(laranja).
suco(limao).
suco(maracuja).
suco(morango).
suco(uva).

all_different([]).
all_different([H|T]) :- not(member(H, T)), all_different(T).

modelo(Lista) :-
Lista = [
    crianca(Mochila_1, Nome_1, Mes_1, Jogo_1, Materia_1, Suco_1),
    crianca(Mochila_2, Nome_2, Mes_2, Jogo_2, Materia_2, Suco_2),
    crianca(Mochila_3, Nome_3, Mes_3, Jogo_3, Materia_3, Suco_3),
    crianca(Mochila_4, Nome_4, Mes_4, Jogo_4, Materia_4, Suco_4),
    crianca(Mochila_5, Nome_5, Mes_5, Jogo_5, Materia_5, Suco_5)
],
        

        % Restrições fixas primeiro — melhora a performance
        (Nome_5 = lenin),
        (Suco_1 = limao),
        (Suco_3 = morango),
        (Jogo_3 = forca),

        

        (
        (Mes_1 = setembro, Suco_2 = laranja);
        (Mes_2 = setembro, Suco_1 = laranja);
        (Mes_2 = setembro, Suco_3 = laranja);
        (Mes_3 = setembro, Suco_2 = laranja);
        (Mes_3 = setembro, Suco_4 = laranja);
        (Mes_4 = setembro, Suco_3 = laranja);
        (Mes_4 = setembro, Suco_5 = laranja);
        (Mes_5 = setembro, Suco_4 = laranja)
        ),
        (
        (Nome_1 = joao, Materia_1 = historia);
        (Nome_2 = joao, Materia_2 = historia);
        (Nome_3 = joao, Materia_3 = historia);
        (Nome_4 = joao, Materia_4 = historia);
        (Nome_5 = joao, Materia_5 = historia)
        ),
        (
        (Mochila_1 = azul, Mes_2 = maio);
        (Mochila_1 = azul, Mes_3 = maio);
        (Mochila_1 = azul, Mes_4 = maio);
        (Mochila_1 = azul, Mes_5 = maio);
        (Mochila_2 = azul, Mes_3 = maio);
        (Mochila_2 = azul, Mes_4 = maio);
        (Mochila_2 = azul, Mes_5 = maio);
        (Mochila_3 = azul, Mes_4 = maio);
        (Mochila_3 = azul, Mes_5 = maio);
        (Mochila_4 = azul, Mes_5 = maio)
        ),
        (
        (Nome_1 = will, Jogo_2 = logica);
        (Nome_2 = will, Jogo_1 = logica);
        (Nome_2 = will, Jogo_3 = logica);
        (Nome_3 = will, Jogo_2 = logica);
        (Nome_3 = will, Jogo_4 = logica);
        (Nome_4 = will, Jogo_3 = logica);
        (Nome_4 = will, Jogo_5 = logica);
        (Nome_5 = will, Jogo_4 = logica)
        ),
        (
        (Mochila_1 = branca, Nome_2 = will);
        (Mochila_2 = branca, Nome_3 = will);
        (Mochila_3 = branca, Nome_4 = will);
        (Mochila_4 = branca, Nome_5 = will)
        ),
        (
        (Suco_1 = uva, Jogo_1 = logica);
        (Suco_2 = uva, Jogo_2 = logica);
        (Suco_3 = uva, Jogo_3 = logica);
        (Suco_4 = uva, Jogo_4 = logica);
        (Suco_5 = uva, Jogo_5 = logica)
        ),
        (
        (Jogo_1 = forca, Jogo_2 = tresMais);
        (Jogo_2 = forca, Jogo_1 = tresMais);
        (Jogo_2 = forca, Jogo_3 = tresMais);
        (Jogo_3 = forca, Jogo_2 = tresMais);
        (Jogo_3 = forca, Jogo_4 = tresMais);
        (Jogo_4 = forca, Jogo_3 = tresMais);
        (Jogo_4 = forca, Jogo_5 = tresMais);
        (Jogo_5 = forca, Jogo_4 = tresMais)
        ),
        (
        (Mochila_1 = azul, Suco_2 = uva);
        (Mochila_1 = azul, Suco_3 = uva);
        (Mochila_1 = azul, Suco_4 = uva);
        (Mochila_1 = azul, Suco_5 = uva);
        (Mochila_2 = azul, Suco_3 = uva);
        (Mochila_2 = azul, Suco_4 = uva);
        (Mochila_2 = azul, Suco_5 = uva);
        (Mochila_3 = azul, Suco_4 = uva);
        (Mochila_3 = azul, Suco_5 = uva);
        (Mochila_4 = azul, Suco_5 = uva)
        ),
        (
        (Suco_1 = morango, Materia_1 = biologia);
        (Suco_2 = morango, Materia_2 = biologia);
        (Suco_3 = morango, Materia_3 = biologia);
        (Suco_4 = morango, Materia_4 = biologia);
        (Suco_5 = morango, Materia_5 = biologia)
        ),
        (
        (Mes_1 = janeiro, Mes_2 = setembro);
        (Mes_2 = janeiro, Mes_1 = setembro);
        (Mes_2 = janeiro, Mes_3 = setembro);
        (Mes_3 = janeiro, Mes_2 = setembro);
        (Mes_3 = janeiro, Mes_4 = setembro);
        (Mes_4 = janeiro, Mes_3 = setembro);
        (Mes_4 = janeiro, Mes_5 = setembro);
        (Mes_5 = janeiro, Mes_4 = setembro)
        ),
        (
        (Suco_1 = uva, Materia_2 = portugues);
        (Suco_2 = uva, Materia_3 = portugues);
        (Suco_3 = uva, Materia_4 = portugues);
        (Suco_4 = uva, Materia_5 = portugues)
        ),
        (
        (Materia_1 = matematica, Mes_1 = dezembro);
        (Materia_2 = matematica, Mes_2 = dezembro);
        (Materia_3 = matematica, Mes_3 = dezembro);
        (Materia_4 = matematica, Mes_4 = dezembro);
        (Materia_5 = matematica, Mes_5 = dezembro)
        ),
        (
        (Jogo_1 = logica, Mochila_2 = amarela);
        (Jogo_2 = logica, Mochila_1 = amarela);
        (Jogo_2 = logica, Mochila_3 = amarela);
        (Jogo_3 = logica, Mochila_2 = amarela);
        (Jogo_3 = logica, Mochila_4 = amarela);
        (Jogo_4 = logica, Mochila_3 = amarela);
        (Jogo_4 = logica, Mochila_5 = amarela);
        (Jogo_5 = logica, Mochila_4 = amarela)
        ),
        (
        (Mochila_1 = azul, Mes_1 = janeiro);
        (Mochila_2 = azul, Mes_2 = janeiro);
        (Mochila_3 = azul, Mes_3 = janeiro);
        (Mochila_4 = azul, Mes_4 = janeiro);
        (Mochila_5 = azul, Mes_5 = janeiro)
        ),
        (
        (Mes_1 = setembro, Jogo_2 = cuboVermelho);
        (Mes_2 = setembro, Jogo_1 = cuboVermelho);
        (Mes_2 = setembro, Jogo_3 = cuboVermelho);
        (Mes_3 = setembro, Jogo_2 = cuboVermelho);
        (Mes_3 = setembro, Jogo_4 = cuboVermelho);
        (Mes_4 = setembro, Jogo_3 = cuboVermelho);
        (Mes_4 = setembro, Jogo_5 = cuboVermelho);
        (Mes_5 = setembro, Jogo_4 = cuboVermelho)
        ),
        (
        (Materia_1 = matematica, Suco_1 = maracuja);
        (Materia_2 = matematica, Suco_2 = maracuja);
        (Materia_3 = matematica, Suco_3 = maracuja);
        (Materia_4 = matematica, Suco_4 = maracuja);
        (Materia_5 = matematica, Suco_5 = maracuja)
        ),
        (
        (Jogo_1 = cuboVermelho);
        (Jogo_5 = cuboVermelho)
        ),
        (
        (Jogo_1 = forca, Mochila_2 = vermelha);
        (Jogo_2 = forca, Mochila_1 = vermelha);
        (Jogo_2 = forca, Mochila_3 = vermelha);
        (Jogo_3 = forca, Mochila_2 = vermelha);
        (Jogo_3 = forca, Mochila_4 = vermelha);
        (Jogo_4 = forca, Mochila_3 = vermelha);
        (Jogo_4 = forca, Mochila_5 = vermelha);
        (Jogo_5 = forca, Mochila_4 = vermelha)
        ),
        (
        (Nome_1 = otavio);
        (Nome_5 = otavio)
        ),
        
    nome(Nome_1), nome(Nome_2), nome(Nome_3), nome(Nome_4), nome(Nome_5),
    all_different([Nome_1, Nome_2, Nome_3, Nome_4, Nome_5]),

    suco(Suco_1), suco(Suco_2), suco(Suco_3), suco(Suco_4), suco(Suco_5),
    all_different([Suco_1, Suco_2, Suco_3, Suco_4, Suco_5]),

    jogo(Jogo_1), jogo(Jogo_2), jogo(Jogo_3), jogo(Jogo_4), jogo(Jogo_5),
    all_different([Jogo_1, Jogo_2, Jogo_3, Jogo_4, Jogo_5]),
   
    mochila(Mochila_1), mochila(Mochila_2), mochila(Mochila_3), mochila(Mochila_4), mochila(Mochila_5),
    all_different([Mochila_1, Mochila_2, Mochila_3, Mochila_4, Mochila_5]),

    mes(Mes_1), mes(Mes_2), mes(Mes_3), mes(Mes_4), mes(Mes_5),
    all_different([Mes_1, Mes_2, Mes_3, Mes_4, Mes_5]),

    materia(Materia_1), materia(Materia_2), materia(Materia_3), materia(Materia_4), materia(Materia_5),
    all_different([Materia_1, Materia_2, Materia_3, Materia_4, Materia_5]).

imprime_lista([]).
imprime_lista([crianca(Mochila, Nome, Mes, Jogo, Materia, Suco)|T]) :-
    write('-------------------------------'), nl,
    write('Mochila: '), write(Mochila), nl,
    write('Nome:    '), write(Nome),    nl,
    write('Mes:     '), write(Mes),     nl,
    write('Jogo:    '), write(Jogo),    nl,
    write('Materia: '), write(Materia), nl,
    write('Suco:    '), write(Suco),    nl,
    imprime_lista(T).

main :-
    statistics(cputime, T1),
    modelo(Lista),
    nl,
    writeln('=== SOLUCAO ==='),
    imprime_lista(Lista),
    statistics(cputime, T2),
    Tempo is T2 - T1,
    write('Tempo de execucao: '), write(Tempo), writeln(' segundos'),
    fail.

main :-
    writeln('Busca encerrada.').