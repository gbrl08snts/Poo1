class Produto {
  constructor(preco, descricao, validade) {
    this.preco = preco;
    this.descricao = descricao;
    this.validade = validade;
  }
}

class Item {
  constructor(produto, quantidade) {
    this.produto = produto;
    this.quantidade = quantidade;
    this.total = this.calcularTotal();
  }

  calcularTotal() {
    return this.produto.preco * this.quantidade;
  }
}

class Venda {
  constructor(data, itens = []) {
    this.data = data;
    this.itens = itens;
    this.total = this.totalizar();
  }

  totalizar() {
    return this.itens.reduce((total, item) => total + item.total, 0);
  }

  adicionarItem(item) {
    this.itens.push(item);
    this.total = this.totalizar();
  }

  exibirTotal() {
    console.log(`Total da venda: R$ ${this.total.toFixed(2)}`);
  }
}

const produto = new Produto(10.0, 'Produto de Exemplo', '2023-12-31');
const item1 = new Item(produto, 3);
const item2 = new Item(produto, 2);
const item3 = new Item(produto, 5);

const venda = new Venda('2023-03-12');
venda.adicionarItem(item1);
venda.adicionarItem(item2);
venda.adicionarItem(item3);
venda.exibirTotal();
