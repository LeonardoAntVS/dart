import 'contaBancaria.dart';

class Agencia{
  int numAgencia;
  List <Conta> contas = [];
  Agencia(this.numAgencia);

Conta? getConta({dynamic numeroConta}) {
  for (var conta in contas) {
    if (conta.numeroConta == numeroConta) {
      return conta;
    } 
  }
}

  addConta(Conta conta){
    contas.add(conta);
  }

  String printContas() {
  String result = 'Contas na Agência $numAgencia:\n';
  for (var conta in contas) {
    result += '${conta.printConta()}\n';
  }
  return result;
}
}