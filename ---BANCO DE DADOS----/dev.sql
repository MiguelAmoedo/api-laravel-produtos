-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30/07/2024 às 17:41
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dev`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'xbox', '2024-07-30 19:24:36', '2024-07-30 19:24:36'),
(3, 'Jogos', '2024-07-30 19:35:38', '2024-07-30 19:35:38'),
(4, 'Carros', '2024-07-30 19:35:50', '2024-07-30 19:35:50');

-- --------------------------------------------------------

--
-- Estrutura para tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_07_27_012110_create_categories_table', 1),
(6, '2024_07_27_012138_create_products_table', 1),
(7, '2024_07_30_152223_add_dev_to_products_table', 1),
(8, '2024_07_30_153508_add_dev_to_products_table', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `price` double UNSIGNED NOT NULL,
  `expiry_date` date NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `expiry_date`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Xbox Series X', 'Console de jogos Xbox Series X', 4999.99, '2024-12-31', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWusJH4Enf6ZDbkiJSbGwyduLvy6_F2E8ikg&s', 1, NULL, NULL),
(2, 'Xbox Series S', 'Console de jogos Xbox Series S', 2999.99, '2024-12-31', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWusJH4Enf6ZDbkiJSbGwyduLvy6_F2E8ikg&s', 1, NULL, NULL),
(3, 'Controle Xbox Wireless', 'Controle sem fio para Xbox', 349.99, '2024-12-31', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWusJH4Enf6ZDbkiJSbGwyduLvy6_F2E8ikg&s', 1, NULL, NULL),
(4, 'Carregador Xbox Dual', 'Carregador para dois controles Xbox', 149.99, '2024-12-31', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWusJH4Enf6ZDbkiJSbGwyduLvy6_F2E8ikg&s', 1, NULL, NULL),
(5, 'Fone de Ouvido Xbox', 'Fone de ouvido oficial Xbox', 299.99, '2024-12-31', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWusJH4Enf6ZDbkiJSbGwyduLvy6_F2E8ikg&s', 1, NULL, NULL),
(6, 'The Last of Us', 'Jogo de ação e aventura', 199.99, '2025-12-31', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTs_95VAJ_gjtyJ36dmNstGkhlux5G5lwEhOQ&s', 3, NULL, NULL),
(7, 'Mario Kart 8', 'Jogo de corrida Mario Kart 8', 179.99, '2025-12-31', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTs_95VAJ_gjtyJ36dmNstGkhlux5G5lwEhOQ&s', 3, NULL, NULL),
(8, 'Halo Infinite', 'Jogo de tiro Halo Infinite', 249.99, '2025-12-31', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnHYsx74p4TkoFVb61ttoqH2EFM37Slz6inA&s', 3, NULL, NULL),
(9, 'FIFA 23', 'Jogo de futebol FIFA 23', 299.99, '2025-12-31', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTs_95VAJ_gjtyJ36dmNstGkhlux5G5lwEhOQ&s', 3, NULL, NULL),
(10, 'Assassin\'s Creed Valhalla', 'Jogo de ação Assassin\'s Creed Valhalla', 219.99, '2025-12-31', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTs_95VAJ_gjtyJ36dmNstGkhlux5G5lwEhOQ&s', 3, NULL, NULL),
(11, 'Nissan Versa', 'Sedan compacto Nissan Versa', 89999.99, '2025-12-31', 'https://quatrorodas.abril.com.br/wp-content/uploads/2016/11/5658c96952657372afc0262bnissan-new-versa-1.jpeg?quality=70&strip=all', 4, NULL, NULL),
(12, 'Chevrolet S10', 'Picape Chevrolet S10', 119999.99, '2025-12-31', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5HY5_QKYbbmmLU9IMOwnkltpTdIbj-i7d7w&s', 4, NULL, NULL),
(13, 'Ford Ranger', 'Picape Ford Ranger', 109999.99, '2025-12-31', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5HY5_QKYbbmmLU9IMOwnkltpTdIbj-i7d7w&s', 4, NULL, NULL),
(14, 'Volkswagen Polo', 'Hatchback Volkswagen Polo', 74999.99, '2025-12-31', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5HY5_QKYbbmmLU9IMOwnkltpTdIbj-i7d7w&s', 4, NULL, NULL),
(15, 'Honda Civic', 'Sedan Honda Civic', 94999.99, '2025-12-31', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5HY5_QKYbbmmLU9IMOwnkltpTdIbj-i7d7w&s', 4, NULL, NULL),
(16, 'novo', 'produto top', 213, '2024-08-30', '{   \"name\": \"produto1\",   \"description\": \"produto top\",   \"price\": \"123\",   \"expiry_date\": \"2020-10-10\",   \"image\": \"url\",   \"category_id\": 1 }', 3, '2024-07-30 19:41:07', '2024-07-30 19:41:07');

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'marcos', 'marcos@email.com', '$2y$10$NLwMYRWAdnnz8oe.RDxyfuY0OvyiLlaYxckj1wmCNXwfCERroLRR2', NULL, '2024-07-30 19:25:24', '2024-07-30 19:25:24'),
(2, 'miguel', 'email@email.com', '$2y$10$V8GvJn677HuHV/hIM/3uVeGTm4/ESsE6N2t.kJiOZuPI.5jeyi2fq', NULL, '2024-07-30 19:40:36', '2024-07-30 19:40:36');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices de tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
