import 'contaBancaria.dart';
import 'agenciaBancaria.dart';


void main() {
  //Testando os métodos da classe contaBancaria
  var c1 = Conta(nomeCliente: 'Leonardo', numeroConta: 'db002', saldo: 20589.66, limiteCredito: 1200.00);
  var c2 = Conta(nomeCliente: 'Diego', numeroConta: 'vk1200', saldo: 1800.00, limiteCredito: 300.00);

  if (c2.depositar(300.50) == true){
    print('Sucesso no depósito');
  }
  else{
    print('Não foi possível depositar');
  }
  c1.sacar(1200);
  if (c1.transferir(c2, 300) == true){
    print('Seu novo saldo: R\$: ${c1.saldo}');
  }else {
    print('Não foi possível depositar valor');
  }
  c1.printConta();
  c2.printConta();

  //Testando os métodos da classe agenciaBancaria
  var a1 = Agencia(0001);
  var a2 = Agencia(3200);
  a1.addConta(c1);
  a2.addConta(c1);
  a2.addConta(c2);

  print(a1.printContas());
  print(a2.printContas());

  if(a2.getConta(numeroConta: c1.numeroConta) == null){
    print('Não temos a conta ${c1.numeroConta} na agencia ${a2.numAgencia}');
  }else{
    print('Conta ${c1.numeroConta} está na agencia ${a2.numAgencia}');
  }
}