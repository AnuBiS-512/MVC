-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2023 at 11:57 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mvc`
--

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

CREATE TABLE `careers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Software Developer', '2023-12-12 23:00:42', '2023-12-12 23:00:42'),
(2, 'Database Manager', '2023-12-12 23:00:42', '2023-12-12 23:00:42'),
(3, 'Human Resource', '2023-12-12 23:00:42', '2023-12-12 23:00:42'),
(4, 'Graphic Designer', '2023-12-12 23:00:42', '2023-12-12 23:00:42'),
(5, 'Data Scientist', '2023-12-12 23:00:42', '2023-12-12 23:00:42'),
(6, 'Project Manager', '2023-12-12 23:00:42', '2023-12-12 23:00:42'),
(7, 'Marketing Specialist', '2023-12-12 23:00:42', '2023-12-12 23:00:42'),
(8, 'Human ressources', '2023-12-13 19:43:45', '2023-12-13 19:43:45'),
(9, 'Data Analist', '2023-12-13 19:45:53', '2023-12-13 19:45:53'),
(10, 'boom', '2023-12-13 19:46:29', '2023-12-13 19:46:29'),
(11, 'boom2', '2023-12-13 19:46:57', '2023-12-13 19:46:57'),
(12, 'holoasdifhjuasdiuf', '2023-12-13 21:44:21', '2023-12-13 21:44:21');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `leaders`
--

CREATE TABLE `leaders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `points` int(11) NOT NULL,
  `id_session_question` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leaders`
--

INSERT INTO `leaders` (`id`, `full_name`, `points`, `id_session_question`, `created_at`, `updated_at`) VALUES
(1, 'Aymane Benkhouya', 150, 3, '2023-12-13 14:03:45', '2023-12-13 14:03:45'),
(2, 'Aymane Benkhouya', 50, 3, '2023-12-13 14:04:54', '2023-12-13 14:04:54'),
(3, 'Aymane Benkhouya', 250, 3, '2023-12-13 14:05:24', '2023-12-13 14:05:24'),
(4, 'Someone intresting', 300, 4, '2023-12-13 14:20:05', '2023-12-13 14:20:05'),
(5, 'ayoub ebnali', 450, 5, '2023-12-13 21:46:41', '2023-12-13 21:46:41');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_09_144022_create_careers_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `career_id` bigint(20) UNSIGNED NOT NULL,
  `question` text NOT NULL,
  `situation` text NOT NULL,
  `answer_1` text NOT NULL,
  `points_1` int(11) NOT NULL,
  `answer_2` text NOT NULL,
  `points_2` int(11) NOT NULL,
  `answer_3` text NOT NULL,
  `points_3` int(11) NOT NULL,
  `answer_4` text NOT NULL,
  `points_4` int(11) NOT NULL,
  `feedback_0` text NOT NULL,
  `feedback_50` text NOT NULL,
  `feedback_100` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `career_id`, `question`, `situation`, `answer_1`, `points_1`, `answer_2`, `points_2`, `answer_3`, `points_3`, `answer_4`, `points_4`, `feedback_0`, `feedback_50`, `feedback_100`, `created_at`, `updated_at`) VALUES
