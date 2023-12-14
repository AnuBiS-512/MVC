-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2023 at 09:07 PM
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
CREATE DATABASE IF NOT EXISTS `mvc` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mvc`;

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
(12, 'holoasdifhjuasdiuf', '2023-12-13 21:44:21', '2023-12-13 21:44:21'),
(13, 'securite', '2023-12-14 09:58:04', '2023-12-14 09:58:04'),
(14, 'hhgh', '2023-12-14 09:58:24', '2023-12-14 09:58:24');

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
(5, 'ayoub ebnali', 450, 5, '2023-12-13 21:46:41', '2023-12-13 21:46:41'),
(6, 'fatima ait-boo', 350, 6, '2023-12-14 09:57:09', '2023-12-14 09:57:09'),
(7, 'The coder bob', 750, 7, '2023-12-14 19:06:27', '2023-12-14 19:06:27');

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
(15, 1, 'Sarah said: \'Hey, I\'ve been stuck on this bug for hours, and we\'re running out of time. Can you help me figure this out?\'', 'Your team is working on a tight deadline, and a colleague, Sarah, who is struggling with a complex bug, approaches you. She looks stressed and asks for your assistance.', 'Ignore the request to focus on your own tasks.', 0, 'Politely decline, stating your workload.', 50, 'Offer help but explain you have limited time.', 50, 'Prioritize and find time to assist, contributing to the team\'s success.', 100, 'Choosing this would lead to negative consequences as teamwork is essential during tight deadlines.', 'this one shows some willingness to help but lacks commitment to prioritizing the team\'s success.', 'this is the correct answer, reflecting teamwork, time management, and commitment to project success.', '2023-12-14 16:36:24', '2023-12-14 16:36:24'),
(16, 1, 'Alex\'s said: \"I think we should implement it this way to optimize performance. What do you all think?\"', 'During a team meeting, you disagree with a colleague, Alex\'s, approach to a critical code implementation. Alex seems confident in his method.', 'Publicly criticize the idea.', 0, 'Keep quiet and discuss it later privately.', 50, 'Express your disagreement respectfully.', 100, 'Suggest an alternative without explaining.', 0, 'Option 1 would harm team dynamics and hinder collaboration.', 'Option 2 is a step in the right direction by avoiding public conflict, but it lacks open communication.', 'Option 3 is the ideal answer, demonstrating communication skills and a collaborative approach.', '2023-12-14 19:24:00', '2023-12-14 19:24:00'),
(17, 1, 'Project Manager said : \"We need someone to take on this task, and I believe you\'re up for the challenge. Can you handle it?\"', 'Your project manager assigns you a task involving a programming language you\'re not familiar with.', 'Refuse the task outright.', 0, 'Accept it but express dissatisfaction.', 50, 'Accept it and seek guidance when needed.', 100, 'Accept it and struggle in silence.', 0, 'Option 1 shows a lack of adaptability and willingness to take on challenges.', 'Option 2 demonstrates a degree of acceptance but lacks a proactive approach to seeking guidance.', 'Option 3 is the ideal answer, showcasing a willingness to learn and seek help when necessary.', '2023-12-14 19:26:58', '2023-12-14 19:26:58'),
(18, 1, 'Your Team Lead said : \"We\'re about to deliver the project, and I need everyone to ensure their code is error-free. Any issues could have severe consequences. Are we all set?\"', 'You discover a critical error in your code just before a major project deadline. The error could potentially jeopardize the project\'s success.', 'Panic and ignore the issue.', 0, 'Inform your team and seek help.', 50, 'Attempt to fix it without informing anyone.', 50, 'Inform your team and propose a plan to resolve the issue.', 100, 'Option 1 is a risky choice that could lead to severe consequences for the project.', 'Option 3 shows initiative but lacks transparency and collaboration.', 'Option 4 is the correct choice, emphasizing transparency, responsibility, and problem-solving.', '2023-12-14 19:30:01', '2023-12-14 19:30:01'),
(19, 1, 'Team Lead said: \"We\'ve been facing delays recently, and I\'d like to get your input on any issues affecting the team\'s progress. What are your thoughts?\"', 'A team member consistently misses deadlines, affecting the entire project. Your team lead asks for your opinion during a project review.', 'Complain to other team members.', 0, 'Report the issue to the project manager.', 50, 'Ignore it and compensate for their work.', 50, 'Discuss the problem with the team member privately.', 100, 'Option 1 promotes negativity and doesn\'t contribute to problem-solving.', 'Option 3 shows a degree of responsibility but lacks addressing the core issue.', 'Option 4 is the best approach, promoting open communication and conflict resolution within the team.', '2023-12-14 19:41:04', '2023-12-14 19:41:04'),
(20, 1, 'Team Lead said: \"We\'re considering adopting a new coding framework, and opinions are divided. What\'s your take on this?\"', 'Your team is divided on adopting a new coding framework. The debate is becoming heated, and the team lead asks for your opinion.', 'Insist on your viewpoint.', 0, 'Let others decide without your input.', 50, 'Facilitate a team discussion to find common ground.', 100, 'Leave the decision to the team leader.', 0, 'this option can lead to conflicts and hinder effective decision-making.', 'this option  avoids conflicts but lacks active participation in the decision-making process.', 'this option is the correct answer, demonstrating leadership and collaboration in decision-making.', '2023-12-14 19:46:12', '2023-12-14 19:46:12'),
(21, 1, 'Colleague said: \"I\'ve reviewed your code, and I think there are areas for improvement. Let\'s discuss how we can enhance it.\"', 'Your code undergoes a peer review, and a colleague provides constructive feedback suggesting improvements.', 'Dismiss the feedback as irrelevant.', 0, 'Accept the feedback but don\'t implement changes.', 50, 'Implement some changes based on feedback.', 50, 'Appreciate the feedback and make necessary improvements.', 100, 'Option 1 disregards constructive feedback and inhibits personal and professional growth.', 'Option 2 acknowledges feedback but lacks commitment to improvement.', 'Option 4 is the best choice, emphasizing a positive attitude towards constructive criticism and continuous improvement.', '2023-12-14 19:47:18', '2023-12-14 19:47:18'),
(22, 1, 'Jack said: \"I\'ve got so much on my plate, and I\'m struggling to keep up. I don\'t know what to do.\"', 'Your team is under pressure to deliver a project, and a team member, Jack, appears overwhelmed with his workload. Jack is struggling, and it\'s affecting his performance.', 'Ignore their struggle and focus on your work.', 0, 'Offer assistance but without considering their feelings.', 50, 'Express concern and offer help in a supportive manner.', 100, 'Inform the team leader without talking to the team member.', 0, 'Option 1 lacks empathy and teamwork, and it ignores the well-being of the team.', 'Option 2 shows willingness to help but lacks consideration for Jack\'s feelings.', 'Option 3 is the correct choice, showing empathy, teamwork, and a proactive approach to problem-solving.', '2023-12-14 19:48:35', '2023-12-14 19:48:35'),
(23, 1, 'Your Supervisor said : \"We need to ensure the security of our systems. If you find any vulnerabilities, report them immediately. It\'s crucial.\"', 'While working on a project, you discover a security vulnerability that could compromise sensitive data.', 'Ignore it since it\'s not your responsibility.', 0, 'Share it on social media to raise awareness.', 50, 'Report it to the security team and your supervisor.', 100, 'Attempt to fix it without reporting.', 0, 'Option 1 neglects responsibility for the security of the project.', 'Option 2 is a well-intentioned effort but not the appropriate channel for reporting.', 'Option 3 is the best approach, prioritizing responsible disclosure and collaboration with relevant teams.', '2023-12-14 19:49:50', '2023-12-14 19:49:50'),
(24, 1, 'Team Lead\'s Speech: \"We\'re exploring new project management tools to enhance our workflow. What are your thoughts on this?\"', 'Your team is considering adopting a new project management tool to improve workflow. Your team lead asks for your input during a meeting.', 'Dismiss the new technology without investigation.', 0, 'Accept the decision without expressing your opinion.', 50, 'Research and present the pros and cons of the new technology.', 100, 'Let the team leader make the decision without your input.', 0, 'Option 1 closes the door to innovation and hinders the team\'s progress.', 'Option 2 is passive and doesn\'t contribute to the decision-making process.', 'Option 3 is the correct answer, showcasing a proactive approach to decision-making by providing valuable input.', '2023-12-14 19:53:40', '2023-12-14 19:53:40');

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
(5, 6, 100, 2, 0, 3, 0, 4, 100, 8, 0, 11, 100, 10, 100, 1, 50, 5, 0, 7, 0, '2023-12-13 21:45:17', '2023-12-13 21:46:24'),
(6, 3, 100, 8, 50, 1, 50, 10, 100, 6, 0, 2, 0, 9, 0, 5, 0, 11, 50, 7, 0, '2023-12-14 09:54:33', '2023-12-14 09:56:44'),
(7, 23, 100, 18, 100, 15, 100, 20, 0, 17, 0, 19, 100, 21, 100, 24, 50, 22, 100, 16, 100, '2023-12-14 18:57:23', '2023-12-14 19:06:19');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leaders`
--
ALTER TABLE `leaders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `session_question`
--
ALTER TABLE `session_question`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"mvc\",\"table\":\"questions\"},{\"db\":\"mvc\",\"table\":\"careers\"},{\"db\":\"mvc\",\"table\":\"migrations\"},{\"db\":\"mvc\",\"table\":\"leaders\"},{\"db\":\"mvc\",\"table\":\"session_question\"},{\"db\":\"mvc2.0\",\"table\":\"users\"},{\"db\":\"mvc2.0\",\"table\":\"situations\"},{\"db\":\"mvc2.0\",\"table\":\"questions\"},{\"db\":\"mvc2.0\",\"table\":\"careers\"},{\"db\":\"mvc2.0\",\"table\":\"games\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'mvc', 'questions', '{\"CREATE_TIME\":\"2023-12-10 22:26:19\"}', '2023-12-12 23:05:11');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-12-13 22:57:16', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
