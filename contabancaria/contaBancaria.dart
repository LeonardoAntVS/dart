//Tarefa 1: Criação da classe conta bancária
//• Como atributos essa classe deve conter o número da conta, o nome do cliente, 
//o saldo e o limite de crédito disponível para cada conta cadastrada para que
//cada cliente possa ter uma linha de crédito pré-aprovada.
//• Deve ser incluído um construtor na classe que possibilite instanciar um objeto
//com todos os atributos.
//Tarefa 2: Criação dos métodos da classe
//• Devem ser implementados os seguintes métodos na classe: sacar, depositar,
//transferir e imprimir a conta.
//Tarefa 3: Validação do limite de crédito no saque
//• Ao realizar o saque em uma conta bancária qualquer, o sistema deve impedir 
//a realização de um saque que exceda a capacidade da conta bancária e do seu limite de crédito.
//Tarefa 4: Testes
//• Criar um arquivo de testes separado para que seja possível verificar o correto funcionamento da classe. 

class Conta{
  dynamic numeroConta;
  String? nomeCliente;
  double? saldo, limiteCredito;

  Conta({
    required this.numeroConta,
    required this.nomeCliente,
    required this.saldo,
    required this.limiteCredito,
  });

  bool sacar(double valor){
    if (valor <= 0 || valor > this.limiteCredito!){
      return false;
    }
    else{
      this.saldo = this.saldo! - valor;
      return true;
    }
  }

  depositar(double valor){
    this.saldo = this.saldo! + valor;
  }

  bool transferir(Conta conta, double valor){
    if (valor <= 0 || valor > this.limiteCredito!){
      return false;
    }
    else{
      conta.saldo = conta.saldo! + valor;
      this.saldo = this.saldo! - valor;
      return true;
    }
  }

  String printConta(){
   return 'Cliente: ${this.nomeCliente}\nConta: ${this.numeroConta}\nSaldo: ${this.saldo}\nLimite: ${this.limiteCredito}';
  }
}