(1, 1, 'q1', 'Situation for Question 1', 'Answer 1 for Question 1', 0, 'Answer 2 for Question 1', 0, 'Answer 3 for Question 1', 50, 'Answer 4 for Question 1', 100, 'Feedback for 0 points on Question 1', 'Feedback for 50 points on Question 1', 'Feedback for 100 points on Question 1', '2023-12-12 23:05:33', '2023-12-12 23:05:33'),
(2, 1, 'q2', 'Situation for Question 2', 'Answer 1 for Question 2', 100, 'Answer 2 for Question 2', 0, 'Answer 3 for Question 2', 0, 'Answer 4 for Question 2', 0, 'Feedback for 0 points on Question 2', 'Feedback for 50 points on Question 2', 'Feedback for 100 points on Question 2', '2023-12-12 23:05:33', '2023-12-12 23:05:33'),
(3, 1, 'q3', 'Situation for Question 3', 'Answer 1 for Question 3', 0, 'Answer 2 for Question 3', 100, 'Answer 3 for Question 3', 0, 'Answer 4 for Question 3', 0, 'Feedback for 0 points on Question 3', 'Feedback for 50 points on Question 3', 'Feedback for 100 points on Question 3', '2023-12-12 23:05:33', '2023-12-12 23:05:33'),
(4, 1, 'q4', 'Situation for Question 4', 'Answer 1 for Question 4', 0, 'Answer 2 for Question 4', 0, 'Answer 3 for Question 4', 100, 'Answer 4 for Question 4', 0, 'Feedback for 0 points on Question 4', 'Feedback for 50 points on Question 4', 'Feedback for 100 points on Question 4', '2023-12-12 23:05:33', '2023-12-12 23:05:33'),
(5, 1, 'q5', 'Situation for Question 5', 'Answer 1 for Question 5', 50, 'Answer 2 for Question 5', 0, 'Answer 3 for Question 5', 0, 'Answer 4 for Question 5', 0, 'Feedback for 0 points on Question 5', 'Feedback for 50 points on Question 5', 'Feedback for 100 points on Question 5', '2023-12-12 23:05:33', '2023-12-12 23:05:33'),
(6, 1, 'q6', 'Situation for Question 6', 'Answer 1 for Question 6', 0, 'Answer 2 for Question 6', 100, 'Answer 3 for Question 6', 0, 'Answer 4 for Question 6', 0, 'Feedback for 0 points on Question 6', 'Feedback for 50 points on Question 6', 'Feedback for 100 points on Question 6', '2023-12-12 23:05:33', '2023-12-12 23:05:33'),
(7, 1, 'q7', 'Situation for Question 7', 'Answer 1 for Question 7', 0, 'Answer 2 for Question 7', 0, 'Answer 3 for Question 7', 0, 'Answer 4 for Question 7', 100, 'Feedback for 0 points on Question 7', 'Feedback for 50 points on Question 7', 'Feedback for 100 points on Question 7', '2023-12-12 23:05:33', '2023-12-12 23:05:33'),
(8, 1, 'q8', 'Situation for Question 8', 'Answer 1 for Question 8', 0, 'Answer 2 for Question 8', 50, 'Answer 3 for Question 8', 0, 'Answer 4 for Question 8', 0, 'Feedback for 0 points on Question 8', 'Feedback for 50 points on Question 8', 'Feedback for 100 points on Question 8', '2023-12-12 23:05:33', '2023-12-12 23:05:33'),
(9, 1, 'q9', 'Situation for Question 9', 'Answer 1 for Question 9', 100, 'Answer 2 for Question 9', 0, 'Answer 3 for Question 9', 0, 'Answer 4 for Question 9', 0, 'Feedback for 0 points on Question 9', 'Feedback for 50 points on Question 9', 'Feedback for 100 points on Question 9', '2023-12-12 23:05:33', '2023-12-12 23:05:33'),
(10, 1, 'q10', 'Situation for Question 10', 'Answer 1 for Question 10', 0, 'Answer 2 for Question 10', 0, 'Answer 3 for Question 10', 0, 'Answer 4 for Question 10', 100, 'Feedback for 0 points on Question 10', 'Feedback for 50 points on Question 10', 'Feedback for 100 points on Question 10', '2023-12-12 23:05:33', '2023-12-12 23:05:33'),
(11, 1, 'q1', 'ss1', 'a1', 100, 'a2', 50, 'a3', 50, 'a4', 100, 'f0', 'f50', 'f100', '2023-12-13 21:38:28', '2023-12-13 21:38:28'),
(12, 2, 'q1', 'ss1', 'a1', 100, 'a2', 50, 'a3', 0, 'a4', 0, 'f0', 'f50', 'f100', '2023-12-13 21:43:31', '2023-12-13 21:43:31'),
(13, 2, 'q1', 'ss1', 'a1', 0, 'a2', 0, 'a3', 0, 'a4', 0, 'f0', 'f50', 'f100', '2023-12-13 21:44:33', '2023-12-13 21:44:33');

