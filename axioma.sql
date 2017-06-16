-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 16-Jun-2017 às 02:55
-- Versão do servidor: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `axioma`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `IdCliente` int(11) NOT NULL,
  `Nome` varchar(45) DEFAULT NULL,
  `CPF` varchar(45) DEFAULT NULL,
  `CNPJ` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `CEP` varchar(45) DEFAULT NULL,
  `Numero` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`IdCliente`, `Nome`, `CPF`, `CNPJ`, `Email`, `CEP`, `Numero`) VALUES
(1, 'Volkswagen', NULL, '11/11111.111-11', 'contato@volkswagen.com.br', '11111-111', '1'),
(2, 'Chevrolet', NULL, '22/22222-22', 'contato@chevrolet.com.br', '22222-222', '2'),
(3, 'Renault', NULL, '33/33333-33', 'contato@renault.com.br', '33333-333', '3'),
(4, 'Ford', NULL, '44/4444.444-44', 'contato@ford.com.br', '44444-444', '4'),
(5, 'Hyundai', NULL, '55/55555.555-55', 'contato@hyundai.com.br', '55555-555', '5'),
(6, 'Citroen', NULL, '66/666.666-66', 'contato@citroen.com.br', '66666-666', '6'),
(7, 'Honda', NULL, '77/77777.777-77', 'contato@honda.com.br', '77777-777', '7'),
(8, 'Yamaha', NULL, '88/88888.88-88', 'contato@yamaha.com.br', '88888-888', '8'),
(9, 'Harley Davidson', NULL, '99/99999.999-99', 'contato@harleydavidson.com.br', '99999-999', '9'),
(10, 'Dafra', NULL, '10/101010.1010-10', 'contato@dafra.com.br', '10101-101', '10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `idFornecedor` int(11) NOT NULL,
  `RazaoSocial` varchar(45) DEFAULT NULL,
  `CNPJ` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `CEP` varchar(45) DEFAULT NULL,
  `Numero` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `fornecedor`
--

INSERT INTO `fornecedor` (`idFornecedor`, `RazaoSocial`, `CNPJ`, `Email`, `CEP`, `Numero`) VALUES
(1, 'JM Auto Peças', '011/11111.111-11', 'contato@jmautopecas.com.br', '01111-111', '01'),
(2, 'Casa das Sinaleiras', '02/222222-222', 'contato@casadassinaleiras.com.br', '02222-222', '02'),
(3, 'Vicar Vp Pavan', '03/333333-333', 'contato@vicarvppavan.com.br', '03333-333', '03'),
(4, 'Multiparts Ferramentas e Produtos', '04/44444-444', 'contato@multipartsferramentaseprodutos.com.br', '04444-444', '04'),
(5, ' Pegasus Autopeças', '05/555555-555', 'contato@pegasusautopecas.com.br', '05555-555', '05'),
(6, 'Palmeira Autopeças', '06/666666-666', 'contato@palmeiraautopecas.com.br', '06666-666', '06'),
(7, 'Fator Distribuidora de Autopeças', '07/777777-777', 'contato@fatordistribuidoradeautopecas.com.br', '07777-777', '07'),
(8, 'Refrijet', '08/888888-888', 'contato@Refrijet.com.br', '08888-888', '08'),
(9, 'RNPARTS Auto Peças', '09/999999-999', 'contato@rnpartsautopecas.com.br', '09999-999', '09'),
(10, 'DPL Distribuidora de Peças', '10/111111.111', 'contato@dpldistribuidoradepecas.com.br', '10000-000', '010');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedor_has_pecas`
--

CREATE TABLE `fornecedor_has_pecas` (
  `idFornecedor` int(11) NOT NULL,
  `idPecas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `fornecedor_has_pecas`
--

INSERT INTO `fornecedor_has_pecas` (`idFornecedor`, `idPecas`) VALUES
(1, 1),
(1, 2),
(1, 4),
(1, 5),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(3, 1),
(3, 3),
(3, 4),
(3, 5),
(4, 4),
(4, 5),
(5, 4),
(5, 5),
(6, 4),
(6, 5),
(7, 4),
(7, 5),
(8, 4),
(8, 5),
(9, 4),
(9, 5),
(10, 4),
(10, 5),
(10, 6),
(10, 7),
(10, 8),
(10, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `notafiscal`
--

CREATE TABLE `notafiscal` (
  `idNotaFiscal` int(11) NOT NULL,
  `Data` date DEFAULT NULL,
  `IdCliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `notafiscal`
--

INSERT INTO `notafiscal` (`idNotaFiscal`, `Data`, `IdCliente`) VALUES
(1, '2017-06-30', 1),
(2, '2017-06-30', 2),
(3, '2017-06-30', 3),
(4, '2017-06-30', 4),
(5, '2017-06-30', 5),
(6, '2017-06-30', 6),
(7, '2017-06-30', 7),
(8, '2017-06-30', 8),
(9, '2017-06-30', 9),
(10, '2017-06-30', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `notafiscal_has_produto`
--

CREATE TABLE `notafiscal_has_produto` (
  `idNotaFiscal` int(11) NOT NULL,
  `idProduto` int(11) NOT NULL,
  `Quantidade` int(11) DEFAULT NULL,
  `Valor` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `notafiscal_has_produto`
--

INSERT INTO `notafiscal_has_produto` (`idNotaFiscal`, `idProduto`, `Quantidade`, `Valor`) VALUES
(1, 1, 10, '100.00'),
(2, 2, 20, '200.00'),
(3, 3, 30, '300.00'),
(4, 4, 40, '400.00'),
(5, 5, 50, '500.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pecas`
--

CREATE TABLE `pecas` (
  `idPecas` int(11) NOT NULL,
  `Descricao` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pecas`
--

INSERT INTO `pecas` (`idPecas`, `Descricao`) VALUES
(1, 'Peça A - Roda 1'),
(2, 'Peça B - Roda 1'),
(3, 'Peça C - Roda 1'),
(4, 'Peça A - Roda 2'),
(5, 'Peça B - Roda 2'),
(6, 'Peça A - Volante 1'),
(7, 'Peça A - Volante 2'),
(8, 'Peça A - Tanque de Gasolina 1'),
(9, 'Peça A - Tanque de Gasolina 2'),
(10, 'Peça A - Tanque de Gasolina 3');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidodecompra`
--

CREATE TABLE `pedidodecompra` (
  `idPedidoDeCompra` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `idFornecedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pedidodecompra`
--

INSERT INTO `pedidodecompra` (`idPedidoDeCompra`, `data`, `idFornecedor`) VALUES
(1, '2017-06-22', 1),
(2, '2017-06-22', 2),
(3, '2017-06-22', 3),
(4, '2017-06-29', 4),
(5, '2017-06-29', 5),
(6, '2017-06-23', 6),
(7, '2017-06-23', 7),
(8, '2017-06-23', 8),
(9, '2017-06-23', 9),
(10, '2017-06-20', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidodecompra_has_pecas`
--

CREATE TABLE `pedidodecompra_has_pecas` (
  `idPedidoDeCompra` int(11) NOT NULL,
  `idPecas` int(11) NOT NULL,
  `Quantidade` int(11) DEFAULT NULL,
  `Valor` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pedidodecompra_has_pecas`
--

INSERT INTO `pedidodecompra_has_pecas` (`idPedidoDeCompra`, `idPecas`, `Quantidade`, `Valor`) VALUES
(1, 1, 10, '100.00'),
(2, 2, 20, '200.00'),
(3, 3, 30, '300.00'),
(4, 4, 40, '400.00'),
(5, 5, 50, '500.00'),
(6, 6, 60, '600.00'),
(7, 7, 70, '700.00'),
(8, 8, 80, '800.00'),
(9, 9, 90, '900.00'),
(10, 10, 100, '1000.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `idProduto` int(11) NOT NULL,
  `Nome` varchar(45) DEFAULT NULL,
  `Descricao` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`idProduto`, `Nome`, `Descricao`) VALUES
(1, 'Roda 1', NULL),
(2, 'Roda 2', NULL),
(3, 'Volante 1', NULL),
(4, 'Volante 2', NULL),
(5, 'Tanque de Gasolina 1', NULL),
(6, 'Tanque de Gasolina 2', NULL),
(7, 'Tanque de Gasolina 3', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto_has_pecas`
--

CREATE TABLE `produto_has_pecas` (
  `idProduto` int(11) NOT NULL,
  `idPecas` int(11) NOT NULL,
  `Quantidade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produto_has_pecas`
--

INSERT INTO `produto_has_pecas` (`idProduto`, `idPecas`, `Quantidade`) VALUES
(1, 1, 1),
(1, 2, 1),
(1, 3, 1),
(2, 4, 1),
(2, 5, 1),
(3, 6, 1),
(4, 7, 1),
(5, 8, 1),
(6, 9, 1),
(7, 10, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`IdCliente`);

--
-- Indexes for table `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`idFornecedor`);

--
-- Indexes for table `fornecedor_has_pecas`
--
ALTER TABLE `fornecedor_has_pecas`
  ADD PRIMARY KEY (`idFornecedor`,`idPecas`),
  ADD KEY `fk_Fornecedor_has_Componente_Componente1_idx` (`idPecas`),
  ADD KEY `fk_Fornecedor_has_Componente_Fornecedor1_idx` (`idFornecedor`);

--
-- Indexes for table `notafiscal`
--
ALTER TABLE `notafiscal`
  ADD PRIMARY KEY (`idNotaFiscal`),
  ADD KEY `fk_NotaFiscal_Cliente1_idx` (`IdCliente`);

--
-- Indexes for table `notafiscal_has_produto`
--
ALTER TABLE `notafiscal_has_produto`
  ADD PRIMARY KEY (`idNotaFiscal`,`idProduto`),
  ADD KEY `fk_NotaFiscal_has_Produto_Produto1_idx` (`idProduto`),
  ADD KEY `fk_NotaFiscal_has_Produto_NotaFiscal1_idx` (`idNotaFiscal`);

--
-- Indexes for table `pecas`
--
ALTER TABLE `pecas`
  ADD PRIMARY KEY (`idPecas`);

--
-- Indexes for table `pedidodecompra`
--
ALTER TABLE `pedidodecompra`
  ADD PRIMARY KEY (`idPedidoDeCompra`),
  ADD KEY `fk_OrdemDeCompra_Fornecedor1_idx` (`idFornecedor`);

--
-- Indexes for table `pedidodecompra_has_pecas`
--
ALTER TABLE `pedidodecompra_has_pecas`
  ADD PRIMARY KEY (`idPedidoDeCompra`,`idPecas`),
  ADD KEY `fk_OrdemDeCompra_has_Componente_Componente1_idx` (`idPecas`),
  ADD KEY `fk_OrdemDeCompra_has_Componente_OrdemDeCompra1_idx` (`idPedidoDeCompra`);

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`idProduto`);

--
-- Indexes for table `produto_has_pecas`
--
ALTER TABLE `produto_has_pecas`
  ADD PRIMARY KEY (`idProduto`,`idPecas`),
  ADD KEY `fk_Produto_has_Componente_Componente1_idx` (`idPecas`),
  ADD KEY `fk_Produto_has_Componente_Produto1_idx` (`idProduto`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `IdCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `fornecedor`
--
ALTER TABLE `fornecedor`
  MODIFY `idFornecedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `notafiscal`
--
ALTER TABLE `notafiscal`
  MODIFY `idNotaFiscal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `pecas`
--
ALTER TABLE `pecas`
  MODIFY `idPecas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `pedidodecompra`
--
ALTER TABLE `pedidodecompra`
  MODIFY `idPedidoDeCompra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `produto`
--
ALTER TABLE `produto`
  MODIFY `idProduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `fornecedor_has_pecas`
--
ALTER TABLE `fornecedor_has_pecas`
  ADD CONSTRAINT `fk_Fornecedor_has_Componente_Componente1` FOREIGN KEY (`idPecas`) REFERENCES `pecas` (`idPecas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Fornecedor_has_Componente_Fornecedor1` FOREIGN KEY (`idFornecedor`) REFERENCES `fornecedor` (`idFornecedor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `notafiscal`
--
ALTER TABLE `notafiscal`
  ADD CONSTRAINT `fk_NotaFiscal_Cliente1` FOREIGN KEY (`IdCliente`) REFERENCES `cliente` (`IdCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `notafiscal_has_produto`
--
ALTER TABLE `notafiscal_has_produto`
  ADD CONSTRAINT `fk_NotaFiscal_has_Produto_NotaFiscal1` FOREIGN KEY (`idNotaFiscal`) REFERENCES `notafiscal` (`idNotaFiscal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_NotaFiscal_has_Produto_Produto1` FOREIGN KEY (`idProduto`) REFERENCES `produto` (`idProduto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `pedidodecompra`
--
ALTER TABLE `pedidodecompra`
  ADD CONSTRAINT `fk_OrdemDeCompra_Fornecedor1` FOREIGN KEY (`idFornecedor`) REFERENCES `fornecedor` (`idFornecedor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `pedidodecompra_has_pecas`
--
ALTER TABLE `pedidodecompra_has_pecas`
  ADD CONSTRAINT `fk_OrdemDeCompra_has_Componente_Componente1` FOREIGN KEY (`idPecas`) REFERENCES `pecas` (`idPecas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_OrdemDeCompra_has_Componente_OrdemDeCompra1` FOREIGN KEY (`idPedidoDeCompra`) REFERENCES `pedidodecompra` (`idPedidoDeCompra`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `produto_has_pecas`
--
ALTER TABLE `produto_has_pecas`
  ADD CONSTRAINT `fk_Produto_has_Componente_Componente1` FOREIGN KEY (`idPecas`) REFERENCES `pecas` (`idPecas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Produto_has_Componente_Produto1` FOREIGN KEY (`idProduto`) REFERENCES `produto` (`idProduto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
