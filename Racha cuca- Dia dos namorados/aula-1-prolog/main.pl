/* a resposta será do tipo:
mesa(executivo(_,_,_,_,_,_),executivo(_,_,_,_,_,_),
    executivo(_,_,_,_,_,_),executivo(_,_,_,_,_,_),
    executivo(_,_,_,_,_,_)).

gravata 
nacionalidade
idade
suco
comida
carro
*/

resolve(Sol) :-
    Sol = mesa(_,_,_,_,_),
    % o dono da suv esta usando uma gravata vermelha
    membro(A,Sol),
    carro(A,suv),
    gravata(A,vermelha),
    % quem esta bebendo suco de morango dirige sedan
    membro(B,Sol),
    suco(B,morango),
    carro(B,sedan),
    % na quinta posicao esta o dono do crossover
    quinta(C,Sol),
    carro(C,crossover),
    % o executivo de 51 anos esta ao lado do que esta comendo frango
    aolado(D,E,Sol),
    idade(D,51),
    comida(E,frango),
    % em uma das pontas esta o executivo que pediu uma sopa
    uma_das_pontas(F,Sol),
    comida(F,sopa),
    % o executivo de gravata azul  esta ao lado do que pediu uma massa
    aolado(G,H,Sol),
    gravata(G,azul),
    comida(H,massa),
    % o executivo mais novo esta examaente a direita do que esta comendo salada
    exatamente_a_direita(I,J,Sol),
    idade(I,47),
    comida(J,salada),
    % quem pediu peixe esta usando uma gravata branca
    membro(K,Sol),
    comida(K,peixe),
    gravata(K,branca),
    % quem esta tomando suco de abacaxi esta na quarta posicao
    quarta(L,Sol),
    suco(L,abacaxi)
    % o executivo de 51 anos esta bebendo suco de laranja
    membro(M, Sol),
    idade(M,51),
    suco(M,laranja),
    % o executivo de 50 anos esta bebendo suco de maracuja
    membro(N,Sol),
    idade(N,50),
    suco(N,maracuja),
    % na primeira posicao esta o dono do hatch
    % quem esta bebendo limonada esta na primeira posicao
    primeira(O,Sol),
    carro(O,hatch),
    suco(O,limonada),
    % o italiano esta sentado em uma das pontas
    uma_das_pontas(P,Sol),
    nacionalidade(P,italiano),
    % o alemao esta na terceira posicao
    terceira(Q,Sol),
    nacionalidade(Q,alemao),
    % o ingles esta em algum lugar a direita do executivo de gravata amarela
    algum_lugar_a_direita(R,S,Sol),
    nacionalidade(R,ingles),
    gravata(S,amarela),
    % o sueco esta na primeira posicao
    primeira(T,Sol),
    nacionalidade(T,sueco),
    % o executivo da gravata branca esta em uma das pontas
    uma_das_pontas(U,Sol),
    gravata(U,branca),
    % na terceira posica sta o executivo de gravata azul
    terceira(V,Sol),
    gravata(V,azul),
    
    % fechamento
    membro(Z2,Sol),
    nacionalidade(Z2,japonesa),
    membro(Z3,Sol),
    idade(Z3,53).



membro(X,mesa(X,_,_,_,_)).
membro(X,mesa(_,X,_,_,_)).
membro(X,mesa(_,_,X,_,_)).
membro(X,mesa(_,_,_,X,_)).
membro(X,mesa(_,_,_,_,X)).


primeira(X,mesa(X,_,_,_,_)).
segunda(X,mesa(_,X,_,_,_)).
terceira(X,mesa(_,_,X,_,_)).
quarta(X,mesa(_,_,_,X,_)).
quinta(X,mesa(_,_,_,_,X)).


gravata(executivo(X,_,_,_,_,_),X).
nacionalidade(executivo(_,X,_,_,_,_),X).
idade(executivo(_,_,X,_,_,_),X).
suco(executivo(_,_,_,X,_,_),X).
comida(executivo(_,_,_,_,X,_),X).
carro(executivo(_,_,_,_,_,X),X).

aolado(X,Y,mesa(X,Y,_,_,_)).
aolado(X,Y,mesa(Y,X,_,_,_)).
aolado(X,Y,mesa(_,Y,X,_,_)).
aolado(X,Y,mesa(_,X,Y,_,_)).
aolado(X,Y,mesa(_,_,X,Y,_)).
aolado(X,Y,mesa(_,_,Y,X,_)).
aolado(X,Y,mesa(_,_,_,Y,X)).
aolado(X,Y,mesa(_,_,_,X,Y)).

uma_das_pontas(X,mesa(X,_,_,_,_)).
uma_das_pontas(X,mesa(_,_,_,_,X)).

algum_lugar_a_direita(X,Y,mesa(X,Y,_,_,_)).
algum_lugar_a_direita(X,Y,mesa(X,_,Y,_,_)).
algum_lugar_a_direita(X,Y,mesa(X,_,_,Y,_)).
algum_lugar_a_direita(X,Y,mesa(X,_,_,_,Y)).
algum_lugar_a_direita(X,Y,mesa(_,X,Y,_,_)).
algum_lugar_a_direita(X,Y,mesa(_,X,_,Y,_)).
algum_lugar_a_direita(X,Y,mesa(_,X,_,_,Y)).
algum_lugar_a_direita(X,Y,mesa(_,_,X,Y,_)).
algum_lugar_a_direita(X,Y,mesa(_,_,_,X,Y)).


algum_lugar_a_esquerda(X,Y,Mesa) :-
    algum_lugar_a_esquerda(Y,X,Mesa).