-- --------------------------------------------------------

--
-- Table structure for table `session_question`
--

CREATE TABLE `session_question` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id_1` bigint(20) UNSIGNED NOT NULL,
  `points_1` int(11) DEFAULT NULL,
  `question_id_2` bigint(20) UNSIGNED NOT NULL,
  `points_2` int(11) DEFAULT NULL,
  `question_id_3` bigint(20) UNSIGNED NOT NULL,
  `points_3` int(11) DEFAULT NULL,
  `question_id_4` bigint(20) UNSIGNED NOT NULL,
  `points_4` int(11) DEFAULT NULL,
  `question_id_5` bigint(20) UNSIGNED NOT NULL,
  `points_5` int(11) DEFAULT NULL,
  `question_id_6` bigint(20) UNSIGNED NOT NULL,
  `points_6` int(11) DEFAULT NULL,
  `question_id_7` bigint(20) UNSIGNED NOT NULL,
  `points_7` int(11) DEFAULT NULL,
  `question_id_8` bigint(20) UNSIGNED NOT NULL,
  `points_8` int(11) DEFAULT NULL,
  `question_id_9` bigint(20) UNSIGNED NOT NULL,
  `points_9` int(11) DEFAULT NULL,
  `question_id_10` bigint(20) UNSIGNED NOT NULL,
  `points_10` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `session_question`
--

INSERT INTO `session_question` (`id`, `question_id_1`, `points_1`, `question_id_2`, `points_2`, `question_id_3`, `points_3`, `question_id_4`, `points_4`, `question_id_5`, `points_5`, `question_id_6`, `points_6`, `question_id_7`, `points_7`, `question_id_8`, `points_8`, `question_id_9`, `points_9`, `question_id_10`, `points_10`, `created_at`, `updated_at`) VALUES
(1, 8, 0, 1, 50, 10, 0, 3, 100, 2, 0, 7, 0, 5, 0, 9, 100, 4, 100, 6, 0, '2023-12-12 22:10:16', '2023-12-12 22:10:51'),
(2, 1, NULL, 8, NULL, 5, NULL, 10, NULL, 6, NULL, 7, NULL, 2, NULL, 4, NULL, 3, NULL, 9, NULL, '2023-12-13 12:30:31', '2023-12-13 12:30:31'),
(3, 10, 0, 4, 0, 6, 0, 7, 0, 2, 100, 9, 0, 8, 0, 3, 0, 5, 0, 1, 50, '2023-12-13 12:32:35', '2023-12-13 13:46:09'),
(4, 8, 0, 5, 0, 3, 0, 10, 0, 6, 100, 1, 100, 7, 0, 2, 0, 4, 0, 9, 100, '2023-12-13 14:19:17', '2023-12-13 14:19:55'),
(5, 6, 100, 2, 0, 3, 0, 4, 100, 8, 0, 11, 100, 10, 100, 1, 50, 5, 0, 7, 0, '2023-12-13 21:45:17', '2023-12-13 21:46:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `careers`
--
ALTER TABLE `careers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `leaders`
--
ALTER TABLE `leaders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_career_id_foreign` (`career_id`);

--
-- Indexes for table `session_question`
--
ALTER TABLE `session_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `careers`
--
ALTER TABLE `careers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leaders`
--
ALTER TABLE `leaders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `session_question`
--
ALTER TABLE `session_question`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_career_id_foreign` FOREIGN KEY (`career_id`) REFERENCES `careers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
