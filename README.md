# ListWrapper
IListWrapper&lt;T> for Delphi

Wrapper para a Classe TList<T> do Delphi.
Trabalhando com a IListWrapper<T> o programador não irá precisar se preocupar em liberar os objetos criados, deixando isso para o Contador Automático de Referência do Delphi.

Exemplo de uso:

   FLista: IListWrapper<Integer>;
   
   FLista.Add(33);
   
 O programador tem acesso a todos os métodos da TList<T> por meio da IListWrapper<T>.
 
 Criado utilizando o Delphi 10.4
