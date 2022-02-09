-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09-Fev-2022 às 18:06
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `marvel`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `events`
--

INSERT INTO `events` (`id`, `created_at`, `updated_at`, `title`, `description`, `valor`, `image`) VALUES
(1, '2022-02-08 22:42:24', '2022-02-08 22:42:24', 'X-Men: Guerras Asgardianas: Marvel Vintage', 'No Círculo Polar Ártico, os X-Men e a Tropa Alfa encontram um poder capaz de salvar o mundo... ao custo de destruir algo muito importante.', 51, '5c9bbf272f5d90531e821d3459ea2a85'),
(2, '2022-02-08 22:43:27', '2022-02-08 22:43:27', 'X-Men: A Canção do Carrasco: As Maiores Sagas dos X-Men Capa', 'Quando Ciclope e Fênix são sequestrados - e Cable aparentemente assassina o Professox X - os X-Men, o X-Factor e a X-Force vão a guerra.', 14, '789518ba657e23b06ddf1ad4c26ee837'),
(3, '2022-02-08 22:45:10', '2022-02-08 22:45:10', 'Batman: Cavaleiro Branco: Edição de Luxo Capa dura', 'A minissérie escrita e desenhada por Sean Murphy, agora reunida numa edição de luxo! Batman: O Cavaleiro Branco acompanha a transformação do Coringa no cidadão comum Jack Napier. Depois de se reconciliar com a parceira de que tanto abusou, a Arlequina, ele coloca em ação uma campanha meticulosamente planejada para derrubar aquele que acredita ser o verdadeiro inimigo de Gotham City: o Batman!', 34, '472b255c3be60169e6953fa580ea145d'),
(4, '2022-02-08 22:54:13', '2022-02-08 22:54:13', 'Mulher-Maravilha: Terra Morta Capa dura', 'Ao acordar de um sono profundo que durou alguns séculos, Diana se vê numa Terra que se tornou um deserto nuclear. Presa num futuro sombrio e perigoso, a Mulher-Maravilha protege a última cidade humana, que sofre ataques constantes de monstros titânicos. Em meio às batalhas, os segredos da Terra Morta vão sendo revelados... e Diana pode ser uma das responsáveis pela destruição do planeta.', 50, '350e93ac27183c957f325311b2163c38'),
(5, '2022-02-08 23:03:03', '2022-02-08 23:03:03', 'Superman: Realidades Paralelas Capa dura', 'Seja em uma realidade em que Krypton foi destruído mil anos antes do que em nosso universo, em uma que outro casal o adotou, ou em um mundo onde um criminoso porta o lendário símbolo do Superman, José Luís Garcia-López mostra todo sua genialidade ao retratar o maior herói de todos!', 30, '5c0f5f61bff572988c4e0322989a9e80'),
(6, '2022-02-08 23:24:55', '2022-02-08 23:24:55', 'Superman: Para O Alto E Avante Capa dura', 'A estelar equipe criativa composta pelo roteirista Tom King e o desenhista Andy Kubert respondem à questão: quão longe o Superman iria para trazer uma única criança para casa? Alienígenas sequestraram uma menina em Metrópolis, e a cada parada no caminho, o Homem de Aço enfrenta novos mistérios e desafios. Quanto mais ele se aproxima, mais distante parece estar de resgatar a garotinha. E quem protege Metrópolis em sua ausência? (Superman: Up In The Sky 1-6)', 14, 'e4d0e875919d73f3ea7594bd43e26c0d'),
(7, '2022-02-09 04:39:29', '2022-02-09 04:39:29', 'Homem-Aranha: Um Momento no Tempo Capa dura', 'A pergunta vinha assombrando os leitores do Aranha por muito tempo... e então foram respondidas nessa saga! O que realmente aconteceu com o casamento de Peter e Mary Jane após o pacto com Mefisto? O que MJ sabia sobre o Aranha depois desse traumático evento? E como Um Novo Dia afetou o Universo Marvel como um todo? Joe Quesada e Paolo Riviera colocam tudo a pratos limpos nessa emocionante e polêmica história do herói, encadernada pela primeira vez no Brasil!', 30, '215cb4d139b5f24bb049a39d0c757e41'),
(8, '2022-02-09 04:54:20', '2022-02-09 04:54:20', 'Homem-Aranha: Desmascarado: Marvel-Verse', 'O que seria do Homem-Aranha se um dia sua identidade fosse revelada ao mundo inteiro? É para responder a essa intrigante pergunta (assim como faz o novo filme do Aracnídeo, Homem-Aranha: Sem Volta Para Casa) que grandes criadores que já passaram pelo título do herói arquitetaram as aventuras contidas nessa edição! Uma introdução emocionante para novos leitores e uma antologia interessantíssima para quem já é fã de carteirinha do Escalador de Paredes nas HQs!', 34, 'c217b29c64cfb53db210187bfb8cd61b'),
(9, '2022-02-09 07:12:28', '2022-02-09 07:12:28', 'Quarteto Fantástico: Consertar Tudo: Marvel Essenciais', 'Um clássico moderno está de volta! Dentro de uma sala mantida em segredo até mesmo de seus familiares, Reed Richards rabiscou nas paredes cem das maiores e mais ousadas ideias que seu cérebro poderia produzir. E ele acaba de acrescentou uma 101º, a mais audaciosa de todas: \"Consertar Tudo.\" Porém, o grande cérebro do Quarteto Fantástico descobrirá que resolver tudo demanda um grande custo. Talvez alto demais!', 35, '5992ee1edc1c636b7bb857fb513407d8'),
(10, '2022-02-09 07:13:50', '2022-02-09 07:13:50', 'Vingadores: A Queda: Marvel Essenciais Capa dura', 'O que acontece quando um evento traumático que se achava escondido nas profundezas de um ser poderoso e transtornado retorna à superfície? Talvez não haja distinção entre amigos, inimigos ou simples inocentes quando a dor da perda é maior que a razão. Quando um ataque completamente devastador e inesperado destrói a mansão dos Vingadores, o que restou dos heróis precisa juntar os cacos para tentar descobrir o que está acontecendo. mas talvez já seja tarde demais!', 99, '810c505dc5407fe3df3804f1e6a85c98'),
(11, '2022-02-09 07:17:06', '2022-02-09 07:17:06', 'Homem de Ferro: Extremis: Marvel Essenciais', 'O início de uma espetacular era para o Homem de Ferro! Warren Ellis e Adi Granov juntam forças para recriar o herói e colocá-lo definitivamente no século 21, onde um horizonte de assustadoras tecnologias ameaçam soterrar a frágil raça humana! O que é Extremis? Quem é o responsável? E o que Tony Stark pode fazer para eliminar um perigo que supera até o Homem de Ferro?', 89, 'c6d3801789484e4ff1245265d3e727ad'),
(12, '2022-02-09 07:24:19', '2022-02-09 07:24:19', 'Venom: Origem Sombria: Marvel Essenciais Capa dura', 'Venom é hoje mais do que \"apenas\" um dos maiores inimigos do Homem-Aranha de todos os tempos. Nos últimos anos, ele se transformou em um personagem cabal na construção de todo o Universo Marvel! Conheça aqui, nessa história sensacional de Zeb Wells e Iban Coello, como um simples e medíocre jornalista veio a se tornar uma das maiores ameaças à vida de Peter Parker. e muito mais que isso!', 35, '9b35ba4b2be12c8d38b1ef381829ce62');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
