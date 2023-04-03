-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2020 at 02:46 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `herosols_cosmos`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blogs`
--

CREATE TABLE `tbl_blogs` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `slug` varchar(600) NOT NULL,
  `detail` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_blogs`
--

INSERT INTO `tbl_blogs` (`id`, `cat_id`, `title`, `slug`, `detail`, `image`, `meta_description`, `meta_keywords`, `date`) VALUES
(1, 1, 'When Do Dogs Stop Growing?', 'when-do-dogs-stop-growing', '<p>Trainer Annie Grossman of School for the Dogs, one of NYC&rsquo;s most respected dog training centers, has plenty of wisdom to share with dog people. She covers common dog behavior questions and training tips in her weekly podcast. We&rsquo;ll be sharing some of those responses right here in a regular feature!</p>\r\n\r\n<p>Have a training question of your own? Check out Annie&rsquo;s blog and click on &ldquo;Ask Annie.&rdquo;</p>\r\n\r\n<h3>Help! I&rsquo;m Moving My Country Dog to the City</h3>\r\n\r\n<p>Dear Ava,</p>\r\n\r\n<p>Transitioning a new dog to the city can certainly be stressful, but I do believe that, if your dog can make it in New York City, like the song says, he can make it anywhere.</p>\r\n\r\n<p>In fact, some trainers refer to dogs who develop &ldquo;suburban dog syndrome&rdquo; when they&rsquo;re raised behind pPFSCbial white picket fences&mdash; these dogs can end up being easily spooked by novel things since their daily intake of new information is limited to what&rsquo;s within their yard.</p>\r\n\r\n<p>Even if they get a walk a day, it&rsquo;s unlikely a dog in a rural or suburban neighborhood will encounter more than a handful of new dogs, people, or stimuli in a given walk.</p>\r\n\r\n<p>Compare this to the dog who grows up in a metropolitan area and may be exposed to dozens of dogs, hundreds of people, and god-only-knows what kind of stimuli on any given walk. I mean, is that guy approaching us wearing a suit made out of plastic bags and soup cans? Why yes, yes he is.</p>\r\n\r\n<p>What&rsquo;s more, behaviors that might be tolerated on a leash when you have all the space in the world may not be safe or desired when you&rsquo;re on a city sidewalk.</p>\r\n\r\n<p>Fortunately, it&rsquo;s absolutely possible for your dog and you to learn to co-exist happily during what will be a new kind of joint outing. All you need is to focus on how you can socialize your dog to new things, and encourage the behaviors you want during walks.</p>\r\n\r\n<p>Here are some tips on gear and training protocol that will help you both as you transition to city life.</p>\r\n\r\n<h3>1. TOSS THAT RETRACTABLE LEASH</h3>\r\n\r\n<p>Retractable leashes, which can change length based on the click of a button, mean that the radius wherein a dog can go is not fixed.</p>\r\n\r\n<p>I don&rsquo;t mind using a retractable leash when I&rsquo;m in a wide open space with my dog, but for leash walking on a busy sidewalk, I think it defeats the major purpose of having your dog on a leash to begin with.</p>\r\n\r\n<p>You want to teach your dog that he generally needs to be close to you and that he&rsquo;s allowed with in a fixed radius controlled by the leash, not by his whim.</p>\r\n\r\n<p>Another problem with retractable leashes is that they usually have very thin cords, which can snap or twist around dog or human body parts. Google &ldquo;Retractable Leash Injuries&rdquo; if you dare.</p>\r\n\r\n<p>What&rsquo;s more, if dropped by mistake, their heavy handles can snap towards the dog, which may result in a big plastic handle hurling in the direction of your dog&rsquo;s face, which isn&rsquo;t something you want to risk when there is the possibility of your dog running into traffic.</p>\r\n\r\n<p>While a leash of this sort might be a nice way for a dog to have some autonomy on a rural trail, it isn&rsquo;t the best fit for city streets.</p>\r\n\r\n<h3>2. CARRY TREATS</h3>\r\n\r\n<p>Investing in a good treat pouch is a great way to make sure that you always have rewards on you (and don&rsquo;t end up with pockets full of grease and crumbs).</p>\r\n\r\n<p>Be liberal with your dispensing of treats&mdash;you want to reward your dog whenever he pays any attention to you, whenever the leash is loose, and whenever he encounters anything that might potentially scare him.</p>\r\n\r\n<p>Giving your dog a treat when he spots unusual things (or people or dogs) is a great way to help him forge positive associations with new things. Keep in mind that the treats aren&rsquo;t just for your dog&mdash;they&rsquo;re going to be for people too!</p>\r\n\r\n<p>When you have a dog, you&rsquo;re not just training him to behave properly on the street&mdash;you are training people to behave properly, too. Without some coaching from you, you&rsquo;re likely to encounter people who will do a lot of improper things when greeting dogs on the street.</p>\r\n\r\n<p>One way to avoid impolite interactions with people who want to say hello to your dog is to hand a treat to anyone that approaches and ask them to give it to your dog.</p>\r\n\r\n<p>Your dog shouldn&rsquo;t have to sit for it or do anything for that matter. The &ldquo;trick&rdquo; they&rsquo;re being rewarded for is just the behavior of co-existing with a new human.</p>\r\n\r\n<h3>3. CHOOSE YOUR WALKING PATH WISELY</h3>\r\n\r\n<p>There are a million things that could happen on a city street that could spook a dog, most of which you cannot control. The best you can do is try to guess what&rsquo;s going to be the quietest route.</p>\r\n\r\n<p>If your dog is small enough and you get stuck in a particularly crowded area, pick up your pup! There is no shame in carrying your dog out of a situation where he could get stepped on.</p>\r\n\r\n<p>Bonus points for walking on the building side of the sidewalk, rather than by the curb. If your dog does get loose, that extra two or three feet will mean a little bit more of a buffer area where you might be able to grab him before he enters traffic.</p>\r\n', '140f6969d5213fd0ece03148e62e461e_1579610138_6524.jpg', 'dfasfd', 'dsfadsf', '2020-01-21 17:35:38'),
(2, 1, 'Your Puppy’s Emotional Development Month by Month', 'your-puppys-emotional-development-month-by-month', '<p>Trainer Annie Grossman of School for the Dogs, one of NYC&rsquo;s most respected dog training centers, has plenty of wisdom to share with dog people. She covers common dog behavior questions and training tips in her weekly podcast. We&rsquo;ll be sharing some of those responses right here in a regular feature!</p>\r\n\r\n<p>Have a training question of your own? Check out Annie&rsquo;s blog and click on &ldquo;Ask Annie.&rdquo;</p>\r\n\r\n<h3>Help! I&rsquo;m Moving My Country Dog to the City</h3>\r\n\r\n<p>Dear Ava,</p>\r\n\r\n<p>Transitioning a new dog to the city can certainly be stressful, but I do believe that, if your dog can make it in New York City, like the song says, he can make it anywhere.</p>\r\n\r\n<p>In fact, some trainers refer to dogs who develop &ldquo;suburban dog syndrome&rdquo; when they&rsquo;re raised behind pPFSCbial white picket fences&mdash; these dogs can end up being easily spooked by novel things since their daily intake of new information is limited to what&rsquo;s within their yard.</p>\r\n\r\n<p>Even if they get a walk a day, it&rsquo;s unlikely a dog in a rural or suburban neighborhood will encounter more than a handful of new dogs, people, or stimuli in a given walk.</p>\r\n\r\n<p>Compare this to the dog who grows up in a metropolitan area and may be exposed to dozens of dogs, hundreds of people, and god-only-knows what kind of stimuli on any given walk. I mean, is that guy approaching us wearing a suit made out of plastic bags and soup cans? Why yes, yes he is.</p>\r\n\r\n<p>What&rsquo;s more, behaviors that might be tolerated on a leash when you have all the space in the world may not be safe or desired when you&rsquo;re on a city sidewalk.</p>\r\n\r\n<p>Fortunately, it&rsquo;s absolutely possible for your dog and you to learn to co-exist happily during what will be a new kind of joint outing. All you need is to focus on how you can socialize your dog to new things, and encourage the behaviors you want during walks.</p>\r\n\r\n<p>Here are some tips on gear and training protocol that will help you both as you transition to city life.</p>\r\n\r\n<h3>1. TOSS THAT RETRACTABLE LEASH</h3>\r\n\r\n<p>Retractable leashes, which can change length based on the click of a button, mean that the radius wherein a dog can go is not fixed.</p>\r\n\r\n<p>I don&rsquo;t mind using a retractable leash when I&rsquo;m in a wide open space with my dog, but for leash walking on a busy sidewalk, I think it defeats the major purpose of having your dog on a leash to begin with.</p>\r\n\r\n<p>You want to teach your dog that he generally needs to be close to you and that he&rsquo;s allowed with in a fixed radius controlled by the leash, not by his whim.</p>\r\n\r\n<p>Another problem with retractable leashes is that they usually have very thin cords, which can snap or twist around dog or human body parts. Google &ldquo;Retractable Leash Injuries&rdquo; if you dare.</p>\r\n\r\n<p>What&rsquo;s more, if dropped by mistake, their heavy handles can snap towards the dog, which may result in a big plastic handle hurling in the direction of your dog&rsquo;s face, which isn&rsquo;t something you want to risk when there is the possibility of your dog running into traffic.</p>\r\n\r\n<p>While a leash of this sort might be a nice way for a dog to have some autonomy on a rural trail, it isn&rsquo;t the best fit for city streets.</p>\r\n\r\n<h3>2. CARRY TREATS</h3>\r\n\r\n<p>Investing in a good treat pouch is a great way to make sure that you always have rewards on you (and don&rsquo;t end up with pockets full of grease and crumbs).</p>\r\n\r\n<p>Be liberal with your dispensing of treats&mdash;you want to reward your dog whenever he pays any attention to you, whenever the leash is loose, and whenever he encounters anything that might potentially scare him.</p>\r\n\r\n<p>Giving your dog a treat when he spots unusual things (or people or dogs) is a great way to help him forge positive associations with new things. Keep in mind that the treats aren&rsquo;t just for your dog&mdash;they&rsquo;re going to be for people too!</p>\r\n\r\n<p>When you have a dog, you&rsquo;re not just training him to behave properly on the street&mdash;you are training people to behave properly, too. Without some coaching from you, you&rsquo;re likely to encounter people who will do a lot of improper things when greeting dogs on the street.</p>\r\n\r\n<p>One way to avoid impolite interactions with people who want to say hello to your dog is to hand a treat to anyone that approaches and ask them to give it to your dog.</p>\r\n\r\n<p>Your dog shouldn&rsquo;t have to sit for it or do anything for that matter. The &ldquo;trick&rdquo; they&rsquo;re being rewarded for is just the behavior of co-existing with a new human.</p>\r\n\r\n<h3>3. CHOOSE YOUR WALKING PATH WISELY</h3>\r\n\r\n<p>There are a million things that could happen on a city street that could spook a dog, most of which you cannot control. The best you can do is try to guess what&rsquo;s going to be the quietest route.</p>\r\n\r\n<p>If your dog is small enough and you get stuck in a particularly crowded area, pick up your pup! There is no shame in carrying your dog out of a situation where he could get stepped on.</p>\r\n\r\n<p>Bonus points for walking on the building side of the sidewalk, rather than by the curb. If your dog does get loose, that extra two or three feet will mean a little bit more of a buffer area where you might be able to grab him before he enters traffic.</p>\r\n', '5f93f983524def3dca464469d2cf9f3e_1579610748_7558.jpg', NULL, NULL, '2020-01-21 17:45:48'),
(3, 1, 'Does My Dog Think I’m a Dog?', 'does-my-dog-think-im-a-dog', '<p>Trainer Annie Grossman of School for the Dogs, one of NYC&rsquo;s most respected dog training centers, has plenty of wisdom to share with dog people. She covers common dog behavior questions and training tips in her weekly podcast. We&rsquo;ll be sharing some of those responses right here in a regular feature!</p>\r\n\r\n<p>Have a training question of your own? Check out Annie&rsquo;s blog and click on &ldquo;Ask Annie.&rdquo;</p>\r\n\r\n<h3>Help! I&rsquo;m Moving My Country Dog to the City</h3>\r\n\r\n<p>Dear Ava,</p>\r\n\r\n<p>Transitioning a new dog to the city can certainly be stressful, but I do believe that, if your dog can make it in New York City, like the song says, he can make it anywhere.</p>\r\n\r\n<p>In fact, some trainers refer to dogs who develop &ldquo;suburban dog syndrome&rdquo; when they&rsquo;re raised behind pPFSCbial white picket fences&mdash; these dogs can end up being easily spooked by novel things since their daily intake of new information is limited to what&rsquo;s within their yard.</p>\r\n\r\n<p>Even if they get a walk a day, it&rsquo;s unlikely a dog in a rural or suburban neighborhood will encounter more than a handful of new dogs, people, or stimuli in a given walk.</p>\r\n\r\n<p>Compare this to the dog who grows up in a metropolitan area and may be exposed to dozens of dogs, hundreds of people, and god-only-knows what kind of stimuli on any given walk. I mean, is that guy approaching us wearing a suit made out of plastic bags and soup cans? Why yes, yes he is.</p>\r\n\r\n<p>What&rsquo;s more, behaviors that might be tolerated on a leash when you have all the space in the world may not be safe or desired when you&rsquo;re on a city sidewalk.</p>\r\n\r\n<p>Fortunately, it&rsquo;s absolutely possible for your dog and you to learn to co-exist happily during what will be a new kind of joint outing. All you need is to focus on how you can socialize your dog to new things, and encourage the behaviors you want during walks.</p>\r\n\r\n<p>Here are some tips on gear and training protocol that will help you both as you transition to city life.</p>\r\n\r\n<h3>1. TOSS THAT RETRACTABLE LEASH</h3>\r\n\r\n<p>Retractable leashes, which can change length based on the click of a button, mean that the radius wherein a dog can go is not fixed.</p>\r\n\r\n<p>I don&rsquo;t mind using a retractable leash when I&rsquo;m in a wide open space with my dog, but for leash walking on a busy sidewalk, I think it defeats the major purpose of having your dog on a leash to begin with.</p>\r\n\r\n<p>You want to teach your dog that he generally needs to be close to you and that he&rsquo;s allowed with in a fixed radius controlled by the leash, not by his whim.</p>\r\n\r\n<p>Another problem with retractable leashes is that they usually have very thin cords, which can snap or twist around dog or human body parts. Google &ldquo;Retractable Leash Injuries&rdquo; if you dare.</p>\r\n\r\n<p>What&rsquo;s more, if dropped by mistake, their heavy handles can snap towards the dog, which may result in a big plastic handle hurling in the direction of your dog&rsquo;s face, which isn&rsquo;t something you want to risk when there is the possibility of your dog running into traffic.</p>\r\n\r\n<p>While a leash of this sort might be a nice way for a dog to have some autonomy on a rural trail, it isn&rsquo;t the best fit for city streets.</p>\r\n\r\n<h3>2. CARRY TREATS</h3>\r\n\r\n<p>Investing in a good treat pouch is a great way to make sure that you always have rewards on you (and don&rsquo;t end up with pockets full of grease and crumbs).</p>\r\n\r\n<p>Be liberal with your dispensing of treats&mdash;you want to reward your dog whenever he pays any attention to you, whenever the leash is loose, and whenever he encounters anything that might potentially scare him.</p>\r\n\r\n<p>Giving your dog a treat when he spots unusual things (or people or dogs) is a great way to help him forge positive associations with new things. Keep in mind that the treats aren&rsquo;t just for your dog&mdash;they&rsquo;re going to be for people too!</p>\r\n\r\n<p>When you have a dog, you&rsquo;re not just training him to behave properly on the street&mdash;you are training people to behave properly, too. Without some coaching from you, you&rsquo;re likely to encounter people who will do a lot of improper things when greeting dogs on the street.</p>\r\n\r\n<p>One way to avoid impolite interactions with people who want to say hello to your dog is to hand a treat to anyone that approaches and ask them to give it to your dog.</p>\r\n\r\n<p>Your dog shouldn&rsquo;t have to sit for it or do anything for that matter. The &ldquo;trick&rdquo; they&rsquo;re being rewarded for is just the behavior of co-existing with a new human.</p>\r\n\r\n<h3>3. CHOOSE YOUR WALKING PATH WISELY</h3>\r\n\r\n<p>There are a million things that could happen on a city street that could spook a dog, most of which you cannot control. The best you can do is try to guess what&rsquo;s going to be the quietest route.</p>\r\n\r\n<p>If your dog is small enough and you get stuck in a particularly crowded area, pick up your pup! There is no shame in carrying your dog out of a situation where he could get stepped on.</p>\r\n\r\n<p>Bonus points for walking on the building side of the sidewalk, rather than by the curb. If your dog does get loose, that extra two or three feet will mean a little bit more of a buffer area where you might be able to grab him before he enters traffic.</p>\r\n', '7e7757b1e12abcb736ab9a754ffb617a_1579610766_7084.jpg', NULL, NULL, '2020-01-21 17:46:06'),
(4, 1, 'The 105 Most Popular Rottweiler Names of 2018', 'the-105-most-popular-rottweiler-names-of-2018', '<h2><span style=\"font-size:13px\">Transitioning a new dog to the city can certainly be stressful, but I do believe that, if your dog can make it in New York City, like the song says, he can make it anywhere.</span></h2>\r\n\r\n<p>In fact, some trainers refer to dogs who develop &ldquo;suburban dog syndrome&rdquo; when they&rsquo;re raised behind pPFSCbial white picket fences&mdash; these dogs can end up being easily spooked by novel things since their daily intake of new information is limited to what&rsquo;s within their yard.</p>\r\n\r\n<p>Even if they get a walk a day, it&rsquo;s unlikely a dog in a rural or suburban neighborhood will encounter more than a handful of new dogs, people, or stimuli in a given walk.</p>\r\n\r\n<p>Compare this to the dog who grows up in a metropolitan area and may be exposed to dozens of dogs, hundreds of people, and god-only-knows what kind of stimuli on any given walk. I mean, is that guy approaching us wearing a suit made out of plastic bags and soup cans? Why yes, yes he is.</p>\r\n\r\n<p>What&rsquo;s more, behaviors that might be tolerated on a leash when you have all the space in the world may not be safe or desired when you&rsquo;re on a city sidewalk.</p>\r\n\r\n<p>Fortunately, it&rsquo;s absolutely possible for your dog and you to learn to co-exist happily during what will be a new kind of joint outing. All you need is to focus on how you can socialize your dog to new things, and encourage the behaviors you want during walks.</p>\r\n\r\n<p>Here are some tips on gear and training protocol that will help you both as you transition to city life.</p>\r\n\r\n<h3>1. TOSS THAT RETRACTABLE LEASH</h3>\r\n\r\n<p>Retractable leashes, which can change length based on the click of a button, mean that the radius wherein a dog can go is not fixed.</p>\r\n\r\n<p>I don&rsquo;t mind using a retractable leash when I&rsquo;m in a wide open space with my dog, but for leash walking on a busy sidewalk, I think it defeats the major purpose of having your dog on a leash to begin with.</p>\r\n\r\n<p>You want to teach your dog that he generally needs to be close to you and that he&rsquo;s allowed with in a fixed radius controlled by the leash, not by his whim.</p>\r\n\r\n<p>Another problem with retractable leashes is that they usually have very thin cords, which can snap or twist around dog or human body parts. Google &ldquo;Retractable Leash Injuries&rdquo; if you dare.</p>\r\n\r\n<p>What&rsquo;s more, if dropped by mistake, their heavy handles can snap towards the dog, which may result in a big plastic handle hurling in the direction of your dog&rsquo;s face, which isn&rsquo;t something you want to risk when there is the possibility of your dog running into traffic.</p>\r\n\r\n<p>While a leash of this sort might be a nice way for a dog to have some autonomy on a rural trail, it isn&rsquo;t the best fit for city streets.</p>\r\n\r\n<h3>2. CARRY TREATS</h3>\r\n\r\n<p>Investing in a good treat pouch is a great way to make sure that you always have rewards on you (and don&rsquo;t end up with pockets full of grease and crumbs).</p>\r\n\r\n<p>Be liberal with your dispensing of treats&mdash;you want to reward your dog whenever he pays any attention to you, whenever the leash is loose, and whenever he encounters anything that might potentially scare him.</p>\r\n\r\n<p>Giving your dog a treat when he spots unusual things (or people or dogs) is a great way to help him forge positive associations with new things. Keep in mind that the treats aren&rsquo;t just for your dog&mdash;they&rsquo;re going to be for people too!</p>\r\n\r\n<p>When you have a dog, you&rsquo;re not just training him to behave properly on the street&mdash;you are training people to behave properly, too. Without some coaching from you, you&rsquo;re likely to encounter people who will do a lot of improper things when greeting dogs on the street.</p>\r\n\r\n<p>One way to avoid impolite interactions with people who want to say hello to your dog is to hand a treat to anyone that approaches and ask them to give it to your dog.</p>\r\n\r\n<p>Your dog shouldn&rsquo;t have to sit for it or do anything for that matter. The &ldquo;trick&rdquo; they&rsquo;re being rewarded for is just the behavior of co-existing with a new human.</p>\r\n\r\n<h3>3. CHOOSE YOUR WALKING PATH WISELY</h3>\r\n\r\n<p>There are a million things that could happen on a city street that could spook a dog, most of which you cannot control. The best you can do is try to guess what&rsquo;s going to be the quietest route.</p>\r\n\r\n<p>If your dog is small enough and you get stuck in a particularly crowded area, pick up your pup! There is no shame in carrying your dog out of a situation where he could get stepped on.</p>\r\n\r\n<p>Bonus points for walking on the building side of the sidewalk, rather than by the curb. If your dog does get loose, that extra two or three feet will mean a little bit more of a buffer area where you might be able to grab him before he enters traffic.</p>\r\n', '060ad92489947d410d897474079c1477_1579610806_9914.jpg', NULL, NULL, '2020-01-21 17:46:46'),
(5, 2, 'The Top 7 Affordable Dog Fencing Options for 2019', 'the-top-7-affordable-dog-fencing-options-for-2019', '<h2><span style=\"font-size:13px\">Trainer Annie Grossman of School for the Dogs, one of NYC&rsquo;s most respected dog training centers, has plenty of wisdom to share with dog people. She covers common dog behavior questions and training tips in her weekly podcast. We&rsquo;ll be sharing some of those responses right here in a regular feature!</span></h2>\r\n\r\n<p>Have a training question of your own? Check out Annie&rsquo;s blog and click on &ldquo;Ask Annie.&rdquo;</p>\r\n\r\n<h3>Help! I&rsquo;m Moving My Country Dog to the City</h3>\r\n\r\n<p>Dear Ava,</p>\r\n\r\n<p>Transitioning a new dog to the city can certainly be stressful, but I do believe that, if your dog can make it in New York City, like the song says, he can make it anywhere.</p>\r\n\r\n<p>In fact, some trainers refer to dogs who develop &ldquo;suburban dog syndrome&rdquo; when they&rsquo;re raised behind pPFSCbial white picket fences&mdash; these dogs can end up being easily spooked by novel things since their daily intake of new information is limited to what&rsquo;s within their yard.</p>\r\n\r\n<p>Even if they get a walk a day, it&rsquo;s unlikely a dog in a rural or suburban neighborhood will encounter more than a handful of new dogs, people, or stimuli in a given walk.</p>\r\n\r\n<p>Compare this to the dog who grows up in a metropolitan area and may be exposed to dozens of dogs, hundreds of people, and god-only-knows what kind of stimuli on any given walk. I mean, is that guy approaching us wearing a suit made out of plastic bags and soup cans? Why yes, yes he is.</p>\r\n\r\n<p>What&rsquo;s more, behaviors that might be tolerated on a leash when you have all the space in the world may not be safe or desired when you&rsquo;re on a city sidewalk.</p>\r\n\r\n<p>Fortunately, it&rsquo;s absolutely possible for your dog and you to learn to co-exist happily during what will be a new kind of joint outing. All you need is to focus on how you can socialize your dog to new things, and encourage the behaviors you want during walks.</p>\r\n\r\n<p>Here are some tips on gear and training protocol that will help you both as you transition to city life.</p>\r\n\r\n<h3>1. TOSS THAT RETRACTABLE LEASH</h3>\r\n\r\n<p>Retractable leashes, which can change length based on the click of a button, mean that the radius wherein a dog can go is not fixed.</p>\r\n\r\n<p>I don&rsquo;t mind using a retractable leash when I&rsquo;m in a wide open space with my dog, but for leash walking on a busy sidewalk, I think it defeats the major purpose of having your dog on a leash to begin with.</p>\r\n\r\n<p>You want to teach your dog that he generally needs to be close to you and that he&rsquo;s allowed with in a fixed radius controlled by the leash, not by his whim.</p>\r\n\r\n<p>Another problem with retractable leashes is that they usually have very thin cords, which can snap or twist around dog or human body parts. Google &ldquo;Retractable Leash Injuries&rdquo; if you dare.</p>\r\n\r\n<p>What&rsquo;s more, if dropped by mistake, their heavy handles can snap towards the dog, which may result in a big plastic handle hurling in the direction of your dog&rsquo;s face, which isn&rsquo;t something you want to risk when there is the possibility of your dog running into traffic.</p>\r\n\r\n<p>While a leash of this sort might be a nice way for a dog to have some autonomy on a rural trail, it isn&rsquo;t the best fit for city streets.</p>\r\n\r\n<h3>2. CARRY TREATS</h3>\r\n\r\n<p>Investing in a good treat pouch is a great way to make sure that you always have rewards on you (and don&rsquo;t end up with pockets full of grease and crumbs).</p>\r\n\r\n<p>Be liberal with your dispensing of treats&mdash;you want to reward your dog whenever he pays any attention to you, whenever the leash is loose, and whenever he encounters anything that might potentially scare him.</p>\r\n\r\n<p>Giving your dog a treat when he spots unusual things (or people or dogs) is a great way to help him forge positive associations with new things. Keep in mind that the treats aren&rsquo;t just for your dog&mdash;they&rsquo;re going to be for people too!</p>\r\n\r\n<p>When you have a dog, you&rsquo;re not just training him to behave properly on the street&mdash;you are training people to behave properly, too. Without some coaching from you, you&rsquo;re likely to encounter people who will do a lot of improper things when greeting dogs on the street.</p>\r\n\r\n<p>One way to avoid impolite interactions with people who want to say hello to your dog is to hand a treat to anyone that approaches and ask them to give it to your dog.</p>\r\n\r\n<p>Your dog shouldn&rsquo;t have to sit for it or do anything for that matter. The &ldquo;trick&rdquo; they&rsquo;re being rewarded for is just the behavior of co-existing with a new human.</p>\r\n\r\n<h3>3. CHOOSE YOUR WALKING PATH WISELY</h3>\r\n\r\n<p>There are a million things that could happen on a city street that could spook a dog, most of which you cannot control. The best you can do is try to guess what&rsquo;s going to be the quietest route.</p>\r\n\r\n<p>If your dog is small enough and you get stuck in a particularly crowded area, pick up your pup! There is no shame in carrying your dog out of a situation where he could get stepped on.</p>\r\n\r\n<p>Bonus points for walking on the building side of the sidewalk, rather than by the curb. If your dog does get loose, that extra two or three feet will mean a little bit more of a buffer area where you might be able to grab him before he enters traffic.</p>\r\n', 'addfa9b7e234254d26e9c7f2af1005cb_1579610845_1304.jpg', NULL, NULL, '2020-01-21 17:47:25'),
(6, 2, 'How Can I Help my Dog Adjust to City Life?', 'how-can-i-help-my-dog-adjust-to-city-life', '<h2><span style=\"font-size:13px\">Trainer Annie Grossman of School for the Dogs, one of NYC&rsquo;s most respected dog training centers, has plenty of wisdom to share with dog people. She covers common dog behavior questions and training tips in her weekly podcast. We&rsquo;ll be sharing some of those responses right here in a regular feature!</span></h2>\r\n\r\n<p>Have a training question of your own? Check out Annie&rsquo;s blog and click on &ldquo;Ask Annie.&rdquo;</p>\r\n\r\n<h3>Help! I&rsquo;m Moving My Country Dog to the City</h3>\r\n\r\n<p>Dear Ava,</p>\r\n\r\n<p>Transitioning a new dog to the city can certainly be stressful, but I do believe that, if your dog can make it in New York City, like the song says, he can make it anywhere.</p>\r\n\r\n<p>In fact, some trainers refer to dogs who develop &ldquo;suburban dog syndrome&rdquo; when they&rsquo;re raised behind pPFSCbial white picket fences&mdash; these dogs can end up being easily spooked by novel things since their daily intake of new information is limited to what&rsquo;s within their yard.</p>\r\n\r\n<p>Even if they get a walk a day, it&rsquo;s unlikely a dog in a rural or suburban neighborhood will encounter more than a handful of new dogs, people, or stimuli in a given walk.</p>\r\n\r\n<p>Compare this to the dog who grows up in a metropolitan area and may be exposed to dozens of dogs, hundreds of people, and god-only-knows what kind of stimuli on any given walk. I mean, is that guy approaching us wearing a suit made out of plastic bags and soup cans? Why yes, yes he is.</p>\r\n\r\n<p>What&rsquo;s more, behaviors that might be tolerated on a leash when you have all the space in the world may not be safe or desired when you&rsquo;re on a city sidewalk.</p>\r\n\r\n<p>Fortunately, it&rsquo;s absolutely possible for your dog and you to learn to co-exist happily during what will be a new kind of joint outing. All you need is to focus on how you can socialize your dog to new things, and encourage the behaviors you want during walks.</p>\r\n\r\n<p>Here are some tips on gear and training protocol that will help you both as you transition to city life.</p>\r\n\r\n<h3>1. TOSS THAT RETRACTABLE LEASH</h3>\r\n\r\n<p>Retractable leashes, which can change length based on the click of a button, mean that the radius wherein a dog can go is not fixed.</p>\r\n\r\n<p>I don&rsquo;t mind using a retractable leash when I&rsquo;m in a wide open space with my dog, but for leash walking on a busy sidewalk, I think it defeats the major purpose of having your dog on a leash to begin with.</p>\r\n\r\n<p>You want to teach your dog that he generally needs to be close to you and that he&rsquo;s allowed with in a fixed radius controlled by the leash, not by his whim.</p>\r\n\r\n<p>Another problem with retractable leashes is that they usually have very thin cords, which can snap or twist around dog or human body parts. Google &ldquo;Retractable Leash Injuries&rdquo; if you dare.</p>\r\n\r\n<p>What&rsquo;s more, if dropped by mistake, their heavy handles can snap towards the dog, which may result in a big plastic handle hurling in the direction of your dog&rsquo;s face, which isn&rsquo;t something you want to risk when there is the possibility of your dog running into traffic.</p>\r\n\r\n<p>While a leash of this sort might be a nice way for a dog to have some autonomy on a rural trail, it isn&rsquo;t the best fit for city streets.</p>\r\n\r\n<h3>2. CARRY TREATS</h3>\r\n\r\n<p>Investing in a good treat pouch is a great way to make sure that you always have rewards on you (and don&rsquo;t end up with pockets full of grease and crumbs).</p>\r\n\r\n<p>Be liberal with your dispensing of treats&mdash;you want to reward your dog whenever he pays any attention to you, whenever the leash is loose, and whenever he encounters anything that might potentially scare him.</p>\r\n\r\n<p>Giving your dog a treat when he spots unusual things (or people or dogs) is a great way to help him forge positive associations with new things. Keep in mind that the treats aren&rsquo;t just for your dog&mdash;they&rsquo;re going to be for people too!</p>\r\n\r\n<p>When you have a dog, you&rsquo;re not just training him to behave properly on the street&mdash;you are training people to behave properly, too. Without some coaching from you, you&rsquo;re likely to encounter people who will do a lot of improper things when greeting dogs on the street.</p>\r\n\r\n<p>One way to avoid impolite interactions with people who want to say hello to your dog is to hand a treat to anyone that approaches and ask them to give it to your dog.</p>\r\n\r\n<p>Your dog shouldn&rsquo;t have to sit for it or do anything for that matter. The &ldquo;trick&rdquo; they&rsquo;re being rewarded for is just the behavior of co-existing with a new human.</p>\r\n\r\n<h3>3. CHOOSE YOUR WALKING PATH WISELY</h3>\r\n\r\n<p>There are a million things that could happen on a city street that could spook a dog, most of which you cannot control. The best you can do is try to guess what&rsquo;s going to be the quietest route.</p>\r\n\r\n<p>If your dog is small enough and you get stuck in a particularly crowded area, pick up your pup! There is no shame in carrying your dog out of a situation where he could get stepped on.</p>\r\n\r\n<p>Bonus points for walking on the building side of the sidewalk, rather than by the curb. If your dog does get loose, that extra two or three feet will mean a little bit more of a buffer area where you might be able to grab him before he enters traffic.</p>\r\n', '335f5352088d7d9bf74191e006d8e24c_1579610862_9295.jpg', NULL, NULL, '2020-01-21 17:47:42'),
(7, 2, 'Healthy Paws Pet Insurance Reveals the Most Expensive', 'healthy-paws-pet-insurance-reveals-the-most-expensive', '<h2><span style=\"font-size:13px\">Trainer Annie Grossman of School for the Dogs, one of NYC&rsquo;s most respected dog training centers, has plenty of wisdom to share with dog people. She covers common dog behavior questions and training tips in her weekly podcast. We&rsquo;ll be sharing some of those responses right here in a regular feature!</span></h2>\r\n\r\n<p>Have a training question of your own? Check out Annie&rsquo;s blog and click on &ldquo;Ask Annie.&rdquo;</p>\r\n\r\n<h3>Help! I&rsquo;m Moving My Country Dog to the City</h3>\r\n\r\n<p>Dear Ava,</p>\r\n\r\n<p>Transitioning a new dog to the city can certainly be stressful, but I do believe that, if your dog can make it in New York City, like the song says, he can make it anywhere.</p>\r\n\r\n<p>In fact, some trainers refer to dogs who develop &ldquo;suburban dog syndrome&rdquo; when they&rsquo;re raised behind pPFSCbial white picket fences&mdash; these dogs can end up being easily spooked by novel things since their daily intake of new information is limited to what&rsquo;s within their yard.</p>\r\n\r\n<p>Even if they get a walk a day, it&rsquo;s unlikely a dog in a rural or suburban neighborhood will encounter more than a handful of new dogs, people, or stimuli in a given walk.</p>\r\n\r\n<p>Compare this to the dog who grows up in a metropolitan area and may be exposed to dozens of dogs, hundreds of people, and god-only-knows what kind of stimuli on any given walk. I mean, is that guy approaching us wearing a suit made out of plastic bags and soup cans? Why yes, yes he is.</p>\r\n\r\n<p>What&rsquo;s more, behaviors that might be tolerated on a leash when you have all the space in the world may not be safe or desired when you&rsquo;re on a city sidewalk.</p>\r\n\r\n<p>Fortunately, it&rsquo;s absolutely possible for your dog and you to learn to co-exist happily during what will be a new kind of joint outing. All you need is to focus on how you can socialize your dog to new things, and encourage the behaviors you want during walks.</p>\r\n\r\n<p>Here are some tips on gear and training protocol that will help you both as you transition to city life.</p>\r\n\r\n<h3>1. TOSS THAT RETRACTABLE LEASH</h3>\r\n\r\n<p>Retractable leashes, which can change length based on the click of a button, mean that the radius wherein a dog can go is not fixed.</p>\r\n\r\n<p>I don&rsquo;t mind using a retractable leash when I&rsquo;m in a wide open space with my dog, but for leash walking on a busy sidewalk, I think it defeats the major purpose of having your dog on a leash to begin with.</p>\r\n\r\n<p>You want to teach your dog that he generally needs to be close to you and that he&rsquo;s allowed with in a fixed radius controlled by the leash, not by his whim.</p>\r\n\r\n<p>Another problem with retractable leashes is that they usually have very thin cords, which can snap or twist around dog or human body parts. Google &ldquo;Retractable Leash Injuries&rdquo; if you dare.</p>\r\n\r\n<p>What&rsquo;s more, if dropped by mistake, their heavy handles can snap towards the dog, which may result in a big plastic handle hurling in the direction of your dog&rsquo;s face, which isn&rsquo;t something you want to risk when there is the possibility of your dog running into traffic.</p>\r\n\r\n<p>While a leash of this sort might be a nice way for a dog to have some autonomy on a rural trail, it isn&rsquo;t the best fit for city streets.</p>\r\n\r\n<h3>2. CARRY TREATS</h3>\r\n\r\n<p>Investing in a good treat pouch is a great way to make sure that you always have rewards on you (and don&rsquo;t end up with pockets full of grease and crumbs).</p>\r\n\r\n<p>Be liberal with your dispensing of treats&mdash;you want to reward your dog whenever he pays any attention to you, whenever the leash is loose, and whenever he encounters anything that might potentially scare him.</p>\r\n\r\n<p>Giving your dog a treat when he spots unusual things (or people or dogs) is a great way to help him forge positive associations with new things. Keep in mind that the treats aren&rsquo;t just for your dog&mdash;they&rsquo;re going to be for people too!</p>\r\n\r\n<p>When you have a dog, you&rsquo;re not just training him to behave properly on the street&mdash;you are training people to behave properly, too. Without some coaching from you, you&rsquo;re likely to encounter people who will do a lot of improper things when greeting dogs on the street.</p>\r\n\r\n<p>One way to avoid impolite interactions with people who want to say hello to your dog is to hand a treat to anyone that approaches and ask them to give it to your dog.</p>\r\n\r\n<p>Your dog shouldn&rsquo;t have to sit for it or do anything for that matter. The &ldquo;trick&rdquo; they&rsquo;re being rewarded for is just the behavior of co-existing with a new human.</p>\r\n\r\n<h3>3. CHOOSE YOUR WALKING PATH WISELY</h3>\r\n\r\n<p>There are a million things that could happen on a city street that could spook a dog, most of which you cannot control. The best you can do is try to guess what&rsquo;s going to be the quietest route.</p>\r\n\r\n<p>If your dog is small enough and you get stuck in a particularly crowded area, pick up your pup! There is no shame in carrying your dog out of a situation where he could get stepped on.</p>\r\n\r\n<p>Bonus points for walking on the building side of the sidewalk, rather than by the curb. If your dog does get loose, that extra two or three feet will mean a little bit more of a buffer area where you might be able to grab him before he enters traffic.</p>\r\n', 'e2c0be24560d78c5e599c2a9c9d0bbd2_1579610891_3945.jpg', NULL, NULL, '2020-01-21 17:48:11'),
(8, 2, 'The 116 Most Popular French Bulldog Names of 2018', 'the-116-most-popular-french-bulldog-names-of-2018', '<h2><span style=\"font-size:13px\">Trainer Annie Grossman of School for the Dogs, one of NYC&rsquo;s most respected dog training centers, has plenty of wisdom to share with dog people. She covers common dog behavior questions and training tips in her weekly podcast. We&rsquo;ll be sharing some of those responses right here in a regular feature!</span></h2>\r\n\r\n<p>Have a training question of your own? Check out Annie&rsquo;s blog and click on &ldquo;Ask Annie.&rdquo;</p>\r\n\r\n<h3>Help! I&rsquo;m Moving My Country Dog to the City</h3>\r\n\r\n<p>Dear Ava,</p>\r\n\r\n<p>Transitioning a new dog to the city can certainly be stressful, but I do believe that, if your dog can make it in New York City, like the song says, he can make it anywhere.</p>\r\n\r\n<p>In fact, some trainers refer to dogs who develop &ldquo;suburban dog syndrome&rdquo; when they&rsquo;re raised behind pPFSCbial white picket fences&mdash; these dogs can end up being easily spooked by novel things since their daily intake of new information is limited to what&rsquo;s within their yard.</p>\r\n\r\n<p>Even if they get a walk a day, it&rsquo;s unlikely a dog in a rural or suburban neighborhood will encounter more than a handful of new dogs, people, or stimuli in a given walk.</p>\r\n\r\n<p>Compare this to the dog who grows up in a metropolitan area and may be exposed to dozens of dogs, hundreds of people, and god-only-knows what kind of stimuli on any given walk. I mean, is that guy approaching us wearing a suit made out of plastic bags and soup cans? Why yes, yes he is.</p>\r\n\r\n<p>What&rsquo;s more, behaviors that might be tolerated on a leash when you have all the space in the world may not be safe or desired when you&rsquo;re on a city sidewalk.</p>\r\n\r\n<p>Fortunately, it&rsquo;s absolutely possible for your dog and you to learn to co-exist happily during what will be a new kind of joint outing. All you need is to focus on how you can socialize your dog to new things, and encourage the behaviors you want during walks.</p>\r\n\r\n<p>Here are some tips on gear and training protocol that will help you both as you transition to city life.</p>\r\n\r\n<h3>1. TOSS THAT RETRACTABLE LEASH</h3>\r\n\r\n<p>Retractable leashes, which can change length based on the click of a button, mean that the radius wherein a dog can go is not fixed.</p>\r\n\r\n<p>I don&rsquo;t mind using a retractable leash when I&rsquo;m in a wide open space with my dog, but for leash walking on a busy sidewalk, I think it defeats the major purpose of having your dog on a leash to begin with.</p>\r\n\r\n<p>You want to teach your dog that he generally needs to be close to you and that he&rsquo;s allowed with in a fixed radius controlled by the leash, not by his whim.</p>\r\n\r\n<p>Another problem with retractable leashes is that they usually have very thin cords, which can snap or twist around dog or human body parts. Google &ldquo;Retractable Leash Injuries&rdquo; if you dare.</p>\r\n\r\n<p>What&rsquo;s more, if dropped by mistake, their heavy handles can snap towards the dog, which may result in a big plastic handle hurling in the direction of your dog&rsquo;s face, which isn&rsquo;t something you want to risk when there is the possibility of your dog running into traffic.</p>\r\n\r\n<p>While a leash of this sort might be a nice way for a dog to have some autonomy on a rural trail, it isn&rsquo;t the best fit for city streets.</p>\r\n\r\n<h3>2. CARRY TREATS</h3>\r\n\r\n<p>Investing in a good treat pouch is a great way to make sure that you always have rewards on you (and don&rsquo;t end up with pockets full of grease and crumbs).</p>\r\n\r\n<p>Be liberal with your dispensing of treats&mdash;you want to reward your dog whenever he pays any attention to you, whenever the leash is loose, and whenever he encounters anything that might potentially scare him.</p>\r\n\r\n<p>Giving your dog a treat when he spots unusual things (or people or dogs) is a great way to help him forge positive associations with new things. Keep in mind that the treats aren&rsquo;t just for your dog&mdash;they&rsquo;re going to be for people too!</p>\r\n\r\n<p>When you have a dog, you&rsquo;re not just training him to behave properly on the street&mdash;you are training people to behave properly, too. Without some coaching from you, you&rsquo;re likely to encounter people who will do a lot of improper things when greeting dogs on the street.</p>\r\n\r\n<p>One way to avoid impolite interactions with people who want to say hello to your dog is to hand a treat to anyone that approaches and ask them to give it to your dog.</p>\r\n\r\n<p>Your dog shouldn&rsquo;t have to sit for it or do anything for that matter. The &ldquo;trick&rdquo; they&rsquo;re being rewarded for is just the behavior of co-existing with a new human.</p>\r\n\r\n<h3>3. CHOOSE YOUR WALKING PATH WISELY</h3>\r\n\r\n<p>There are a million things that could happen on a city street that could spook a dog, most of which you cannot control. The best you can do is try to guess what&rsquo;s going to be the quietest route.</p>\r\n\r\n<p>If your dog is small enough and you get stuck in a particularly crowded area, pick up your pup! There is no shame in carrying your dog out of a situation where he could get stepped on.</p>\r\n\r\n<p>Bonus points for walking on the building side of the sidewalk, rather than by the curb. If your dog does get loose, that extra two or three feet will mean a little bit more of a buffer area where you might be able to grab him before he enters traffic.</p>\r\n', 'd6c651ddcd97183b2e40bc464231c962_1579610913_1430.jpg', NULL, NULL, '2020-01-21 17:48:33');
INSERT INTO `tbl_blogs` (`id`, `cat_id`, `title`, `slug`, `detail`, `image`, `meta_description`, `meta_keywords`, `date`) VALUES
(9, 2, 'When Do Dogs Stop Growing?', 'when-do-dogs-stop-growing', '<p>Trainer Annie Grossman of School for the Dogs, one of NYC&rsquo;s most respected dog training centers, has plenty of wisdom to share with dog people. She covers common dog behavior questions and training tips in her weekly podcast. We&rsquo;ll be sharing some of those responses right here in a regular feature!</p>\r\n\r\n<p>Have a training question of your own? Check out Annie&rsquo;s blog and click on &ldquo;Ask Annie.&rdquo;</p>\r\n\r\n<h3>Help! I&rsquo;m Moving My Country Dog to the City</h3>\r\n\r\n<p>Dear Ava,</p>\r\n\r\n<p>Transitioning a new dog to the city can certainly be stressful, but I do believe that, if your dog can make it in New York City, like the song says, he can make it anywhere.</p>\r\n\r\n<p>In fact, some trainers refer to dogs who develop &ldquo;suburban dog syndrome&rdquo; when they&rsquo;re raised behind pPFSCbial white picket fences&mdash; these dogs can end up being easily spooked by novel things since their daily intake of new information is limited to what&rsquo;s within their yard.</p>\r\n\r\n<p>Even if they get a walk a day, it&rsquo;s unlikely a dog in a rural or suburban neighborhood will encounter more than a handful of new dogs, people, or stimuli in a given walk.</p>\r\n\r\n<p>Compare this to the dog who grows up in a metropolitan area and may be exposed to dozens of dogs, hundreds of people, and god-only-knows what kind of stimuli on any given walk. I mean, is that guy approaching us wearing a suit made out of plastic bags and soup cans? Why yes, yes he is.</p>\r\n\r\n<p>What&rsquo;s more, behaviors that might be tolerated on a leash when you have all the space in the world may not be safe or desired when you&rsquo;re on a city sidewalk.</p>\r\n\r\n<p>Fortunately, it&rsquo;s absolutely possible for your dog and you to learn to co-exist happily during what will be a new kind of joint outing. All you need is to focus on how you can socialize your dog to new things, and encourage the behaviors you want during walks.</p>\r\n\r\n<p>Here are some tips on gear and training protocol that will help you both as you transition to city life.</p>\r\n\r\n<h3>1. TOSS THAT RETRACTABLE LEASH</h3>\r\n\r\n<p>Retractable leashes, which can change length based on the click of a button, mean that the radius wherein a dog can go is not fixed.</p>\r\n\r\n<p>I don&rsquo;t mind using a retractable leash when I&rsquo;m in a wide open space with my dog, but for leash walking on a busy sidewalk, I think it defeats the major purpose of having your dog on a leash to begin with.</p>\r\n\r\n<p>You want to teach your dog that he generally needs to be close to you and that he&rsquo;s allowed with in a fixed radius controlled by the leash, not by his whim.</p>\r\n\r\n<p>Another problem with retractable leashes is that they usually have very thin cords, which can snap or twist around dog or human body parts. Google &ldquo;Retractable Leash Injuries&rdquo; if you dare.</p>\r\n\r\n<p>What&rsquo;s more, if dropped by mistake, their heavy handles can snap towards the dog, which may result in a big plastic handle hurling in the direction of your dog&rsquo;s face, which isn&rsquo;t something you want to risk when there is the possibility of your dog running into traffic.</p>\r\n\r\n<p>While a leash of this sort might be a nice way for a dog to have some autonomy on a rural trail, it isn&rsquo;t the best fit for city streets.</p>\r\n\r\n<h3>2. CARRY TREATS</h3>\r\n\r\n<p>Investing in a good treat pouch is a great way to make sure that you always have rewards on you (and don&rsquo;t end up with pockets full of grease and crumbs).</p>\r\n\r\n<p>Be liberal with your dispensing of treats&mdash;you want to reward your dog whenever he pays any attention to you, whenever the leash is loose, and whenever he encounters anything that might potentially scare him.</p>\r\n\r\n<p>Giving your dog a treat when he spots unusual things (or people or dogs) is a great way to help him forge positive associations with new things. Keep in mind that the treats aren&rsquo;t just for your dog&mdash;they&rsquo;re going to be for people too!</p>\r\n\r\n<p>When you have a dog, you&rsquo;re not just training him to behave properly on the street&mdash;you are training people to behave properly, too. Without some coaching from you, you&rsquo;re likely to encounter people who will do a lot of improper things when greeting dogs on the street.</p>\r\n\r\n<p>One way to avoid impolite interactions with people who want to say hello to your dog is to hand a treat to anyone that approaches and ask them to give it to your dog.</p>\r\n\r\n<p>Your dog shouldn&rsquo;t have to sit for it or do anything for that matter. The &ldquo;trick&rdquo; they&rsquo;re being rewarded for is just the behavior of co-existing with a new human.</p>\r\n\r\n<h3>3. CHOOSE YOUR WALKING PATH WISELY</h3>\r\n\r\n<p>There are a million things that could happen on a city street that could spook a dog, most of which you cannot control. The best you can do is try to guess what&rsquo;s going to be the quietest route.</p>\r\n\r\n<p>If your dog is small enough and you get stuck in a particularly crowded area, pick up your pup! There is no shame in carrying your dog out of a situation where he could get stepped on.</p>\r\n\r\n<p>Bonus points for walking on the building side of the sidewalk, rather than by the curb. If your dog does get loose, that extra two or three feet will mean a little bit more of a buffer area where you might be able to grab him before he enters traffic.</p>\r\n', '8c7bbbba95c1025975e548cee86dfadc_1579610935_3126.jpg', NULL, NULL, '2020-01-21 17:48:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog_categories`
--

CREATE TABLE `tbl_blog_categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_blog_categories`
--

INSERT INTO `tbl_blog_categories` (`id`, `title`, `status`) VALUES
(1, 'Science', 0),
(2, 'Information Technology', 0),
(3, 'Artificial Intelligence', 0),
(4, 'Craftsmanship', 0),
(5, 'Professional Beauty', 0),
(6, 'Agriculture', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bookings`
--

CREATE TABLE `tbl_bookings` (
  `id` int(11) UNSIGNED NOT NULL,
  `encoded_id` varchar(255) DEFAULT NULL,
  `sitter_id` int(11) UNSIGNED NOT NULL,
  `owner_id` int(11) UNSIGNED NOT NULL,
  `service_id` int(11) UNSIGNED DEFAULT NULL,
  `pets` varchar(255) DEFAULT NULL,
  `puppies` tinyint(1) DEFAULT 0,
  `cats` tinyint(1) DEFAULT 0,
  `dogs` tinyint(1) DEFAULT 0,
  `start_date` varchar(10) DEFAULT NULL,
  `dropoff_from_time` varchar(10) DEFAULT NULL,
  `dropoff_to_time` varchar(10) DEFAULT NULL,
  `end_date` varchar(10) DEFAULT NULL,
  `pickup_from_time` varchar(10) DEFAULT NULL,
  `pickup_to_time` varchar(10) DEFAULT NULL,
  `days_type` enum('one-time','repeat') DEFAULT NULL,
  `days` varchar(60) DEFAULT NULL,
  `dates` text DEFAULT NULL,
  `visits` text DEFAULT NULL,
  `dropoff_times` text DEFAULT NULL,
  `pickup_times` text DEFAULT NULL,
  `num_stays` tinyint(4) DEFAULT NULL,
  `holidays` text DEFAULT NULL,
  `num_holidays` tinyint(4) DEFAULT NULL,
  `pickup_extra` float DEFAULT 0,
  `bathing_extra` float DEFAULT 0,
  `play_dates_exta` float DEFAULT 0,
  `sixty_minuts_extra` float DEFAULT 0,
  `receive_photos` tinyint(1) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `rate` float DEFAULT NULL,
  `cat_care_rate` float DEFAULT NULL,
  `additional_dog_rate` float DEFAULT NULL,
  `puppy_rate` float DEFAULT NULL,
  `cat_rate` float DEFAULT NULL,
  `additional_cat_rate` float DEFAULT NULL,
  `holiday_rate` float DEFAULT NULL,
  `extended_stay_rate` float DEFAULT NULL,
  `extended_stays` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '''0 for pending, 1 for accepted, 2 for confirmed, 3 for rejected''',
  `completed` tinyint(1) NOT NULL DEFAULT 0 COMMENT '''0 for pending, 1 for complete request, 2 for completed''',
  `canceled` tinyint(1) NOT NULL DEFAULT 0,
  `canceled_by` int(11) DEFAULT NULL,
  `on_location` tinyint(1) DEFAULT 0,
  `location_time` timestamp NULL DEFAULT NULL,
  `pee` varchar(100) DEFAULT NULL,
  `poo` varchar(100) DEFAULT NULL,
  `food` varchar(100) DEFAULT NULL,
  `water` varchar(100) DEFAULT NULL,
  `dog_intraction` varchar(100) DEFAULT NULL,
  `treat_breaks` varchar(100) DEFAULT NULL,
  `play_time` varchar(100) DEFAULT NULL,
  `walk_distance` varchar(100) DEFAULT NULL,
  `walk_time` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `additional_comment` text DEFAULT NULL,
  `discount_code` varchar(100) DEFAULT NULL,
  `discount_amount` float DEFAULT NULL,
  `site_percentage` float DEFAULT NULL,
  `site_commission` float DEFAULT NULL,
  `bill_country` varchar(255) DEFAULT NULL,
  `bill_address` varchar(255) DEFAULT NULL,
  `bill_apt` varchar(255) DEFAULT NULL,
  `bill_city` varchar(255) DEFAULT NULL,
  `bill_state` varchar(2) DEFAULT NULL,
  `bill_zip` varchar(100) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `sitter_noti` tinyint(1) NOT NULL DEFAULT 0,
  `owner_noti` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bookings`
--

INSERT INTO `tbl_bookings` (`id`, `encoded_id`, `sitter_id`, `owner_id`, `service_id`, `pets`, `puppies`, `cats`, `dogs`, `start_date`, `dropoff_from_time`, `dropoff_to_time`, `end_date`, `pickup_from_time`, `pickup_to_time`, `days_type`, `days`, `dates`, `visits`, `dropoff_times`, `pickup_times`, `num_stays`, `holidays`, `num_holidays`, `pickup_extra`, `bathing_extra`, `play_dates_exta`, `sixty_minuts_extra`, `receive_photos`, `zip`, `address`, `detail`, `rate`, `cat_care_rate`, `additional_dog_rate`, `puppy_rate`, `cat_rate`, `additional_cat_rate`, `holiday_rate`, `extended_stay_rate`, `extended_stays`, `status`, `completed`, `canceled`, `canceled_by`, `on_location`, `location_time`, `pee`, `poo`, `food`, `water`, `dog_intraction`, `treat_breaks`, `play_time`, `walk_distance`, `walk_time`, `image`, `additional_comment`, `discount_code`, `discount_amount`, `site_percentage`, `site_commission`, `bill_country`, `bill_address`, `bill_apt`, `bill_city`, `bill_state`, `bill_zip`, `date`, `sitter_noti`, `owner_noti`) VALUES
(1, '75e4o4f4k365p483', 3, 1, 1, '9,6,2,10', 1, 1, 2, '06/22/2020', '12 AM', '1 AM', '06/24/2020', '12 AM', '1 AM', NULL, NULL, NULL, NULL, NULL, NULL, 2, '', 0, 10, 15, 0, 0, 1, NULL, NULL, 'test', 30, 25, 20, 40, 25, 8, 45, 25, NULL, 2, 2, 0, NULL, 1, '2020-06-20 20:19:51', 'pee', 'poo', 'food', 'water', 'dog', 'treat', 'play', 'distance', 'walk', NULL, 'test', 'test2', 50, 20, 10, 'us', 'Johar town gilwala phtak, New York', '', 'New York', 'NY', '10001', '2020-06-20 19:01:10', 0, 1),
(2, '75e4o4f4k365t483', 3, 4, 3, '9,6,2,8', 1, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'one-time', NULL, '06/29/2020,  06/30/2020', '[[\"12 AM\",\"1 AM\"],[\"12 AM\"]]', NULL, NULL, 3, '', 0, 0, 15, 20, 30, 1, NULL, NULL, 'test', 20, 10, 15, 25, 10, 8, 25, 20, NULL, 2, 2, 0, NULL, 1, '2020-06-26 04:56:20', 'pepe', 'popi', 'foodi', 'wateri', 'dogi', 'treati', 'playi', 'distanacei', 'wlaki', NULL, 'nvbvgcfdxfdx', NULL, NULL, 20, 10, 'us', 'Johar town gilwala phtak, New York', '', 'New York', 'NY', '10001', '2020-06-26 04:54:53', 0, 0),
(3, '75e4o4f4k365x483', 3, 1, 3, '9', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'one-time', NULL, '06/30/2020', '[[\"12 AM\"]]', NULL, NULL, 1, '', 0, 0, 15, 0, 0, 1, NULL, NULL, 'fsadfsd', 20, 10, 15, 25, 10, 8, 25, 20, NULL, 2, 2, 0, NULL, 1, '2020-06-26 06:49:04', 'dsfdf', 'sdfdsfd', 'f', 'dfsadf', 'dfsadf', 'dfaf', 'sdfsadf', 'sadfsd', 'fsdfasd', NULL, 'dfsadf', NULL, NULL, 20, 10, 'us', 'Johar town gilwala phtak, New York', '', 'New York', 'NY', '10001', '2020-06-26 06:47:46', 0, 0),
(4, '75e4o4f4k3651583', 3, 1, 1, '9,2,8', 1, 1, 1, '07/13/2020', '12 AM', '2 AM', '07/15/2020', '6 AM', '4 PM', NULL, NULL, NULL, NULL, NULL, NULL, 2, '', 0, 0, 15, 0, 0, 1, NULL, NULL, 'Great app', 30, 25, 20, 40, 25, 8, 45, 25, NULL, 2, 2, 0, NULL, 1, '2020-07-03 17:44:37', '2', '4', '4', '3', '3', '3', '3', '3', '3', NULL, 'Great Dog', NULL, NULL, 5, 20, 'us', 'Johar town gilwala phtak, New York', '', 'New York', 'NY', '10001', '2020-07-03 17:40:29', 0, 0),
(5, '75e4o4f4k3655583', 3, 1, 3, '9,6,2', 1, 0, 2, NULL, NULL, NULL, NULL, NULL, NULL, 'one-time', NULL, '07/13/2020,  07/15/2020,  07/14/2020', '[[\"1 AM\"],[\"1 AM\"],[\"2 AM\"]]', NULL, NULL, 3, '', 0, 0, 0, 0, 30, 1, NULL, NULL, 'Great, and calm dog', 20, 10, 15, 25, 10, 8, 25, 20, NULL, 3, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 20, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-03 18:19:54', 1, 1),
(6, '75e4o4f4k3659583', 3, 1, 2, '9,6', 1, 0, 1, '08/10/2020', '12 AM', '1 AM', '08/12/2020', '12 AM', '1 AM', NULL, NULL, NULL, NULL, NULL, NULL, 2, '', 0, 0, 0, 20, 0, 1, NULL, NULL, 'Nice home with 2 dogs', 25, 0, 0, 0, 0, 0, 0, 0, NULL, 1, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 20, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-08 23:45:52', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_breeds`
--

CREATE TABLE `tbl_breeds` (
  `id` int(10) UNSIGNED NOT NULL,
  `breed` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_breeds`
--

INSERT INTO `tbl_breeds` (`id`, `breed`) VALUES
(1, 'Afghan Hound'),
(2, 'Akbash Dog'),
(3, 'Alaskan Husky'),
(4, 'American Bulldog'),
(5, 'American Bully'),
(6, 'Argentine Dogo'),
(7, 'Australian Bulldog'),
(8, 'Billy'),
(9, 'Black Russian Terrier'),
(10, 'Cat');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `id` int(11) NOT NULL,
  `encoded_id` varchar(100) DEFAULT NULL,
  `help_type` enum('sitter','owner') DEFAULT NULL,
  `type` enum('help','resource') DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`id`, `encoded_id`, `help_type`, `type`, `slug`, `title`, `detail`, `image`, `status`) VALUES
(1, NULL, NULL, 'resource', NULL, 'Getting Started', 'Tips for cosplayer new to Cosmos. Learn how to create a great profile, set your rates, and start booking jobs.', 'fae0b27c451c728867a567e8c1bb4e53_1579688780_1853.svg', 1),
(2, NULL, NULL, 'resource', NULL, 'Safety', 'It’s our #1 priority. Keep yourself, and events in your care safe and sound with these tips.', 'cdc0d6e63aa8e41c89689f54970bb35f_1579689141_6960.svg', 1),
(5, NULL, NULL, 'resource', NULL, 'Providing Great Service', 'Give your clients—your bests—an excellent experience from start to finish. Learn more about Events, booking jobs, and tips for during the events.', '6a9aeddfc689c1d0e3b9ccc3ab651bc5_1579689217_7114.svg', 1),
(6, NULL, NULL, 'resource', NULL, 'Growing Your Business', 'Learn more about all the promotional tools and resources at your disposal to help you get found and earn more.', 'fa83a11a198d5a7f0bf77a1987bcd006_1579689238_7272.svg', 1),
(7, NULL, NULL, 'resource', NULL, 'Insurance & Finance', 'Get practical information on insurance and learn about getting paid and filing taxes.', '74bba22728b6185eec06286af6bec36d_1579689268_2455.svg', 1),
(8, NULL, NULL, 'resource', NULL, 'Seasonal Tips', 'Keep cosplay in all—winter, summer, spring, or fall. Learn more about seasonal hazards and holiday safety here.', '7380ad8a673226ae47fce7bff88e9c33_1579689317_3102.svg', 1),
(9, NULL, NULL, 'resource', NULL, 'Cosplayer Stories', 'Read inspiring stories from our amazing community of cosplayer nationwide.', 'd490d7b4576290fa60eb31b5fc917ad1_1579689341_9213.svg', 1),
(10, NULL, NULL, 'resource', NULL, 'Cosmos Updates', 'Cosmos has a lot to offer cosplayers, and we’re growing every day. Discover the Cosmos platform and be the first to know about updates and additions.', '069059b7ef840f0c74a814ec9237b6ec_1579689364_8936.svg', 1),
(12, NULL, 'sitter', 'help', NULL, 'Getting Started', NULL, NULL, 1),
(13, NULL, 'sitter', 'help', NULL, 'Booking and Meet & Greets', NULL, NULL, 1),
(14, NULL, 'sitter', 'help', NULL, 'My Profile and Services', NULL, NULL, 1),
(15, NULL, 'sitter', 'help', NULL, 'Payments', NULL, NULL, 1),
(16, NULL, 'sitter', 'help', NULL, 'Running My Business', NULL, NULL, 1),
(17, NULL, 'sitter', 'help', NULL, 'Trust and Safety', NULL, NULL, 1),
(18, NULL, 'sitter', 'help', NULL, 'Taxes', NULL, NULL, 1),
(19, NULL, 'owner', 'help', NULL, 'Getting Started', NULL, NULL, 1),
(20, NULL, 'owner', 'help', NULL, 'Account and Profile', NULL, NULL, 1),
(21, NULL, 'owner', 'help', NULL, 'Finding a Sitter', NULL, NULL, 1),
(22, NULL, 'owner', 'help', NULL, 'Booking and Meet & Greets', NULL, NULL, 1),
(23, NULL, 'owner', 'help', NULL, 'Payments', NULL, NULL, 1),
(24, NULL, 'owner', 'help', NULL, 'Trust and Safety', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chat`
--

CREATE TABLE `tbl_chat` (
  `id` int(11) NOT NULL,
  `mem_one` int(11) NOT NULL,
  `mem_two` int(11) NOT NULL,
  `time` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_chat`
--

INSERT INTO `tbl_chat` (`id`, `mem_one`, `mem_two`, `time`) VALUES
(1, 1, 3, 1596501213);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chat_attachments`
--

CREATE TABLE `tbl_chat_attachments` (
  `id` int(11) NOT NULL,
  `msg_id` int(11) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `att_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_chat_attachments`
--

INSERT INTO `tbl_chat_attachments` (`id`, `msg_id`, `attachment`, `att_name`) VALUES
(1, 4, '24b16fede9a67c9251d3e7c7161c83ac_1596220027_2426.png', 'f3.png'),
(2, 12, '496e05e1aea0a9c4655800e8a7b9ea28_1596221298_8747.png', 'f3.png'),
(3, 13, 'd34ab169b70c9dcd35e62896010cd9ff_1596221595_9805.png', 'f1.png'),
(4, 17, '335f5352088d7d9bf74191e006d8e24c_1596501208_1660.png', 'Service rate text.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chat_msgs`
--

CREATE TABLE `tbl_chat_msgs` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL DEFAULT 0,
  `chat_id` int(11) NOT NULL,
  `msg` longtext DEFAULT NULL,
  `msg_type` enum('msg','lesson','attachment') NOT NULL DEFAULT 'msg',
  `no_deleted` varchar(100) DEFAULT NULL,
  `time` int(15) NOT NULL,
  `status` enum('new','seen') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_chat_msgs`
--

INSERT INTO `tbl_chat_msgs` (`id`, `sender_id`, `chat_id`, `msg`, `msg_type`, `no_deleted`, `time`, `status`) VALUES
(1, 1, 1, 'test', 'msg', '3,1', 1596218675, 'seen'),
(2, 3, 1, 'test', 'msg', '1,3', 1596218947, 'seen'),
(3, 1, 1, 'hello', 'msg', '3,1', 1596218963, 'seen'),
(4, 3, 1, '', 'msg', '1,3', 1596220029, 'seen'),
(5, 3, 1, 'test', 'msg', '1,3', 1596220968, 'seen'),
(6, 3, 1, 'okay please', 'msg', '1,3', 1596220999, 'seen'),
(7, 1, 1, 'test', 'msg', '3,1', 1596221008, 'seen'),
(8, 3, 1, 'there?', 'msg', '1,3', 1596221056, 'seen'),
(9, 1, 1, 'hi', 'msg', '3,1', 1596221056, 'seen'),
(10, 3, 1, 'here?', 'msg', '1,3', 1596221065, 'seen'),
(11, 1, 1, 'yes', 'msg', '3,1', 1596221070, 'seen'),
(12, 1, 1, '', 'msg', '3,1', 1596221300, 'seen'),
(13, 1, 1, '', 'msg', '3,1', 1596221597, 'seen'),
(14, 3, 1, 'hi', 'msg', '1,3', 1596226744, 'seen'),
(15, 3, 1, 'hi buyer khan', 'msg', '1,3', 1596494550, 'seen'),
(16, 1, 1, 'Hi Jennifer', 'msg', '3,1', 1596494589, 'seen'),
(17, 3, 1, '', 'msg', '1,3', 1596501213, 'seen');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cities`
--

CREATE TABLE `tbl_cities` (
  `id` int(11) UNSIGNED NOT NULL,
  `city` varchar(155) DEFAULT '',
  `state` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_cities`
--

INSERT INTO `tbl_cities` (`id`, `city`, `state`) VALUES
(6, 'Irvine', 'CA'),
(7, 'Long Beach', 'CA'),
(10, 'Santa Monica', 'CA'),
(17, 'Jersey City, NJ', NULL),
(29, 'Marietta', 'GA'),
(46, 'Brooklyn', 'NY'),
(59, 'Fresno', 'CA'),
(60, 'Huntington Beach', 'CA'),
(63, 'Pasadena', 'CA'),
(64, 'Santa Clarita', 'CA'),
(67, 'Atlanta', 'GA'),
(68, 'Alpharetta', 'GA'),
(69, 'Sandy Springs', 'GA'),
(70, 'Duluth', 'GA'),
(71, 'Albany', 'NY'),
(72, 'Long Island', 'NY'),
(73, 'Buffalo', 'NY'),
(74, 'Rochester', 'NY'),
(75, 'Kennesaw', 'GA'),
(76, 'Woodstock', 'GA'),
(77, 'Decatur', 'GA'),
(78, 'Roswell', 'GA'),
(79, 'Middletown', 'NY'),
(80, 'Syracuse', 'NY'),
(81, 'Los Angeles', 'CA'),
(82, 'San Diego', 'CA'),
(83, 'San Francisco', 'CA'),
(84, 'Santa Monica', 'CA'),
(85, 'San Jose', 'CA'),
(86, 'Long Beach', 'CA'),
(87, 'Sacramento', 'GA'),
(88, 'Savannah', 'GA'),
(89, 'Mableton', 'GA'),
(90, 'Cumming', 'GA'),
(91, 'Buford', 'GA'),
(92, 'Athens', 'GA');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_countries`
--

CREATE TABLE `tbl_countries` (
  `id` int(11) NOT NULL,
  `sortname` varchar(3) NOT NULL,
  `name` varchar(150) NOT NULL,
  `phonecode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_countries`
--

INSERT INTO `tbl_countries` (`id`, `sortname`, `name`, `phonecode`) VALUES
(1, 'AF', 'Afghanistan', 93),
(2, 'AL', 'Albania', 355),
(3, 'DZ', 'Algeria', 213),
(4, 'AS', 'American Samoa', 1684),
(5, 'AD', 'Andorra', 376),
(6, 'AO', 'Angola', 244),
(7, 'AI', 'Anguilla', 1264),
(8, 'AQ', 'Antarctica', 0),
(9, 'AG', 'Antigua And Barbuda', 1268),
(10, 'AR', 'Argentina', 54),
(11, 'AM', 'Armenia', 374),
(12, 'AW', 'Aruba', 297),
(13, 'AU', 'Australia', 61),
(14, 'AT', 'Austria', 43),
(15, 'AZ', 'Azerbaijan', 994),
(16, 'BS', 'Bahamas The', 1242),
(17, 'BH', 'Bahrain', 973),
(18, 'BD', 'Bangladesh', 880),
(19, 'BB', 'Barbados', 1246),
(20, 'BY', 'Belarus', 375),
(21, 'BE', 'Belgium', 32),
(22, 'BZ', 'Belize', 501),
(23, 'BJ', 'Benin', 229),
(24, 'BM', 'Bermuda', 1441),
(25, 'BT', 'Bhutan', 975),
(26, 'BO', 'Bolivia', 591),
(27, 'BA', 'Bosnia and Herzegovina', 387),
(28, 'BW', 'Botswana', 267),
(29, 'BV', 'Bouvet Island', 0),
(30, 'BR', 'Brazil', 55),
(31, 'IO', 'British Indian Ocean Territory', 246),
(32, 'BN', 'Brunei', 673),
(33, 'BG', 'Bulgaria', 359),
(34, 'BF', 'Burkina Faso', 226),
(35, 'BI', 'Burundi', 257),
(36, 'KH', 'Cambodia', 855),
(37, 'CM', 'Cameroon', 237),
(38, 'CA', 'Canada', 1),
(39, 'CV', 'Cape Verde', 238),
(40, 'KY', 'Cayman Islands', 1345),
(41, 'CF', 'Central African Republic', 236),
(42, 'TD', 'Chad', 235),
(43, 'CL', 'Chile', 56),
(44, 'CN', 'China', 86),
(45, 'CX', 'Christmas Island', 61),
(46, 'CC', 'Cocos (Keeling) Islands', 672),
(47, 'CO', 'Colombia', 57),
(48, 'KM', 'Comoros', 269),
(49, 'CG', 'Republic Of The Congo', 242),
(50, 'CD', 'Democratic Republic Of The Congo', 242),
(51, 'CK', 'Cook Islands', 682),
(52, 'CR', 'Costa Rica', 506),
(53, 'CI', 'Cote D\'Ivoire (Ivory Coast)', 225),
(54, 'HR', 'Croatia (Hrvatska)', 385),
(55, 'CU', 'Cuba', 53),
(56, 'CY', 'Cyprus', 357),
(57, 'CZ', 'Czech Republic', 420),
(58, 'DK', 'Denmark', 45),
(59, 'DJ', 'Djibouti', 253),
(60, 'DM', 'Dominica', 1767),
(61, 'DO', 'Dominican Republic', 1809),
(62, 'TP', 'East Timor', 670),
(63, 'EC', 'Ecuador', 593),
(64, 'EG', 'Egypt', 20),
(65, 'SV', 'El Salvador', 503),
(66, 'GQ', 'Equatorial Guinea', 240),
(67, 'ER', 'Eritrea', 291),
(68, 'EE', 'Estonia', 372),
(69, 'ET', 'Ethiopia', 251),
(70, 'XA', 'External Territories of Australia', 61),
(71, 'FK', 'Falkland Islands', 500),
(72, 'FO', 'Faroe Islands', 298),
(73, 'FJ', 'Fiji Islands', 679),
(74, 'FI', 'Finland', 358),
(75, 'FR', 'France', 33),
(76, 'GF', 'French Guiana', 594),
(77, 'PF', 'French Polynesia', 689),
(78, 'TF', 'French Southern Territories', 0),
(79, 'GA', 'Gabon', 241),
(80, 'GM', 'Gambia The', 220),
(81, 'GE', 'Georgia', 995),
(82, 'DE', 'Germany', 49),
(83, 'GH', 'Ghana', 233),
(84, 'GI', 'Gibraltar', 350),
(85, 'GR', 'Greece', 30),
(86, 'GL', 'Greenland', 299),
(87, 'GD', 'Grenada', 1473),
(88, 'GP', 'Guadeloupe', 590),
(89, 'GU', 'Guam', 1671),
(90, 'GT', 'Guatemala', 502),
(91, 'XU', 'Guernsey and Alderney', 44),
(92, 'GN', 'Guinea', 224),
(93, 'GW', 'Guinea-Bissau', 245),
(94, 'GY', 'Guyana', 592),
(95, 'HT', 'Haiti', 509),
(96, 'HM', 'Heard and McDonald Islands', 0),
(97, 'HN', 'Honduras', 504),
(98, 'HK', 'Hong Kong S.A.R.', 852),
(99, 'HU', 'Hungary', 36),
(100, 'IS', 'Iceland', 354),
(101, 'IN', 'India', 91),
(102, 'ID', 'Indonesia', 62),
(103, 'IR', 'Iran', 98),
(104, 'IQ', 'Iraq', 964),
(105, 'IE', 'Ireland', 353),
(106, 'IL', 'Israel', 972),
(107, 'IT', 'Italy', 39),
(108, 'JM', 'Jamaica', 1876),
(109, 'JP', 'Japan', 81),
(110, 'XJ', 'Jersey', 44),
(111, 'JO', 'Jordan', 962),
(112, 'KZ', 'Kazakhstan', 7),
(113, 'KE', 'Kenya', 254),
(114, 'KI', 'Kiribati', 686),
(115, 'KP', 'Korea North', 850),
(116, 'KR', 'Korea South', 82),
(117, 'KW', 'Kuwait', 965),
(118, 'KG', 'Kyrgyzstan', 996),
(119, 'LA', 'Laos', 856),
(120, 'LV', 'Latvia', 371),
(121, 'LB', 'Lebanon', 961),
(122, 'LS', 'Lesotho', 266),
(123, 'LR', 'Liberia', 231),
(124, 'LY', 'Libya', 218),
(125, 'LI', 'Liechtenstein', 423),
(126, 'LT', 'Lithuania', 370),
(127, 'LU', 'Luxembourg', 352),
(128, 'MO', 'Macau S.A.R.', 853),
(129, 'MK', 'Macedonia', 389),
(130, 'MG', 'Madagascar', 261),
(131, 'MW', 'Malawi', 265),
(132, 'MY', 'Malaysia', 60),
(133, 'MV', 'Maldives', 960),
(134, 'ML', 'Mali', 223),
(135, 'MT', 'Malta', 356),
(136, 'XM', 'Man (Isle of)', 44),
(137, 'MH', 'Marshall Islands', 692),
(138, 'MQ', 'Martinique', 596),
(139, 'MR', 'Mauritania', 222),
(140, 'MU', 'Mauritius', 230),
(141, 'YT', 'Mayotte', 269),
(142, 'MX', 'Mexico', 52),
(143, 'FM', 'Micronesia', 691),
(144, 'MD', 'Moldova', 373),
(145, 'MC', 'Monaco', 377),
(146, 'MN', 'Mongolia', 976),
(147, 'MS', 'Montserrat', 1664),
(148, 'MA', 'Morocco', 212),
(149, 'MZ', 'Mozambique', 258),
(150, 'MM', 'Myanmar', 95),
(151, 'NA', 'Namibia', 264),
(152, 'NR', 'Nauru', 674),
(153, 'NP', 'Nepal', 977),
(154, 'AN', 'Netherlands Antilles', 599),
(155, 'NL', 'Netherlands The', 31),
(156, 'NC', 'New Caledonia', 687),
(157, 'NZ', 'New Zealand', 64),
(158, 'NI', 'Nicaragua', 505),
(159, 'NE', 'Niger', 227),
(160, 'NG', 'Nigeria', 234),
(161, 'NU', 'Niue', 683),
(162, 'NF', 'Norfolk Island', 672),
(163, 'MP', 'Northern Mariana Islands', 1670),
(164, 'NO', 'Norway', 47),
(165, 'OM', 'Oman', 968),
(166, 'PK', 'Pakistan', 92),
(167, 'PW', 'Palau', 680),
(168, 'PS', 'Palestinian Territory Occupied', 970),
(169, 'PA', 'Panama', 507),
(170, 'PG', 'Papua new Guinea', 675),
(171, 'PY', 'Paraguay', 595),
(172, 'PE', 'Peru', 51),
(173, 'PH', 'Philippines', 63),
(174, 'PN', 'Pitcairn Island', 0),
(175, 'PL', 'Poland', 48),
(176, 'PT', 'Portugal', 351),
(177, 'PR', 'Puerto Rico', 1787),
(178, 'QA', 'Qatar', 974),
(179, 'RE', 'Reunion', 262),
(180, 'RO', 'Romania', 40),
(181, 'RU', 'Russia', 70),
(182, 'RW', 'Rwanda', 250),
(183, 'SH', 'Saint Helena', 290),
(184, 'KN', 'Saint Kitts And Nevis', 1869),
(185, 'LC', 'Saint Lucia', 1758),
(186, 'PM', 'Saint Pierre and Miquelon', 508),
(187, 'VC', 'Saint Vincent And The Grenadines', 1784),
(188, 'WS', 'Samoa', 684),
(189, 'SM', 'San Marino', 378),
(190, 'ST', 'Sao Tome and Principe', 239),
(191, 'SA', 'Saudi Arabia', 966),
(192, 'SN', 'Senegal', 221),
(193, 'RS', 'Serbia', 381),
(194, 'SC', 'Seychelles', 248),
(195, 'SL', 'Sierra Leone', 232),
(196, 'SG', 'Singapore', 65),
(197, 'SK', 'Slovakia', 421),
(198, 'SI', 'Slovenia', 386),
(199, 'XG', 'Smaller Territories of the UK', 44),
(200, 'SB', 'Solomon Islands', 677),
(201, 'SO', 'Somalia', 252),
(202, 'ZA', 'South Africa', 27),
(203, 'GS', 'South Georgia', 0),
(204, 'SS', 'South Sudan', 211),
(205, 'ES', 'Spain', 34),
(206, 'LK', 'Sri Lanka', 94),
(207, 'SD', 'Sudan', 249),
(208, 'SR', 'Suriname', 597),
(209, 'SJ', 'Svalbard And Jan Mayen Islands', 47),
(210, 'SZ', 'Swaziland', 268),
(211, 'SE', 'Sweden', 46),
(212, 'CH', 'Switzerland', 41),
(213, 'SY', 'Syria', 963),
(214, 'TW', 'Taiwan', 886),
(215, 'TJ', 'Tajikistan', 992),
(216, 'TZ', 'Tanzania', 255),
(217, 'TH', 'Thailand', 66),
(218, 'TG', 'Togo', 228),
(219, 'TK', 'Tokelau', 690),
(220, 'TO', 'Tonga', 676),
(221, 'TT', 'Trinidad And Tobago', 1868),
(222, 'TN', 'Tunisia', 216),
(223, 'TR', 'Turkey', 90),
(224, 'TM', 'Turkmenistan', 7370),
(225, 'TC', 'Turks And Caicos Islands', 1649),
(226, 'TV', 'Tuvalu', 688),
(227, 'UG', 'Uganda', 256),
(228, 'UA', 'Ukraine', 380),
(229, 'AE', 'United Arab Emirates', 971),
(230, 'GB', 'United Kingdom', 44),
(231, 'US', 'United States', 1),
(232, 'UM', 'United States Minor Outlying Islands', 1),
(233, 'UY', 'Uruguay', 598),
(234, 'UZ', 'Uzbekistan', 998),
(235, 'VU', 'Vanuatu', 678),
(236, 'VA', 'Vatican City State (Holy See)', 39),
(237, 'VE', 'Venezuela', 58),
(238, 'VN', 'Vietnam', 84),
(239, 'VG', 'Virgin Islands (British)', 1284),
(240, 'VI', 'Virgin Islands (US)', 1340),
(241, 'WF', 'Wallis And Futuna Islands', 681),
(242, 'EH', 'Western Sahara', 212),
(243, 'YE', 'Yemen', 967),
(244, 'YU', 'Yugoslavia', 38),
(245, 'ZM', 'Zambia', 260),
(246, 'ZW', 'Zimbabwe', 263);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_favorites`
--

CREATE TABLE `tbl_favorites` (
  `mem_id` int(11) DEFAULT NULL,
  `ref_id` int(11) DEFAULT NULL,
  `ref_type` enum('sitter') DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_favorites`
--

INSERT INTO `tbl_favorites` (`mem_id`, `ref_id`, `ref_type`, `date`) VALUES
(1, 3, 'sitter', '2020-02-11 12:14:16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_founders`
--

CREATE TABLE `tbl_founders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `designation` varchar(500) DEFAULT NULL,
  `overview` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_founders`
--

INSERT INTO `tbl_founders` (`id`, `name`, `designation`, `overview`, `image`) VALUES
(1, 'John Wick', 'CEO & Co-Founder', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus id ex odit, quo porro nesciunt. Vel magni id dolores quas repudiandae accusantium, ipsum quia nobis. Perspiciatis totam error veniam repudiandae.\r\n\r\nMinus id ex odit, quo porro nesciunt. Vel magni id dolores quas repudiandae accusantium, ipsum quia nobis. Perspiciatis totam error veniam repudiandae. Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus id ex odit, quo porro nesciunt. Vel magni id dolores quas repudiandae accusantium, ipsum quia nobis. Perspiciatis totam error veniam repudiandae.', 'db8e1af0cb3aca1ae2d0018624204529_1597401264_4648.jpg'),
(2, 'Jennifer Kem', 'Web Designer', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus id ex odit, quo porro nesciunt. Vel magni id dolores quas repudiandae accusantium, ipsum quia nobis. Perspiciatis totam error veniam repudiandae.\r\n\r\nMinus id ex odit, quo porro nesciunt. Vel magni id dolores quas repudiandae accusantium, ipsum quia nobis. Perspiciatis totam error veniam repudiandae. Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus id ex odit, quo porro nesciunt. Vel magni id dolores quas repudiandae accusantium, ipsum quia nobis. Perspiciatis totam error veniam repudiandae.', 'ec5aa0b7846082a2415f0902f0da88f2_1597401294_1149.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `id` int(10) UNSIGNED NOT NULL,
  `ref_id` int(10) UNSIGNED DEFAULT NULL,
  `ref_type` enum('member','pet','booking') DEFAULT 'member',
  `image` varchar(255) DEFAULT NULL,
  `main` tinyint(1) DEFAULT 0,
  `admin` tinyint(1) DEFAULT 0,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`id`, `ref_id`, `ref_type`, `image`, `main`, `admin`, `date`) VALUES
(12, 1, 'pet', '8eefcfdf5990e441f0fb6f3fad709e21_1579084505_2644.jpg', 1, 0, '2020-01-15 11:35:05'),
(13, 2, 'pet', '11b9842e0a271ff252c1903e7132cd68_1579085007_2678.jpg', 1, 0, '2020-01-15 11:43:27'),
(14, 4, 'member', 'f2217062e9a397a1dca429e7d70bc6ca_1580382992_8342.jpg', 0, 0, '2020-01-30 12:16:32'),
(15, 4, 'member', 'd1f255a373a3cef72e03aa9d980c7eca_1580382992_7778.jpg', 0, 0, '2020-01-30 12:16:32'),
(16, 5, 'member', 'b056eb1587586b71e2da9acfe4fbd19e_1580393653_5641.jpg', 0, 0, '2020-01-30 15:14:13'),
(17, 8, 'member', '81e74d678581a3bb7a720b019f4f1a93_1580995243_2070.jpg', 0, 0, '2020-02-06 14:20:46'),
(18, 8, 'member', '1e056d2b0ebd5c878c550da6ac5d3724_1580995247_1350.jpg', 0, 0, '2020-02-06 14:20:47'),
(24, 13, 'member', '443cb001c138b2561a0d90720d6ce111_1582293165_4719.jpg', 0, 0, '2020-02-21 07:52:45'),
(25, 14, 'member', '9b72e31dac81715466cd580a448cf823_1583758105_8062.jpg', 0, 0, '2020-03-09 07:48:25'),
(26, 15, 'member', 'f74909ace68e51891440e4da0b65a70c_1583764861_2016.jpg', 0, 0, '2020-03-09 09:41:01'),
(27, NULL, 'pet', 'cbcb58ac2e496207586df2854b17995f_1585833851_4691.jpg', 0, 0, '2020-04-02 15:24:12'),
(28, NULL, 'pet', 'cfbce4c1d7c425baf21d6b6f2babe6be_1585833919_4141.jpg', 0, 0, '2020-04-02 15:25:19'),
(29, NULL, 'pet', 'e744f91c29ec99f0e662c9177946c627_1585833942_5611.jpg', 0, 0, '2020-04-02 15:25:42'),
(30, 3, 'pet', 'f1b6f2857fb6d44dd73c7041e0aa0f19_1585835500_5601.jpg', 1, 0, '2020-04-02 15:51:40'),
(31, 4, 'pet', 'c4b31ce7d95c75ca70d50c19aef08bf1_1585836289_9331.jpg', 0, 0, '2020-04-02 16:04:49'),
(32, NULL, 'pet', 'fa83a11a198d5a7f0bf77a1987bcd006_1585836972_4464.jpg', 0, 0, '2020-04-02 16:16:12'),
(33, 5, 'pet', 'a9a1d5317a33ae8cef33961c34144f84_1586167934_3986.jpg', 1, 0, '2020-04-06 12:12:15'),
(34, 6, 'pet', '05f971b5ec196b8c65b75d2ef8267331_1586168107_1920.jpg', 1, 0, '2020-04-06 12:15:07'),
(35, 7, 'pet', '16c222aa19898e5058938167c8ab6c57_1586168272_2469.jpg', 1, 0, '2020-04-06 12:17:53'),
(36, 8, 'pet', 'c22abfa379f38b5b0411bc11fa9bf92f_1586168438_5245.jpg', 1, 0, '2020-04-06 12:20:38'),
(37, 9, 'pet', '0d7de1aca9299fe63f3e0041f02638a3_1586168550_9178.jpg', 1, 0, '2020-04-06 12:22:31'),
(38, 10, 'pet', 'be83ab3ecd0db773eb2dc1b0a17836a1_1586172366_7305.jpg', 1, 0, '2020-04-06 13:26:06'),
(39, 11, 'pet', '1cc3633c579a90cfdd895e64021e2163_1586172494_6164.jpg', 0, 0, '2020-04-06 13:28:14'),
(45, 1, 'booking', '22fb0cee7e1f3bde58293de743871417_1592292342_6608.jpg', 0, 0, '2020-06-16 09:25:42'),
(46, 1, 'booking', '854d9fca60b4bd07f9bb215d59ef5561_1592292342_9447.jpg', 0, 0, '2020-06-16 09:25:43'),
(47, 17, 'member', '185e65bc40581880c4f2c82958de8cfe_1592898089_4558.jpg', 0, 0, '2020-06-23 09:41:30'),
(49, 1, 'booking', '66368270ffd51418ec58bd793f2d9b1b_1593154351_7849.jpg', 0, 0, '2020-06-26 08:52:31'),
(50, 1, 'booking', 'c2626d850c80ea07e7511bbae4c76f4b_1593154351_5386.jpg', 0, 0, '2020-06-26 08:52:32'),
(51, 2, 'booking', 'b4288d9c0ec0a1841b3b3728321e7088_1593158213_8201.jpg', 0, 0, '2020-06-26 09:56:54'),
(52, 3, 'booking', '70c639df5e30bdee440e4cdf599fec2b_1593164966_4513.jpg', 0, 0, '2020-06-26 11:49:26'),
(53, 4, 'booking', 'efe937780e95574250dabe07151bdc23_1593798331_1760.jpg', 0, 0, '2020-07-03 12:45:31'),
(54, NULL, 'pet', '8df707a948fac1b4a0f97aa554886ec8_1594418116_3431.jpg', 0, 0, '2020-07-10 16:55:17'),
(55, NULL, 'pet', '138bb0696595b338afbab333c555292a_1594418135_3493.jpg', 0, 0, '2020-07-10 16:55:35'),
(56, NULL, 'pet', '7380ad8a673226ae47fce7bff88e9c33_1594418176_7549.jpg', 0, 0, '2020-07-10 16:56:17'),
(57, 3, 'member', '3cec07e9ba5f5bb252d13f5f431e4bbb_1597661819_2319.jpg', 0, 0, '2020-08-17 12:57:00'),
(58, 3, 'member', '013d407166ec4fa56eb1e1f8cbe183b9_1597661830_1278.jpg', 0, 0, '2020-08-17 12:57:10'),
(59, 3, 'member', '0d7de1aca9299fe63f3e0041f02638a3_1597661831_9868.jpg', 0, 0, '2020-08-17 12:57:11'),
(60, 3, 'member', '705f2172834666788607efbfca35afb3_1597661831_6970.jpg', 0, 0, '2020-08-17 12:57:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_help`
--

CREATE TABLE `tbl_help` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `is_book_now` tinyint(4) DEFAULT 0,
  `title` varchar(500) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_help`
--

INSERT INTO `tbl_help` (`id`, `cat_id`, `is_book_now`, `title`, `detail`, `meta_description`, `meta_keywords`) VALUES
(1, 12, 0, 'How do I become a pet sitter or dog walker on PFSC?', '', 'test', 'test'),
(2, 12, 0, 'Becoming a Sitter: Frequently Asked Questions', '', NULL, NULL),
(3, 12, 0, 'Getting Started as a PFSC Now Walker', '', NULL, NULL),
(4, 13, 1, 'Make Changes to a Booking', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n', 'test', 'test'),
(5, 13, 1, 'How do I book with an owner?', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n', 'test', 'test'),
(6, 13, 0, 'How do I contact a client?', '', NULL, NULL),
(7, 14, 0, 'What are the different types of PFSC Now services?', '', NULL, NULL),
(8, 14, 0, 'How to Manage Your Walking Status', '', NULL, NULL),
(9, 14, 0, 'How do I set pet preferences and limit the number of dogs per booking?', '', NULL, NULL),
(10, 15, 0, 'Viewing and Managing Payments', '', NULL, NULL),
(11, 15, 0, 'How do I get paid through the app?', '', NULL, NULL),
(12, 15, 0, 'How do I get paid for bookings?', '', NULL, NULL),
(13, 16, 0, 'How can I promote my business?', '', NULL, NULL),
(14, 16, 0, 'What are sitter performance scores?', '', NULL, NULL),
(15, 16, 0, 'How do I troubleshoot the PFSC app?', '', NULL, NULL),
(16, 17, 0, 'How can I have a safe, stress-free stay?', '', NULL, NULL),
(17, 17, 0, 'What do sitters need to know about the PFSC Guarantee?', '', NULL, NULL),
(18, 17, 0, 'How does the sitter profile review process work?', '', NULL, NULL),
(19, 18, 0, 'What\'s a W-9? Do I need to submit one to PFSC?', '', NULL, NULL),
(20, 18, 0, 'Will I receive a 1099 from PFSC?', '', NULL, NULL),
(21, 18, 0, 'Where can I view my total earnings?', '', NULL, NULL),
(22, 19, 0, 'What is PFSC Now walking? Is it available in my city?', '', NULL, NULL),
(23, 19, 0, 'What is PFSC?', '', NULL, NULL),
(24, 19, 0, 'Is PFSC right for my dog?', '', NULL, NULL),
(25, 20, 0, 'How do I reset my password?', '', NULL, NULL),
(26, 20, 0, 'How do I update my phone number?', '', NULL, NULL),
(27, 20, 0, 'How do I view and manage requests from my PFSC account?', '', NULL, NULL),
(28, 21, 0, 'What services do sitters offer?', '', NULL, NULL),
(29, 21, 0, 'How do I find a sitter or dog walker for my pet?', '', NULL, NULL),
(30, 21, 0, 'How do I request a PFSC Now walk or drop-in?', '', NULL, NULL),
(31, 22, 0, 'How do I contact a pet sitter or dog walker?', '', NULL, NULL),
(32, 22, 0, 'How do I modify a booked service?', '', NULL, NULL),
(33, 22, 0, 'How do I cancel a booking and receive a refund?', '', NULL, NULL),
(34, 23, 0, 'How do I pay for a booking?', '', NULL, NULL),
(35, 23, 0, 'When will I be charged for a service?', '', NULL, NULL),
(36, 23, 0, 'How much does it cost to book a sitter or dog walker?', '', NULL, NULL),
(37, 24, 0, ' What does PFSC do to support safety?', '', NULL, NULL),
(38, 24, 0, 'What does the PFSC Guarantee cover for owners?', '', NULL, NULL),
(39, 24, 0, 'Keeping your account secure', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_holidays`
--

CREATE TABLE `tbl_holidays` (
  `id` int(11) UNSIGNED NOT NULL,
  `date` varchar(2) DEFAULT NULL,
  `month` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_holidays`
--

INSERT INTO `tbl_holidays` (`id`, `date`, `month`) VALUES
(1, '08', '06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jobs`
--

CREATE TABLE `tbl_jobs` (
  `id` int(11) NOT NULL,
  `encoded_id` varchar(255) DEFAULT NULL,
  `mem_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `grade_level` varchar(255) DEFAULT NULL,
  `budget` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jobs`
--

INSERT INTO `tbl_jobs` (`id`, `encoded_id`, `mem_id`, `title`, `subject`, `grade_level`, `budget`, `city`, `state`, `zip`, `detail`, `status`, `date`) VALUES
(1, 'f5e4h3l4l335h483', 2, 'Restaurant Team Member', 'Math', 'Middle School', 20, 'Durango', 'CO', '81301', 'Project managers oversee the project to ensure the desired result is achieved, the most efficient resources are used and the different interests involved are satisfied.Project managers ensure that a project is completed on time and within budget, that the project&#039;s objectives are met and that everyone is doing their job properly. Projects are usually separate to usual day-to-day business activities and require a group of people to work together to achieve a set of specific objectives. Project managers oversee the project to ensure the desired result is achieved, the most efficient resources are used and the different interests involved are satisfied.\r\n\r\nWe ensure that a project is completed on time and within budget, that the project&#039;s objectives are met and that everyone is doing their job properly. Projects are usually separate to usual day-to-day business activities and require a group of people to work together to achieve a set of specific objectives. Project managers oversee the project to ensure the desired result is achieved, the most efficient resources are used and the different interests involved are satisfied.', 1, '2019-07-10 13:02:32'),
(2, 'f5e4h3l4l3p5h483', 2, 'Restaurant Team Member1', 'English', 'High School', 50, 'Evergreen', 'CO', '80439', 'Project managers oversee the project to ensure the desired result is achieved, the most efficient resources are used and the different interests involved are satisfied.Project managers ensure that a project is completed on time and within budget, that the project\'s objectives are met and that everyone is doing their job properly. Projects are usually separate to usual day-to-day business activities and require a group of people to work together to achieve a set of specific objectives. Project managers oversee the project to ensure the desired result is achieved, the most efficient resources are used and the different interests involved are satisfied.\r\n\r\nWe ensure that a project is completed on time and within budget, that the project\'s objectives are met and that everyone is doing their job properly. Projects are usually separate to usual day-to-day business activities and require a group of people to work together to achieve a set of specific objectives. Project managers oversee the project to ensure the desired result is achieved, the most efficient resources are used and the different interests involved are satisfied.', 0, '2019-07-10 13:07:08'),
(3, 'f5e4h3l4l356h483', 2, 'Restaurant Team Member2', 'Economics', 'Elementary School', 100, 'Westminster', 'CO1', '800201', 'Project managers oversee the project to ensure the desired result is achieved, the most efficient resources are used and the different interests involved are satisfied.Project managers ensure that a project is completed on time and within budget, that the project&amp;#039;s objectives are met and that everyone is doing their job properly. Projects are usually separate to usual day-to-day business activities and require a group of people to work together to achieve a set of specific objectives. Project managers oversee the project to ensure the desired result is achieved, the most efficient resources are used and the different interests involved are satisfied.\r\n\r\nWe ensure that a project is completed on time and within budget, that the project&amp;#039;s objectives are met and that everyone is doing their job properly. Projects are usually separate to usual day-to-day business activities and require a group of people to work together to achieve a set of specific objectives. Project managers oversee the project to ensure the desired result is achieved, the most efficient resources are used and the different interests involved are satisfied.', 1, '2019-07-10 13:08:15');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_job_grade_levels`
--

CREATE TABLE `tbl_job_grade_levels` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_job_grade_levels`
--

INSERT INTO `tbl_job_grade_levels` (`id`, `name`, `slug`) VALUES
(1, 'Elementary School', 'elementary-school'),
(2, 'Middle School', 'middle-school'),
(3, 'High School', 'high-school'),
(4, 'College', 'college'),
(5, 'Adult', 'adult');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_members`
--

CREATE TABLE `tbl_members` (
  `mem_id` int(11) NOT NULL,
  `mem_remember` varchar(255) DEFAULT NULL,
  `mem_token` varchar(100) DEFAULT NULL,
  `mem_type` enum('owner','sitter') DEFAULT NULL,
  `mem_social_type` varchar(255) DEFAULT 'website',
  `mem_social_id` varchar(255) DEFAULT NULL,
  `mem_fname` varchar(255) DEFAULT NULL,
  `mem_lname` varchar(255) DEFAULT NULL,
  `mem_email` varchar(255) DEFAULT NULL,
  `mem_pswd` varchar(255) DEFAULT NULL,
  `mem_code` varchar(255) NOT NULL,
  `mem_phone` varchar(255) DEFAULT NULL,
  `mem_sex` enum('male','female','other') DEFAULT NULL,
  `mem_dob` date DEFAULT NULL,
  `mem_company` varchar(255) DEFAULT NULL,
  `mem_website` varchar(255) NOT NULL,
  `mem_about` text DEFAULT NULL,
  `mem_profile_heading` varchar(255) DEFAULT NULL,
  `mem_video` varchar(255) DEFAULT NULL,
  `mem_image` varchar(100) DEFAULT NULL,
  `mem_cover_image` varchar(255) NOT NULL,
  `mem_street` varchar(100) DEFAULT NULL,
  `mem_address1` varchar(255) NOT NULL,
  `mem_address2` varchar(255) NOT NULL,
  `mem_city` varchar(255) NOT NULL,
  `mem_state` varchar(2) DEFAULT NULL,
  `mem_zip` varchar(100) DEFAULT NULL,
  `mem_country_id` int(11) NOT NULL,
  `mem_ssn` varchar(50) DEFAULT NULL,
  `mem_dln` varchar(50) DEFAULT NULL,
  `mem_travel_radius` float UNSIGNED DEFAULT NULL,
  `mem_sitter_reason` varchar(500) DEFAULT NULL,
  `mem_monthly_income` varchar(500) DEFAULT NULL,
  `mem_inspection` enum('yes','no') DEFAULT 'yes',
  `mem_contact_name` varchar(255) DEFAULT NULL,
  `mem_contact_phone` varchar(255) DEFAULT NULL,
  `mem_home_type` varchar(10) DEFAULT NULL,
  `mem_have_yard` varchar(10) DEFAULT NULL,
  `mem_non_smoke_house` tinyint(1) DEFAULT 0,
  `mem_children` varchar(4) DEFAULT NULL,
  `mem_not_dog` tinyint(1) DEFAULT 0,
  `mem_not_cat` tinyint(1) DEFAULT 0,
  `mem_one_client` tinyint(1) DEFAULT 0,
  `mem_caged_pet` tinyint(1) DEFAULT 0,
  `mem_allow_furniture` tinyint(1) DEFAULT 0,
  `mem_allow_bed` tinyint(1) DEFAULT 0,
  `mem_stay_activities` text DEFAULT NULL,
  `mem_breed_prefrences` text DEFAULT NULL,
  `mem_dog_first_aid` tinyint(1) DEFAULT NULL,
  `mem_oral_medication` tinyint(1) DEFAULT NULL,
  `mem_injected_medication` tinyint(1) DEFAULT NULL,
  `mem_senior_dog_care` tinyint(1) DEFAULT NULL,
  `mem_special_need_dog` tinyint(1) DEFAULT NULL,
  `mem_daily_exercise` tinyint(1) DEFAULT NULL,
  `mem_week_longer_stay` tinyint(1) DEFAULT NULL,
  `mem_host_dog_size` varchar(24) DEFAULT NULL,
  `mem_host_cat` tinyint(1) DEFAULT NULL,
  `mem_host_puppy_under_one` tinyint(1) DEFAULT NULL,
  `mem_different_families_dog` tinyint(1) DEFAULT NULL,
  `mem_accept_dog_size` varchar(24) DEFAULT NULL,
  `mem_accept_cat` tinyint(1) DEFAULT NULL,
  `mem_accept_puppy_under_one` tinyint(1) DEFAULT NULL,
  `mem_package_id` int(10) UNSIGNED DEFAULT NULL,
  `mem_pkg_type` enum('monthly','yearly') DEFAULT NULL,
  `mem_pkg_status` tinyint(1) DEFAULT 0 COMMENT '''0 for pending'',''1 for paid'',''2 for expired''',
  `mem_pkg_expiry_date` date DEFAULT NULL,
  `mem_membership_pref` tinyint(1) DEFAULT 0,
  `mem_membership_auto` tinyint(1) DEFAULT 0,
  `mem_subscription_id` varchar(255) DEFAULT NULL,
  `mem_ip` varchar(255) NOT NULL,
  `mem_note` varchar(255) DEFAULT NULL,
  `mem_referral_code` varchar(6) DEFAULT NULL,
  `mem_fb_link` varchar(255) DEFAULT NULL,
  `mem_twitter_link` varchar(255) DEFAULT NULL,
  `mem_linkedin_link` varchar(255) DEFAULT NULL,
  `mem_youtube_link` varchar(255) DEFAULT NULL,
  `mem_paypal` varchar(255) DEFAULT NULL,
  `mem_stripe_id` varchar(255) DEFAULT NULL,
  `mem_map_lat` varchar(500) DEFAULT NULL,
  `mem_map_lng` varchar(500) DEFAULT NULL,
  `mem_hear_about` varchar(255) DEFAULT NULL,
  `mem_sitter_progress` tinyint(2) DEFAULT 0,
  `mem_sitter_application` tinyint(1) NOT NULL DEFAULT 0,
  `mem_become_owner` tinyint(1) DEFAULT 0,
  `mem_phone_code` varchar(6) DEFAULT NULL,
  `mem_phone_verified` tinyint(1) NOT NULL DEFAULT 0,
  `mem_sitter_verified` tinyint(1) NOT NULL DEFAULT 0,
  `mem_verified` tinyint(1) NOT NULL DEFAULT 0,
  `mem_status` tinyint(1) NOT NULL DEFAULT 1,
  `mem_bg_check` tinyint(1) DEFAULT 0,
  `mem_inspected` tinyint(1) DEFAULT 0,
  `mem_featured` tinyint(1) DEFAULT 0,
  `mem_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `mem_last_login` timestamp NOT NULL DEFAULT current_timestamp(),
  `email_new_message` tinyint(1) DEFAULT NULL,
  `email_new_booking` tinyint(1) DEFAULT NULL,
  `email_res_booking` tinyint(1) DEFAULT NULL,
  `email_accept_booking` tinyint(1) DEFAULT NULL,
  `email_confirm_booking` tinyint(1) DEFAULT NULL,
  `email_checkin` tinyint(1) DEFAULT NULL,
  `email_cancel_booking` tinyint(1) DEFAULT NULL,
  `email_calendar` tinyint(1) DEFAULT NULL,
  `email_marketing` tinyint(1) DEFAULT NULL,
  `mobile_new_message` tinyint(1) DEFAULT NULL,
  `mobile_new_booking` tinyint(1) DEFAULT NULL,
  `mobile_res_booking` tinyint(1) DEFAULT NULL,
  `mobile_accept_booking` tinyint(1) DEFAULT NULL,
  `mobile_confirm_booking` tinyint(1) DEFAULT NULL,
  `mobile_checkin` tinyint(1) DEFAULT NULL,
  `mobile_cancel_booking` tinyint(1) DEFAULT NULL,
  `mobile_calendar` tinyint(1) DEFAULT NULL,
  `mobile_marketing` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_members`
--

INSERT INTO `tbl_members` (`mem_id`, `mem_remember`, `mem_token`, `mem_type`, `mem_social_type`, `mem_social_id`, `mem_fname`, `mem_lname`, `mem_email`, `mem_pswd`, `mem_code`, `mem_phone`, `mem_sex`, `mem_dob`, `mem_company`, `mem_website`, `mem_about`, `mem_profile_heading`, `mem_video`, `mem_image`, `mem_cover_image`, `mem_street`, `mem_address1`, `mem_address2`, `mem_city`, `mem_state`, `mem_zip`, `mem_country_id`, `mem_ssn`, `mem_dln`, `mem_travel_radius`, `mem_sitter_reason`, `mem_monthly_income`, `mem_inspection`, `mem_contact_name`, `mem_contact_phone`, `mem_home_type`, `mem_have_yard`, `mem_non_smoke_house`, `mem_children`, `mem_not_dog`, `mem_not_cat`, `mem_one_client`, `mem_caged_pet`, `mem_allow_furniture`, `mem_allow_bed`, `mem_stay_activities`, `mem_breed_prefrences`, `mem_dog_first_aid`, `mem_oral_medication`, `mem_injected_medication`, `mem_senior_dog_care`, `mem_special_need_dog`, `mem_daily_exercise`, `mem_week_longer_stay`, `mem_host_dog_size`, `mem_host_cat`, `mem_host_puppy_under_one`, `mem_different_families_dog`, `mem_accept_dog_size`, `mem_accept_cat`, `mem_accept_puppy_under_one`, `mem_package_id`, `mem_pkg_type`, `mem_pkg_status`, `mem_pkg_expiry_date`, `mem_membership_pref`, `mem_membership_auto`, `mem_subscription_id`, `mem_ip`, `mem_note`, `mem_referral_code`, `mem_fb_link`, `mem_twitter_link`, `mem_linkedin_link`, `mem_youtube_link`, `mem_paypal`, `mem_stripe_id`, `mem_map_lat`, `mem_map_lng`, `mem_hear_about`, `mem_sitter_progress`, `mem_sitter_application`, `mem_become_owner`, `mem_phone_code`, `mem_phone_verified`, `mem_sitter_verified`, `mem_verified`, `mem_status`, `mem_bg_check`, `mem_inspected`, `mem_featured`, `mem_date`, `mem_last_login`, `email_new_message`, `email_new_booking`, `email_res_booking`, `email_accept_booking`, `email_confirm_booking`, `email_checkin`, `email_cancel_booking`, `email_calendar`, `email_marketing`, `mobile_new_message`, `mobile_new_booking`, `mobile_res_booking`, `mobile_accept_booking`, `mobile_confirm_booking`, `mobile_checkin`, `mobile_cancel_booking`, `mobile_calendar`, `mobile_marketing`) VALUES
(1, 'g5s3u3l4x3v565w4x465r453', 'hcor4q479c4q6d2onbjpam6ivddf3t2b', 'owner', 'website', NULL, 'Buyer', 'Khan', 'buyer@gmail.com', 'i5c3u3r484q4p4w4y486z453', '', '770-843-9904', NULL, NULL, '', '', NULL, NULL, NULL, '54a367d629152b720749e187b3eaa11b_1577698014_4801.jpg', '', NULL, 'Johar town gilwala phtak, New York', '', 'New York', 'NY', '10001', 231, NULL, NULL, NULL, NULL, NULL, 'yes', 'Test', '234324234', NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'monthly', 1, '2020-08-27', 0, 1, 'sub_HjPwOw7iOGW8Qk', '', NULL, 'BKMTSA', NULL, NULL, NULL, NULL, NULL, 'cus_HjPwcKEzHCuGcB', NULL, NULL, NULL, 0, 0, 1, NULL, 1, 0, 1, 1, 0, 0, 0, '2019-12-11 11:48:06', '2020-08-21 05:38:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, '293ve2ni66o3q9k9j6nc1qqnf52jum55', 'sitter', 'website', NULL, 'Jennifer', 'Kem', 'sitter@gmail.com', 'i5c3u3r484q4p4w4y486z453', '', '1324657981', NULL, '1999-04-06', NULL, '', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy', 'Testing Profile Heading', 'fa83a11a198d5a7f0bf77a1987bcd006_1582205884_8813.mp4', '298f95e1bf9136124592c8d4825a06fc_1593459712_3845.jpg', '', NULL, 'xdsfasdf', 'xdsfasdf', 'New York', 'NY', '10001', 231, '312465978', '312645978', 50, 'Build a dog-sitting business as my sole source of income', 'Up to $100 (up to 4 dog overnights at $25/night)', 'yes', 'Sarim Khan', '36251245', 'House', 'Unfenced', 1, '0-5', 1, 1, 1, 1, 1, 1, 'N/A', 'N/A', 1, 0, 1, 1, 0, 1, 1, 'small,medium,large,giant', 1, 0, 0, 'small,medium,large,giant', 1, 0, 2, 'monthly', 1, '2020-08-27', 1, 0, 'sub_HjPu5dHAzmaeXm', '', NULL, 'FE75KW', NULL, NULL, NULL, NULL, NULL, 'cus_HjPuknzB0aaXK7', '40.75095', '-73.99811', '', 11, 1, 0, NULL, 1, 1, 1, 1, 1, 1, 1, '2019-12-23 10:34:09', '2020-08-18 06:19:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, NULL, 'sitter', 'website', NULL, 'Shasha', 'Smith', 'ali@gmail.com', 'i5c3u3r484q4p4w4y486z453', 'v4b4b4r4k395q4q4i575k4i4i504a3g48473z2n52464u253', '132645', NULL, '0000-00-00', NULL, '', '<p>Section 1.10.32 of &quot;de Finibus Bonorum et Malorum&quot;, written by Cicero in 45 BC &quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot; 1914 translation by H. Rackham &quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</p>\r\n', 'Professional Pet Sitter', NULL, 'fb89705ae6d743bf1e848c206e16a1d7_1580903934_8602.jpg', '', NULL, 'Johar town gilwala phtak, New York', '', 'New York', 'NY', '10008', 231, NULL, NULL, NULL, 'Build a dog-sitting business as my sole source of income', '$425 - $825 (17-33 dog overnights at $25/night)', 'yes', 'Sarim Senior', '312546798', 'Apartment', 'No', 0, '6-12', 0, 1, 0, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'monthly', 2, '2020-04-08', 0, 1, NULL, '', NULL, 'MN5Z9K', NULL, NULL, NULL, NULL, NULL, NULL, '40.71246', '-73.00998', NULL, 11, 1, 0, NULL, 1, 1, 1, 1, 0, 0, 1, '2020-01-30 10:45:03', '2020-01-30 06:45:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, 'fsepub5k20m34jqbv3iih3jlmcm09rqb', 'sitter', 'website', NULL, 'Eleonora', 'Mont', 'jk@gmail.com', 'i5c3u3r484q4p4w4y486z453', 'w493x3q2k3a5y4f4k5v5q5o415k344k4z3r3h4y5t36433o4', '1234123465798', NULL, '0000-00-00', NULL, '', '<p>Test</p>\r\n', 'New Pet Sitter', NULL, '6855456e2fe46a9d49d3d3af4f57443d_1580904013_1683.jpg', '', NULL, 'Johar town gilwala phtak, New York', '', 'New York', 'NY', '10016', 231, NULL, NULL, NULL, 'Dog sit to earn additional income', '$125 - $400 (5-16 dog overnights at $25/night)', 'yes', 'Test', '123645978', 'House', 'Unfenced', 0, '6-12', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'monthly', 1, '2020-08-20', 1, 1, NULL, '', NULL, '2HA1PA', NULL, NULL, NULL, NULL, NULL, NULL, '40.74476', '-73.97883', NULL, 11, 1, 0, NULL, 1, 1, 1, 1, 0, 0, 1, '2020-01-30 14:52:54', '2020-01-29 22:19:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, '3b3cgma37g4rmci5nd1g4r604o3jfu4l', 'sitter', 'website', NULL, 'Test', 'Khan', 'test@gmail.com', 'i5c3u3r484q4p4w4y486z453', '', '123456798', NULL, '2000-07-03', NULL, '', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n', 'Testing nickname', NULL, NULL, '', NULL, 'johar town gilwala phtak, New York', '', 'Atlanta', 'GA', '30350', 0, '123645978', '9876543213', 20, 'Dog sit primarily for fun', '$125 - $400 (5-16 dog overnights at $25/night)', 'yes', 'Flora Khan', '321456789', 'House', 'Fenced', 1, 'No', 1, 0, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL, 0, 0, NULL, '', NULL, 'TK9LHT', NULL, NULL, NULL, NULL, NULL, NULL, '40.72748', '-73.97945', '', 11, 1, 0, NULL, 0, 1, 1, 1, 0, 0, 0, '2020-02-06 12:18:41', '2020-02-18 22:25:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, NULL, 'drcnl1chfa513dcsg8bk8qribsgdsuv6', 'sitter', 'website', NULL, 'Test', 'Khan', 'test1@gmail.com', 'i5c3u3r484q4p4w4y486z453', '', '12345678', NULL, '2001-02-19', NULL, '', 'dsafdsf', 'Test', NULL, NULL, '', NULL, 'johar town gilwala phtak, New York', '', 'New York', 'NY', '10001', 0, '235345435', '2435435435', NULL, 'Build a dog-sitting business as my sole source of income', '$125 - $400 (5-16 dog overnights at $25/night)', 'yes', 'Dfadsf', 'dsfadsf', NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, '', NULL, 'YQFJML', NULL, NULL, NULL, NULL, NULL, NULL, '40.75095', '-73.99811', 'test hear', 1, 0, 0, NULL, 0, 0, 1, 1, 0, 0, 0, '2020-02-19 12:43:26', '2020-02-21 13:29:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, NULL, 'bkcugpmuvsfhu5kgqor9ca9ql34hqfq3', 'sitter', 'website', NULL, 'Test', 'Test', 'testuser@gmail.com', 'i5c3u3r484q4p4w4y48605p385w41313', 'v4r4h3q4k3a525j4k59405t2j5z2q3p4r3b3a4x5t375i4n4p3k4j3o4f5z4a353', '201-555-2312', NULL, '1969-12-31', NULL, '', 'h', 'H', NULL, '0ff8033cf9437c213ee13937b1c4c455_1592376760_3206.jpg', '', NULL, 'h', '', 'h', 'AL', '40100', 0, 'h', 'h', 546456, 'Build a dog-sitting business as my sole source of income', '$850 - $1,500 (34-60 dog overnights at $25/night)', 'yes', 'H', 'h', 'Apartment', 'Unfenced', 1, '6-12', 0, 1, 0, 0, 1, 0, 'fasdfasdf', 'sdfsadfsdf', 1, 0, 1, 0, 1, 0, 1, 'small,medium,large,giant', 1, 0, 0, 'small,medium,large,giant', 1, 0, 2, 'monthly', 2, '2020-07-23', 0, 1, NULL, '', NULL, 'UHZI0U', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Search Engine (Google, Bing)', 11, 1, 0, NULL, 1, 0, 1, 1, 0, 0, 0, '2020-06-08 18:45:33', '2020-06-22 00:30:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, NULL, NULL, 'owner', 'website', NULL, 'Asad', 'Rehan', 'konimbdonim7@gmail.com', '85c3q3c4y3t425i4b5t405f4a5k3m3b404b3s3o5u3r4s3f434i3n3d4u446q3u4m3x4z4y4v476a4w5t483b4g4j3p4r5n49564n453', 'v4b4b4o4k39506t4j5v5q5o495m4m3m484d4i4x5i344c3i4b4y3b3i4f5l423e474x26493', '201-555-3020', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', '', '', NULL, '40100', 0, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, '', NULL, 'RPCJWP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Search Engine (Google, Bing)', 0, 0, 0, NULL, 0, 0, 0, 1, 0, 0, 0, '2020-07-05 08:21:27', '2020-07-05 08:21:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, NULL, NULL, 'owner', 'website', NULL, 'Kisha ', 'Chavis ', 'therealkyssmajor@icloud.com', 'z4r2e3o4y385a5j4k5v505g4x4j453p4n373r3e4', '', '646-371-3054', NULL, NULL, NULL, '', NULL, NULL, NULL, '892c91e0a653ba19df81a90f89d99bcd_1596259005_8928.JPG', '', NULL, '', '', '', NULL, '30519', 0, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, '', NULL, 'GVTK4R', NULL, NULL, NULL, NULL, NULL, 'cus_HkiOiURmeszSik', '34.07718', '-83.97911', 'Im The Owner ', 0, 0, 0, NULL, 1, 0, 1, 1, 0, 0, 0, '2020-08-01 05:08:51', '2020-08-01 17:08:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, NULL, NULL, 'owner', 'website', NULL, 'Matt', 'Abedin', 'matt@ttsquad.com', '45c3u3r484r4l4v4y4s5v4s2', '', '770-374-0095', NULL, NULL, '', '', NULL, NULL, NULL, NULL, '', NULL, '310 wentworth downs ct', '', 'Duluth', 'GA', '30097', 0, NULL, NULL, NULL, NULL, NULL, 'yes', 'Rachel', '6686253322', NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, '', NULL, 'W6KN4O', NULL, NULL, NULL, NULL, NULL, 'cus_Hnd8CFah9xqEMi', '34.02024', '-84.13243', 'From a friend, or colleague', 0, 0, 1, NULL, 1, 0, 1, 1, 0, 0, 0, '2020-08-08 23:55:10', '2020-08-08 11:55:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, NULL, NULL, 'sitter', 'website', NULL, 'Mehdi', 'Abed', 'info@thetechnologysquad.com', '45c3u3r484r4l4v4y4s5v4s2', '', '770-555-6622', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', '', '', NULL, '30097', 0, NULL, NULL, NULL, 'Build a dog-sitting business as my sole source of income', '$125 - $400 (5-16 dog overnights at $25/night)', 'yes', NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, '', NULL, 'KWM0QA', NULL, NULL, NULL, NULL, NULL, 'cus_HnpPzw7ViFqV2e', '34.02024', '-84.13243', 'From a friend, or colleague', 1, 0, 0, NULL, 0, 0, 1, 1, 0, 0, 0, '2020-08-09 12:35:48', '2020-08-09 12:35:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, NULL, NULL, 'sitter', 'website', NULL, 'Qwe', 'Rty', 'qwerty@gmail.com', 'h5t384d474w52503y465r4u4y4j363k3v373f3e4', 'v4p3d3q4k3a5q4y2b5a5s4s2l5y363e484r3g3t524n4z2e4b4x2p233', '201-552-3500', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', '', '', NULL, '40100', 0, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, '', NULL, 'P4J3Z3', NULL, NULL, NULL, NULL, NULL, 'cus_Hou3TcTUGWYFhU', NULL, NULL, 'Social Media', 10, 1, 0, NULL, 1, 1, 1, 1, 0, 0, 0, '2020-08-12 09:27:07', '2020-08-12 06:26:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, NULL, NULL, 'sitter', 'website', NULL, 'Cos', 'Mos', 'cosmelun@gmail.com', 'i5c3u3r484q4p4w4y486z453', 'w4r4x3q4k395y4t4k58434g4i5l3q3l4r3b3a4x5t375i4n4p3k4j3o4f5z4a353', '201-555-2103', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, '', '', '', NULL, '40100', 0, NULL, NULL, NULL, NULL, NULL, 'yes', NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, NULL, '', NULL, 'UV73W5', NULL, NULL, NULL, NULL, NULL, 'cus_Hqlpt6h5ZhyD2L', NULL, NULL, 'From a friend, or colleague', 0, 0, 0, NULL, 1, 0, 1, 1, 0, 0, 0, '2020-08-17 09:05:16', '2020-08-17 06:05:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mem_services`
--

CREATE TABLE `tbl_mem_services` (
  `mem_id` int(10) UNSIGNED DEFAULT NULL,
  `service_id` int(10) UNSIGNED DEFAULT NULL,
  `price` float DEFAULT NULL,
  `additional_services` tinyint(1) DEFAULT 0,
  `holiday_rate` float DEFAULT NULL,
  `additional_dog_rate_plus` float DEFAULT NULL,
  `extended_stay_rate` float DEFAULT NULL,
  `extended_stay_days` tinyint(4) DEFAULT NULL,
  `puppy_rate` float DEFAULT NULL,
  `bathing_rate_plus` float DEFAULT NULL,
  `bathing_is_free` tinyint(1) DEFAULT NULL,
  `pick_drop_rate_plus` float DEFAULT NULL,
  `sixty_minute_rate_plus` float DEFAULT NULL,
  `cat_care_rate` float DEFAULT NULL,
  `additional_cat_rate_plus` float DEFAULT NULL,
  `service_for` enum('dog','cat','both') DEFAULT NULL,
  `available_spaces` tinyint(4) DEFAULT NULL,
  `full_time_home` tinyint(1) DEFAULT NULL,
  `potty_break` varchar(3) DEFAULT NULL,
  `flex_availability` tinyint(1) DEFAULT NULL,
  `travel_radius` float DEFAULT NULL,
  `per_day_visits` tinyint(4) DEFAULT NULL,
  `per_day_walks` tinyint(4) DEFAULT NULL,
  `staying_at_client` tinyint(1) DEFAULT NULL,
  `dog_walk_time` varchar(40) DEFAULT NULL,
  `available_times` varchar(40) DEFAULT NULL,
  `cancellation_policy` varchar(10) DEFAULT NULL,
  `dog_size` varchar(24) DEFAULT NULL,
  `host_cat` tinyint(1) DEFAULT NULL,
  `host_puppy_under_one` tinyint(1) DEFAULT NULL,
  `neutered_dog` tinyint(1) DEFAULT NULL,
  `crate_trained` tinyint(1) DEFAULT NULL,
  `accept_cat` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_mem_services`
--

INSERT INTO `tbl_mem_services` (`mem_id`, `service_id`, `price`, `additional_services`, `holiday_rate`, `additional_dog_rate_plus`, `extended_stay_rate`, `extended_stay_days`, `puppy_rate`, `bathing_rate_plus`, `bathing_is_free`, `pick_drop_rate_plus`, `sixty_minute_rate_plus`, `cat_care_rate`, `additional_cat_rate_plus`, `service_for`, `available_spaces`, `full_time_home`, `potty_break`, `flex_availability`, `travel_radius`, `per_day_visits`, `per_day_walks`, `staying_at_client`, `dog_walk_time`, `available_times`, `cancellation_policy`, `dog_size`, `host_cat`, `host_puppy_under_one`, `neutered_dog`, `crate_trained`, `accept_cat`) VALUES
(9, 1, 30, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 2, 25, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 3, 20, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 4, 35, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 5, 20, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 1, 30, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '0-2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 5, 20, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'small', NULL, 0, NULL, NULL, 1),
(14, 1, 30, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'both', 2, 1, '2-4', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 5, 20, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medium', NULL, 1, NULL, NULL, 1),
(15, 5, 20, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'small', NULL, 1, NULL, NULL, 1),
(13, 1, 30, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'both', 0, 0, '4-8', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 3, 20, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'both', NULL, NULL, '4-8', NULL, 20, 2, 2, 1, '3pm-10pm', '3pm-10pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 1, 30, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'both', 2, 0, '8+', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'strict', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 2, 25, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'both', NULL, 0, '8+', NULL, 2, NULL, NULL, NULL, NULL, NULL, 'strict', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 3, 20, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'both', NULL, NULL, NULL, NULL, 2, 2, 2, NULL, NULL, '10pm–1am', 'strict', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 4, 35, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cat', 2, 1, '2-4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'moderate', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 5, 20, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, '11am-3pm,3pm-10pm', 'strict', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 1, 30, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2-4', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, 35, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'large', 1, 1, 1, 1, NULL),
(4, 5, 50, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medium', NULL, 1, NULL, NULL, 1),
(3, 1, 30, 1, 45, 20, 25, 10, 40, 15, 1, 10, NULL, 25, 8, 'both', 2, 1, '2-4', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'flexible', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 2, 25, 1, 0, 0, 0, 10, 0, 0, NULL, NULL, NULL, 0, 0, 'cat', NULL, 0, '2-4', NULL, 2, NULL, NULL, NULL, NULL, NULL, 'flexible', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, 20, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cat', NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, '11am-3pm', 'strict', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 4, 35, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cat', 0, 0, '2-4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'strict', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 5, 20, 1, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, '6am-11am,11am-3pm', 'moderate', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 1, 35, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, '0-2', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 5, 40, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'medium', NULL, 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_newsletter`
--

CREATE TABLE `tbl_newsletter` (
  `id` int(11) NOT NULL,
  `mem_id` int(10) UNSIGNED DEFAULT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_newsletter`
--

INSERT INTO `tbl_newsletter` (`id`, `mem_id`, `email`) VALUES
(1, 3, 'ali@gmail.com'),
(2, 3, 'sarim@gmail.com'),
(3, 3, 'sarim1@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notifications`
--

CREATE TABLE `tbl_notifications` (
  `id` int(11) NOT NULL,
  `encoded_id` varchar(255) DEFAULT NULL,
  `mem_id` int(11) NOT NULL,
  `from_id` int(11) NOT NULL DEFAULT 0,
  `txt` text NOT NULL,
  `cat` enum('comments','subscribed','notes','other') NOT NULL,
  `note_id` int(11) NOT NULL DEFAULT 0,
  `status` enum('new','seen') NOT NULL,
  `date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_notifications`
--

INSERT INTO `tbl_notifications` (`id`, `encoded_id`, `mem_id`, `from_id`, `txt`, `cat`, `note_id`, `status`, `date`) VALUES
(1, 'g5f4q3h4k365p483', 3, 1, 'You have a new PFSC Vacations booking request from Buyer Khan. <a href=\"http://localhost/clients/pfsc/booking-request/75e4o4f4k365p483\">click here</a> to view detail.', 'other', 0, 'seen', '2020-06-20 19:01:10'),
(2, 'g5f4q3h4k365t483', 1, 3, 'Jennifer Kem. has accepted your  booking request. <a href=\"http://localhost/clients/pfsc/request-detail/75e4o4f4k365p483\">click here</a> to book.', 'other', 0, 'seen', '2020-06-20 19:55:29'),
(3, 'g5f4q3h4k365x483', 3, 1, 'Your  with Buyer Khan. has been confirmed! You can view your upcoming job in <a href=\"http://localhost/clients/pfsc/jobs\">My Jobs</a>.', 'other', 0, 'seen', '2020-06-20 20:16:51'),
(4, 'g5f4q3h4k3651583', 1, 3, 'Pet has been booked!', 'other', 0, 'seen', '2020-06-20 20:16:51'),
(5, 'g5f4q3h4k3655583', 1, 3, 'Pet sitter Jennifer Kem. reached at location for  <a href=\"http://localhost/clients/pfsc/booking-detail/75e4o4f4k365p483\">View Booking</a>', 'other', 0, 'seen', '2020-06-20 20:19:51'),
(6, 'g5f4q3h4k3659583', 1, 3, 'Jennifer Kem. marked as done for \'s job. <a href=\"http://localhost/clients/pfsc/booking-detail/75e4o4f4k365p483\">click here</a> to view booking', 'other', 0, 'seen', '2020-06-26 03:52:35'),
(7, 'g5f4q3h4k365j583', 1, 3, 'Leave a review for your experience with Jennifer Kem <a href=\"http://localhost/clients/pfsc/booking-detail/75e4o4f4k365p483\">click here</a>', 'other', 0, 'seen', '2020-06-26 03:52:35'),
(8, 'g5f4q3h4k365n583', 3, 1, 'Buyer Khan. reviewed you 5 stars. <a href=\"http://localhost/clients/pfsc/job-detail/75e4o4f4k365p483\">click here</a> to respond to review of client.', 'other', 0, 'seen', '2020-06-26 04:33:36'),
(9, 'g5f4q3h4k365r583', 1, 3, 'You reviewed Jennifer Kem. 5 stars. <a href=\"http://localhost/clients/pfsc/booking-detail/75e4o4f4k365p483\" >click here</a> to view booking.', 'other', 0, 'seen', '2020-06-26 04:33:36'),
(10, 'g5f4q3h4k365p4u4', 1, 3, 'Jennifer Kem respond to your reviewed <a href=\"http://localhost/clients/pfsc/booking-detail/75e4o4f4k365p483\">click here</a> to view.', 'other', 0, 'seen', '2020-06-26 04:34:16'),
(11, 'g5f4q3h4k365p4v4', 3, 1, 'Buyer Khan. reviewed you 5 stars. <a href=\"http://localhost/clients/pfsc/job-detail/75e4o4f4k365p483\">click here</a> to respond to review of client.', 'other', 0, 'seen', '2020-06-26 04:45:13'),
(12, 'g5f4q3h4k365p4w4', 1, 3, 'You reviewed Jennifer Kem. 5 stars. <a href=\"http://localhost/clients/pfsc/booking-detail/75e4o4f4k365p483\" >click here</a> to view booking.', 'other', 0, 'seen', '2020-06-26 04:45:13'),
(13, 'g5f4q3h4k365p4x4', 1, 3, 'Jennifer Kem respond to your reviewed <a href=\"http://localhost/clients/pfsc/booking-detail/75e4o4f4k365p483\">click here</a> to view.', 'other', 0, 'seen', '2020-06-26 04:45:28'),
(14, 'g5f4q3h4k365p4v2', 3, 1, 'You have a new Drop-in Visits / Dog Walking booking request from Buyer Khan. <a href=\"http://localhost/clients/pfsc/booking-request/75e4o4f4k365t483\">click here</a> to view detail.', 'other', 0, 'seen', '2020-06-26 04:54:53'),
(15, 'g5f4q3h4k365p4w2', 1, 3, 'Jennifer Kem. has accepted your  booking request. <a href=\"http://localhost/clients/pfsc/request-detail/75e4o4f4k365t483\">click here</a> to book.', 'other', 0, 'seen', '2020-06-26 04:55:16'),
(16, 'g5f4q3h4k365p4x2', 3, 1, 'Your  with Buyer Khan. has been confirmed! You can view your upcoming job in <a href=\"http://localhost/clients/pfsc/jobs\">My Jobs</a>.', 'other', 0, 'seen', '2020-06-26 04:55:53'),
(17, 'g5f4q3h4k365p4y2', 1, 3, 'Pet has been booked!', 'other', 0, 'seen', '2020-06-26 04:55:53'),
(18, 'g5f4q3h4k365p4z2', 1, 3, 'Pet sitter Jennifer Kem. reached at location for  <a href=\"http://localhost/clients/pfsc/booking-detail/75e4o4f4k365t483\">View Booking</a>', 'other', 0, 'seen', '2020-06-26 04:56:20'),
(19, 'g5f4q3h4k365p403', 1, 3, 'Jennifer Kem. marked as done for \'s job. <a href=\"http://localhost/clients/pfsc/booking-detail/75e4o4f4k365t483\">click here</a> to view booking', 'other', 0, 'seen', '2020-06-26 04:56:58'),
(20, 'g5f4q3h4k365t4u4', 1, 3, 'Leave a review for your experience with Jennifer Kem <a href=\"http://localhost/clients/pfsc/booking-detail/75e4o4f4k365t483\">click here</a>', 'other', 0, 'seen', '2020-06-26 04:56:58'),
(21, 'g5f4q3h4k365t4v4', 3, 1, 'Buyer Khan. reviewed you 5 stars. <a href=\"http://localhost/clients/pfsc/job-detail/75e4o4f4k365t483\">click here</a> to respond to review of client.', 'other', 0, 'seen', '2020-06-26 04:57:15'),
(22, 'g5f4q3h4k365t4w4', 1, 3, 'You reviewed Jennifer Kem. 5 stars. <a href=\"http://localhost/clients/pfsc/booking-detail/75e4o4f4k365t483\" >click here</a> to view booking.', 'other', 0, 'seen', '2020-06-26 04:57:16'),
(23, 'g5f4q3h4k365t4x4', 1, 3, 'Jennifer Kem respond to your reviewed <a href=\"http://localhost/clients/pfsc/booking-detail/75e4o4f4k365t483\">click here</a> to view.', 'other', 0, 'seen', '2020-06-26 04:57:29'),
(24, 'g5f4q3h4k365t4v2', 3, 1, 'You have a new Drop-in Visits / Dog Walking booking request from Buyer Khan. <a href=\"http://localhost/clients/pfsc/booking-request/75e4o4f4k365x483\">click here</a> to view detail.', 'other', 0, 'seen', '2020-06-26 06:47:46'),
(25, 'g5f4q3h4k365t4w2', 1, 3, 'Jennifer Kem. has accepted your  booking request. <a href=\"http://localhost/clients/pfsc/request-detail/75e4o4f4k365x483\">click here</a> to book.', 'other', 0, 'seen', '2020-06-26 06:48:13'),
(26, 'g5f4q3h4k365t4x2', 3, 1, 'Your  with Buyer Khan. has been confirmed! You can view your upcoming job in <a href=\"http://localhost/clients/pfsc/jobs\">My Jobs</a>.', 'other', 0, 'seen', '2020-06-26 06:48:37'),
(27, 'g5f4q3h4k365t4y2', 1, 3, 'Pet has been booked!', 'other', 0, 'seen', '2020-06-26 06:48:37'),
(28, 'g5f4q3h4k365t4z2', 1, 3, 'Pet sitter Jennifer Kem. reached at location for  <a href=\"http://localhost/clients/pfsc/booking-detail/75e4o4f4k365x483\">View Booking</a>', 'other', 0, 'seen', '2020-06-26 06:49:05'),
(29, 'g5f4q3h4k365t403', 1, 3, 'Jennifer Kem. marked as done for \'s job. <a href=\"http://localhost/clients/pfsc/booking-detail/75e4o4f4k365x483\">click here</a> to view booking', 'other', 0, 'seen', '2020-06-26 06:49:29'),
(30, 'g5f4q3h4k365x4u4', 1, 3, 'Leave a review for your experience with Jennifer Kem <a href=\"http://localhost/clients/pfsc/booking-detail/75e4o4f4k365x483\">click here</a>', 'other', 0, 'seen', '2020-06-26 06:49:29'),
(31, 'g5f4q3h4k365x4v4', 3, 1, 'Buyer Khan. reviewed you 4 stars. <a href=\"http://localhost/clients/pfsc/job-detail/75e4o4f4k365x483\">click here</a> to respond to review of client.', 'other', 0, 'seen', '2020-06-26 06:51:41'),
(32, 'g5f4q3h4k365x4w4', 1, 3, 'You reviewed Jennifer Kem. 4 stars. <a href=\"http://localhost/clients/pfsc/booking-detail/75e4o4f4k365x483\" >click here</a> to view booking.', 'other', 0, 'seen', '2020-06-26 06:51:41'),
(33, 'g5f4q3h4k365x4x4', 1, 3, 'Jennifer Kem respond to your reviewed <a href=\"http://localhost/clients/pfsc/booking-detail/75e4o4f4k365x483\">click here</a> to view.', 'other', 0, 'seen', '2020-06-26 06:51:55'),
(34, 'g5f4q3h4k365x4v2', 3, 1, 'You have a new PFSC Vacations booking request from Buyer Khan. <a href=\"https://herosolutions.com.pk/sarim/pfsc/booking-request/75e4o4f4k3651583\">click here</a> to view detail.', 'other', 0, 'seen', '2020-07-03 17:40:29'),
(35, 'g5f4q3h4k365x4w2', 1, 3, 'Jennifer Kem. has accepted your  booking request. <a href=\"https://herosolutions.com.pk/sarim/pfsc/request-detail/75e4o4f4k3651583\">click here</a> to book.', 'other', 0, 'seen', '2020-07-03 17:41:33'),
(36, 'g5f4q3h4k365x4x2', 3, 1, 'Your  with Buyer Khan. has been confirmed! You can view your upcoming job in <a href=\"https://herosolutions.com.pk/sarim/pfsc/jobs\">My Jobs</a>.', 'other', 0, 'seen', '2020-07-03 17:43:36'),
(37, 'g5f4q3h4k365x4y2', 1, 3, 'Pet has been booked!', 'other', 0, 'seen', '2020-07-03 17:43:36'),
(38, 'g5f4q3h4k365x4z2', 1, 3, 'Pet sitter Jennifer Kem. reached at location for  <a href=\"https://herosolutions.com.pk/sarim/pfsc/booking-detail/75e4o4f4k3651583\">View Booking</a>', 'other', 0, 'seen', '2020-07-03 17:44:37'),
(39, 'g5f4q3h4k365x403', 1, 3, 'Jennifer Kem. marked as done for \'s job. <a href=\"https://herosolutions.com.pk/sarim/pfsc/booking-detail/75e4o4f4k3651583\">click here</a> to view booking', 'other', 0, 'seen', '2020-07-03 17:45:39'),
(40, 'g5f4q3h4k36515u4', 1, 3, 'Leave a review for your experience with Jennifer Kem <a href=\"https://herosolutions.com.pk/sarim/pfsc/booking-detail/75e4o4f4k3651583\">click here</a>', 'other', 0, 'seen', '2020-07-03 17:45:39'),
(41, 'g5f4q3h4k36515v4', 3, 1, 'Buyer Khan. reviewed you 5 stars. <a href=\"https://herosolutions.com.pk/sarim/pfsc/job-detail/75e4o4f4k3651583\">click here</a> to respond to review of client.', 'other', 0, 'seen', '2020-07-03 17:50:52'),
(42, 'g5f4q3h4k36515w4', 1, 3, 'You reviewed Jennifer Kem. 5 stars. <a href=\"https://herosolutions.com.pk/sarim/pfsc/booking-detail/75e4o4f4k3651583\" >click here</a> to view booking.', 'other', 0, 'seen', '2020-07-03 17:50:52'),
(43, 'g5f4q3h4k36515x4', 1, 3, 'Jennifer Kem respond to your reviewed <a href=\"https://herosolutions.com.pk/sarim/pfsc/booking-detail/75e4o4f4k3651583\">click here</a> to view.', 'other', 0, 'seen', '2020-07-03 17:51:30'),
(44, 'g5f4q3h4k36515v2', 3, 1, 'You have a new Drop-in Visits / Dog Walking booking request from Buyer Khan. <a href=\"https://herosolutions.com.pk/sarim/pfsc/booking-request/75e4o4f4k3655583\">click here</a> to view detail.', 'other', 0, 'seen', '2020-07-03 18:19:54'),
(45, 'g5f4q3h4k36515w2', 1, 3, 'Your  booking request with Jennifer Kem. has been declined.', 'other', 0, 'seen', '2020-07-03 18:23:37'),
(46, 'g5f4q3h4k36515x2', 3, 1, 'You have a new House Sitting booking request from Buyer Khan. <a href=\"https://herosolutions.com.pk/sarim/pfsc/request-detail//75e4o4f4k3659583\">click here</a> to view detail.', 'other', 0, 'seen', '2020-08-08 23:45:52'),
(47, 'g5f4q3h4k36515y2', 1, 3, 'Jennifer Kem. has accepted your  booking request. <a href=\"https://herosolutions.com.pk/sarim/pfsc/request-detail/75e4o4f4k3659583\">click here</a> to book.', 'other', 0, 'seen', '2020-08-08 23:49:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_packages`
--

CREATE TABLE `tbl_packages` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` enum('sitter','owner') DEFAULT NULL,
  `one_time` tinyint(1) DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `overview` varchar(500) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `price` float DEFAULT 0,
  `monthly_price` float DEFAULT 0,
  `yearly_price` float DEFAULT 0,
  `device_price` float DEFAULT 0,
  `membership` tinyint(1) DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `monthly_subscription_id` varchar(255) DEFAULT NULL,
  `yearly_subscription_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_packages`
--

INSERT INTO `tbl_packages` (`id`, `type`, `one_time`, `title`, `overview`, `detail`, `price`, `monthly_price`, `yearly_price`, `device_price`, `membership`, `image`, `monthly_subscription_id`, `yearly_subscription_id`) VALUES
(1, 'sitter', 1, 'BASIC', 'One time sign up', 'a:3:{i:1;O:8:\"stdClass\":2:{s:9:\"list_item\";s:104:\"One Time Signup Fee of $75 Covers the Cost Of Background Check(Background check fees are non-refundable)\";s:13:\"list_item_tip\";s:0:\"\";}i:2;O:8:\"stdClass\":2:{s:9:\"list_item\";s:142:\"All Providers upon Background Check Approval will be home inspected and a professional photo shoot to attract more attention to your profile. \";s:13:\"list_item_tip\";s:0:\"\";}i:3;O:8:\"stdClass\":2:{s:9:\"list_item\";s:106:\"Basic care providers pets are covered under the PFS Insurance Plan however responsible to meet deductible.\";s:13:\"list_item_tip\";s:0:\"\";}}', 75, 0, 0, 0, 0, NULL, NULL, NULL),
(2, 'sitter', 0, 'PFSC MEMBER', 'Discounted sign up', 'a:4:{i:1;O:8:\"stdClass\":2:{s:9:\"list_item\";s:134:\"One Time Discounted Sign Up Fee of $50 plus monthly membership fee of $10 or $100 annually. (Background check fees are non-refundable)\";s:13:\"list_item_tip\";s:0:\"\";}i:2;O:8:\"stdClass\":2:{s:9:\"list_item\";s:142:\"All Providers upon Background Check Approval will be home inspected and a professional photo shoot to attract more attention to your profile. \";s:13:\"list_item_tip\";s:0:\"\";}i:3;O:8:\"stdClass\":2:{s:9:\"list_item\";s:105:\"Paid Members Have a Verified symbol and are seen first when Pet Parents are searching for a PFSC Sitter. \";s:13:\"list_item_tip\";s:0:\"\";}i:4;O:8:\"stdClass\":2:{s:9:\"list_item\";s:144:\"PFSC Member sitters are covered under the PFSC Insurance Plan with Zero deductible should your resident fur kid be injured by a vacationing Pup.\";s:13:\"list_item_tip\";s:0:\"\";}}', 50, 10, 100, 0, 1, NULL, 'price_1H9oe1JXIsF9AzPJ152e8wJ8', 'price_1H9oe1JXIsF9AzPJJ4LTu44W'),
(3, 'owner', 0, 'BASIC', '', 'a:5:{i:1;O:8:\"stdClass\":2:{s:9:\"list_item\";s:14:\"Network Access\";s:13:\"list_item_tip\";s:67:\"Access to our network of home inspected and insured care providers.\";}i:2;O:8:\"stdClass\":2:{s:9:\"list_item\";s:18:\"Fur Kid is covered\";s:13:\"list_item_tip\";s:78:\"Membership means your Fur Kid is covered with 0 deductible while in PFSC care.\";}i:3;O:8:\"stdClass\":2:{s:9:\"list_item\";s:8:\"PFSC Hat\";s:13:\"list_item_tip\";s:0:\"\";}i:4;O:8:\"stdClass\":2:{s:9:\"list_item\";s:32:\"10% discount on PFSC Merchandise\";s:13:\"list_item_tip\";s:0:\"\";}i:5;O:8:\"stdClass\":2:{s:9:\"list_item\";s:24:\"Discounts on PFSC events\";s:13:\"list_item_tip\";s:0:\"\";}}', 0, 12, 130, 0, 0, NULL, 'price_1H9pGTJXIsF9AzPJUbzVL8rP', 'price_1H9pGTJXIsF9AzPJjn5RVXa2'),
(4, 'owner', 0, 'PREMIUM', '', 'a:6:{i:1;O:8:\"stdClass\":2:{s:9:\"list_item\";s:17:\"Health Monitoring\";s:13:\"list_item_tip\";s:29:\"MONITOR ACTIVITY & SLEEP 24/7\";}i:2;O:8:\"stdClass\":2:{s:9:\"list_item\";s:14:\"Network Access\";s:13:\"list_item_tip\";s:67:\"Access to our network of home inspected and insured care providers.\";}i:3;O:8:\"stdClass\":2:{s:9:\"list_item\";s:18:\"Fur Kid is covered\";s:13:\"list_item_tip\";s:78:\"Membership means your Fur Kid is covered with 0 deductible while in PFSC care.\";}i:4;O:8:\"stdClass\":2:{s:9:\"list_item\";s:14:\"PFSC Tee Shirt\";s:13:\"list_item_tip\";s:0:\"\";}i:5;O:8:\"stdClass\":2:{s:9:\"list_item\";s:33:\"15 % discount on PFSC Merchandise\";s:13:\"list_item_tip\";s:0:\"\";}i:6;O:8:\"stdClass\":2:{s:9:\"list_item\";s:24:\"Discounts on PFSC events\";s:13:\"list_item_tip\";s:0:\"\";}}', 0, 24, 260, 19, 0, NULL, 'price_1H9pI9JXIsF9AzPJ3OpFx4dG', 'price_1H9pI9JXIsF9AzPJhuw1olhV'),
(5, 'owner', 0, 'VIP', '', 'a:6:{i:1;O:8:\"stdClass\":2:{s:9:\"list_item\";s:29:\"PET LOCATION & HEALTH TRACKER\";s:13:\"list_item_tip\";s:144:\"Every day, get alerted when your pup leaves a safe place. In case of emergency, track your dog nationwide. With 24/7 activity & sleep monitoring\";}i:2;O:8:\"stdClass\":2:{s:9:\"list_item\";s:14:\"Network Access\";s:13:\"list_item_tip\";s:67:\"Access to our network of home inspected and insured care providers.\";}i:3;O:8:\"stdClass\":2:{s:9:\"list_item\";s:18:\"Fur Kid is covered\";s:13:\"list_item_tip\";s:78:\"Membership means your Fur Kid is covered with 0 deductible while in PFSC care.\";}i:4;O:8:\"stdClass\":2:{s:9:\"list_item\";s:11:\"PFSC Hoodie\";s:13:\"list_item_tip\";s:0:\"\";}i:5;O:8:\"stdClass\":2:{s:9:\"list_item\";s:32:\"20% discount on PFSC Merchandise\";s:13:\"list_item_tip\";s:0:\"\";}i:6;O:8:\"stdClass\":2:{s:9:\"list_item\";s:24:\"Discounts on PFSC events\";s:13:\"list_item_tip\";s:0:\"\";}}', 0, 36, 389, 0, 0, NULL, 'price_1H9pJhJXIsF9AzPJfd0Rp9Me', 'price_1H9pJhJXIsF9AzPJMXUSi2vM');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_partners`
--

CREATE TABLE `tbl_partners` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_partners`
--

INSERT INTO `tbl_partners` (`id`, `title`, `link`, `image`) VALUES
(1, 'altima', 'altima.com', 'image_1549277171_1300.svg'),
(2, 'Seven News', 'seven-news.com', 'image_1549279810_1415.svg'),
(3, 'Aljazeera TV', 'aljazeera TV', 'image_1549279853_5025.svg'),
(4, 'AMT Debit', 'amt-debit.com', 'image_1549279879_8965.svg'),
(5, 'Discovery channel', 'discovery-channel.com', 'image_1549279904_9296.svg'),
(6, 'FDS', 'fds.com', 'image_1549279923_1371.svg'),
(7, 'International Cricket Council', 'international-cricket-council.com', 'image_1549279953_6933.svg'),
(8, 'Orbis', 'orbis.com', 'image_1549279979_9621.svg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment_methods`
--

CREATE TABLE `tbl_payment_methods` (
  `id` int(11) NOT NULL,
  `encoded_id` varchar(255) NOT NULL,
  `mem_id` int(11) NOT NULL,
  `last_digits` varchar(4) DEFAULT NULL,
  `expiry` varchar(100) DEFAULT NULL,
  `method_token` varchar(500) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `paypal` varchar(255) DEFAULT NULL,
  `stripe_customer_id` varchar(199) NOT NULL,
  `stripe_bank_id` varchar(255) NOT NULL,
  `acc_swift_code` varchar(255) NOT NULL,
  `acc_type` enum('Checking','Saving') DEFAULT NULL,
  `acc_routing_number` varchar(255) NOT NULL,
  `acc_bank_name` varchar(255) NOT NULL,
  `acc_title` varchar(255) NOT NULL,
  `acc_number` varchar(100) NOT NULL,
  `acc_city` varchar(255) NOT NULL,
  `acc_state` varchar(255) NOT NULL,
  `acc_country` varchar(255) NOT NULL,
  `default_method` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_payment_methods`
--

INSERT INTO `tbl_payment_methods` (`id`, `encoded_id`, `mem_id`, `last_digits`, `expiry`, `method_token`, `image`, `paypal`, `stripe_customer_id`, `stripe_bank_id`, `acc_swift_code`, `acc_type`, `acc_routing_number`, `acc_bank_name`, `acc_title`, `acc_number`, `acc_city`, `acc_state`, `acc_country`, `default_method`) VALUES
(1, 'h5c3s2l4l335h483', 3, NULL, NULL, NULL, NULL, NULL, '', '', '132', 'Checking', '1111112334', 'ubl', 'Sitter Khan', '312645978', 'New York', 'New York', 'United States', 0),
(23, 'h5c3s2l4l3s5x483', 3, '4242', 'February, 2021', 'card_1H9x4kJXIsF9AzPJrTcIPUP1', 'visa.png', NULL, '', '', '', NULL, '', '', '', '', '', '', '', 1),
(24, 'h5c3s2l4l3s51583', 1, '4242', 'February, 2022', 'card_1H9x6EJXIsF9AzPJCHFNm184', 'visa.png', NULL, '', '', '', NULL, '', '', '', '', '', '', '', 1),
(25, 'h5c3s2l4l3s55583', 21, '4242', 'February, 2022', 'card_1HE1vKLdWQsiF0ALm34nJmnh', 'visa.png', NULL, '', '', '', NULL, '', '', '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permissions`
--

CREATE TABLE `tbl_permissions` (
  `id` int(11) NOT NULL,
  `permission` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_permissions`
--

INSERT INTO `tbl_permissions` (`id`, `permission`) VALUES
(1, 'Students'),
(2, 'Tutors'),
(3, 'Tutor Applications'),
(4, 'Subjects'),
(5, 'Chat Management'),
(6, 'Founders'),
(7, 'FAQ\'s'),
(8, 'Manage Pages'),
(9, 'Change Password'),
(10, 'Delete');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permissions_admin`
--

CREATE TABLE `tbl_permissions_admin` (
  `admin_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_permissions_admin`
--

INSERT INTO `tbl_permissions_admin` (`admin_id`, `permission_id`) VALUES
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pets`
--

CREATE TABLE `tbl_pets` (
  `id` int(10) UNSIGNED NOT NULL,
  `encoded_id` varchar(255) DEFAULT NULL,
  `mem_id` int(10) UNSIGNED DEFAULT NULL,
  `pet_type` enum('dog','cat') DEFAULT NULL,
  `breed_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `age_year` tinyint(4) DEFAULT NULL,
  `age_month` tinyint(2) DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `neutered` tinyint(1) DEFAULT 0,
  `micro_chipped` tinyint(1) DEFAULT 0,
  `well_dogs` tinyint(1) DEFAULT 0,
  `well_cats` tinyint(1) DEFAULT 0,
  `well_children` tinyint(1) DEFAULT 0,
  `house_trained` tinyint(1) DEFAULT 0,
  `special_requirements` text DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pets`
--

INSERT INTO `tbl_pets` (`id`, `encoded_id`, `mem_id`, `pet_type`, `breed_id`, `name`, `weight`, `age_year`, `age_month`, `gender`, `neutered`, `micro_chipped`, `well_dogs`, `well_cats`, `well_children`, `house_trained`, `special_requirements`, `status`, `date`) VALUES
(1, 'h5d3p3l4l335h483', 1, 'dog', 2, 'Pehla Kuta', 45, 3, 3, 'male', 1, 1, 1, 1, 1, 1, 'test', 1, '2020-01-15 11:35:17'),
(2, 'h5d3p3l4l3p5h483', 1, 'dog', 1, 'Dusra kuta', 24, 1, 4, 'female', 1, 1, 1, 1, 1, 1, 'dsfdsafdsfdsf', 1, '2020-01-15 11:43:50'),
(3, 'h5d3p3l4l356h483', 1, 'dog', 2, 'tet', 3, 3, 1, 'male', 1, 0, 1, 1, 1, 1, 'this is testing pet', 1, '2020-04-02 15:52:13'),
(4, 'h5d3p3l4m3n4h483', 1, 'cat', 10, 'Pehli Bili', 2, 2, 1, 'female', 1, 0, 1, 1, 1, 1, 'test detail', 1, '2020-04-02 16:05:08'),
(5, 'h5d3p3l4m335h483', 1, 'dog', 1, 'Teesra Kutta', 10, 2, 2, 'male', 1, 1, 1, 1, 1, 1, 'test detail', 1, '2020-04-06 12:12:27'),
(6, 'h5d3p3l4m3p5h483', 1, 'dog', 5, 'Chotha Kuta', 12, 3, 4, 'male', 1, 1, 1, 1, 1, 1, 'Test Description ', 1, '2020-04-06 12:15:51'),
(7, 'h5d3p3l4m356h483', 1, 'dog', 3, 'Panchwan Kuta', 10, 2, 1, 'male', 1, 1, 1, 1, 1, 1, 'Test 123', 1, '2020-04-06 12:18:06'),
(8, 'h5d3p3l4n3n4h483', 1, 'cat', 10, 'Pehli Bili', 3, 1, 2, 'female', 1, 0, 1, 1, 1, 1, 'tesfgavas ', 1, '2020-04-06 12:20:46'),
(9, 'h5d3p3l4n335h483', 1, 'dog', 5, 'Chata kuta', 12, 0, 8, 'male', 1, 0, 1, 1, 1, 1, 'Description', 1, '2020-04-06 12:22:43'),
(10, 'h5d3p3l4l365l483', 1, 'cat', 2, 'New Bili', 2, 1, 1, 'male', 1, 0, 1, 1, 1, 1, 'fdsadf', 1, '2020-04-06 13:26:23'),
(11, 'h5d3p3l4l365p483', 1, 'dog', 1, 'Special Kutta', 8, 2, 1, 'male', 1, 1, 1, 1, 1, 1, 'test', 1, '2020-04-06 13:28:22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pet_breeds`
--

CREATE TABLE `tbl_pet_breeds` (
  `id` int(10) UNSIGNED NOT NULL,
  `breed` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pet_breeds`
--

INSERT INTO `tbl_pet_breeds` (`id`, `breed`) VALUES
(1, 'Afghan Hound'),
(2, 'Akbash Dog'),
(3, 'Alaskan Husky'),
(4, 'American Bulldog'),
(5, 'American Bully'),
(6, 'Argentine Dogo'),
(7, 'Australian Bulldog'),
(8, 'Billy'),
(9, 'Black Russian Terrier'),
(10, 'Cat'),
(11, 'Boston Terrier ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_policies`
--

CREATE TABLE `tbl_policies` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `detail` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_policies`
--

INSERT INTO `tbl_policies` (`id`, `title`, `detail`) VALUES
(1, 'Flexible', 'A full refund is available if cancelled before the beginning of the service. <br>If cancelled after the service begins, a 50% refund is available for the first 7 cancelled calendar days from the cancellation request date. A 100% refund is available for any additional days.'),
(2, 'Moderate', 'A full refund is available if cancelled by 12:00pm the day before the service begins. 12:00pm is determined by the sitter\'s time zone. <br>If cancelled later than 12:00pm the day before the service begins, a 50% refund is available for the first 7 cancelled calendar days from the cancellation request date. A 100% refund is available for any additional days.'),
(3, 'Strict', 'A full refund is available if cancelled by 12:00pm one week before the service begins. 12:00pm is determined by the sitter\'s time zone. <br>If cancelled later than 12:00pm one week before the stay begins, a 50% refund is available for the first 7 cancelled calendar days from the cancellation request date. A 100% refund is available for any additional days.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_preferences`
--

CREATE TABLE `tbl_preferences` (
  `pref_id` int(11) NOT NULL,
  `pref_key` varchar(50) NOT NULL,
  `pref_title` varchar(500) NOT NULL,
  `pref_short_desc` varchar(1000) NOT NULL,
  `pref_detail` text NOT NULL,
  `pref_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_preferences`
--

INSERT INTO `tbl_preferences` (`pref_id`, `pref_key`, `pref_title`, `pref_short_desc`, `pref_detail`, `pref_image`) VALUES
(1, 'privacypolicy', 'Privacy Policy', '', '<p>We take our ethical responsibilities, the security of your personal information, and your privacy seriously. We have a strong commitment to providing excellent service to all our customers and visitors of this web site, including respecting your concerns about privacy. This Privacy Policy discloses how we collect, protect, use, And share information gathered about you on our website. If you use this site you explicitly agree to this Privacy Policy and the Terms Of Use in effect at the time of your accessing this website as set forth here. We hope that this disclosure will help increase your confidence in our web site. Therefore, in conformity with our goal of exceeding industry standards and the regulations enacted by federal and state authoritative bodies, we abide the following privacy policy.</p>\r\n\r\n<h3>Browsing</h3>\r\n\r\n<p>This website does collect personally identifiable information from your computer when you browse this website and request pages from our servers. This means that, unless you voluntarily and knowingly provide us with personally identifiable information, we will not know your name, your email address, or any other personally identifiable information. We may use IP addresses, browser types and access times to analyze trends, administer the site, improve site performance and gather broad demographic information for aggregate use. When you request a page from our website, our servers log the information provided in the HTTP request header including the IP number, the time of the request, the URL of your request, and other information that is provided in the HTTP header. We collect the HTTP request header information in order to make our website function correctly and provide you the functionality that you see on this website. We also use this information to better understand how visitors use our website and how we can better tune it, its contents and functionality to meet your needs.</p>\r\n\r\n<h3>Information collected and its uses</h3>\r\n\r\n<p>We collect your personal information if you decide to retain our services, participate in our affiliate marketing program, complete an application form, or transact other business with us. We need to collect personally identifiable information from you to execute the requested transaction, provide you with a particular service, and/or to further enhance and protect your account. At any time, we may ask you to voluntarily supply us with additional information needed. We will ask you for information such as, but not limited to: name, current and/or billing address, your e-mail address, telephone number and, other personal information, such as your date of birth, address, and loan account information. We may ask for your email address to send confirmations and, if necessary, we might use the other information to contact you for help in processing your requests.</p>\r\n\r\n<p>All information provided gives Crainly or an affiliate to contact you directly or indirectly. You give full permission to contact you through any and all devices and methods available to us whether it be manual or automated..</p>\r\n\r\n<p>We may also use the information we collect about you In order To, but Not limited To:</p>\r\n\r\n<ul>\r\n	<li>learn more about your interest In the products or services we offer and provide you with information;</li>\r\n	<li>enroll merchants who desire our services</li>\r\n	<li>open merchant files and establish their accounts</li>\r\n	<li>provide customer service</li>\r\n	<li>negotiate settlement of our merchants&rsquo; debts (according to the terms and conditions of their written agreements)</li>\r\n	<li>learn how to improve our products or services</li>\r\n	<li>evaluate your suitability for and provide opportunities for our affiliates and other companies to inform you about the products or services they offer that may interest you</li>\r\n</ul>\r\n\r\n<p>Aside from the ways mentioned above, we may use your personally identifiable information In many other ways, including sending you promotional materials, and sharing your information with third parties and Crainly affiliate so that these third parties and affiliate can send you promotional materials. (By &quot;promotional materials,&quot; we mean communications that directly promote the use Of web sites, or the purchase of products or services.). However, you may &quot;opt-out&quot; of certain uses of your personal information.</p>\r\n\r\n<h3>Disclosure of Information to third parties</h3>\r\n\r\n<p>We may disclose your personally identifiable information In order to effect or carry out any transaction that you have requested of us or As necessary to complete our contractual obligations with you. WE RESERVE THE RIGHT TO SELL, RENT OR TRANSFER YOUR PERSONAL INFORMATION TO THIRD PARTIES OR Crainly AFFILIATES FOR ANY PURPOSE IN OUR SOLE DISCRETION. Crainly may share your personally identifiable information with affiliated companies that are directly or indirectly controlled by, or under common control of Crainly. We may send personally identifiable information about you to non-affiliated companies that are not directly or indirectly controlled by, or under common control of Crainly. The personal information collected on this site and by third parties will be used to operate the site and to provide the services or products or carry out the transactions you have requested or authorized. We may change or broaden the use of your personal information at any time. We may use your personal information to provide promotional offers by means of email advertising, telephone marketing, direct mail marketing, banner advertising, and other possible uses.</p>\r\n\r\n<h3>Choice/opt-out</h3>\r\n\r\n<p>As indicated above, we provide you the opportunity to &#39;opt-out&rsquo; of having your personally identifiable information used for certain purposes, when we ask for or when you provide this information. For example, if you purchase a product/service but do not wish to receive any additional marketing material from us, you can indicate your preference on our order form. You may not, however, opt-out of any service that we deem to be required for us, our affiliates, transferees, or assignees to effectively and efficiently implement our services.</p>\r\n\r\n<p>If you no longer wish to receive promotional communications, you may opt-out of receiving them by following the instructions included in each newsletter or communication or by emailing or calling us per the information contained on our contact page.</p>\r\n\r\n<p>If you do not wish to have your applicable personal information collected, shared, or used by any third party that is not our affiliate/agent/service provider, please contact our customer service department to actively opt-out of having your personal information shared. Customer Service Contact Information:</p>\r\n\r\n<h3>Crainly</h3>\r\n\r\n<ul>\r\n	<li>Email: <a href=\"mailto:help@crainly.com\">help@crainly.com</a></li>\r\n	<li>Phone: <a href=\"tel:1-888-349-6226\">1-888-349-6226</a></li>\r\n</ul>\r\n', ''),
(2, 'termsservices', 'Terms of Service', '', '<p>We take our ethical responsibilities, the security of your personal information, and your privacy seriously. We have a strong commitment to providing excellent service to all our customers and visitors of this web site, including respecting your concerns about privacy. This term&#39;s of services discloses how we collect, protect, use, And share information gathered about you on our website. If you use this site you explicitly agree to this term&#39;s of services and the Terms Of Use in effect at the time of your accessing this website as set forth here. We hope that this disclosure will help increase your confidence in our web site. Therefore, in conformity with our goal of exceeding industry standards and the regulations enacted by federal and state authoritative bodies, we abide the following term&#39;s of services.</p>\r\n\r\n<h3>Browsing</h3>\r\n\r\n<p>This website does collect personally identifiable information from your computer when you browse this website and request pages from our servers. This means that, unless you voluntarily and knowingly provide us with personally identifiable information, we will not know your name, your email address, or any other personally identifiable information. We may use IP addresses, browser types and access times to analyze trends, administer the site, improve site performance and gather broad demographic information for aggregate use. When you request a page from our website, our servers log the information provided in the HTTP request header including the IP number, the time of the request, the URL of your request, and other information that is provided in the HTTP header. We collect the HTTP request header information in order to make our website function correctly and provide you the functionality that you see on this website. We also use this information to better understand how visitors use our website and how we can better tune it, its contents and functionality to meet your needs.</p>\r\n\r\n<h3>Information collected and its uses</h3>\r\n\r\n<p>We collect your personal information if you decide to retain our services, participate in our affiliate marketing program, complete an application form, or transact other business with us. We need to collect personally identifiable information from you to execute the requested transaction, provide you with a particular service, and/or to further enhance and protect your account. At any time, we may ask you to voluntarily supply us with additional information needed. We will ask you for information such as, but not limited to: name, current and/or billing address, your e-mail address, telephone number and, other personal information, such as your date of birth, address, and loan account information. We may ask for your email address to send confirmations and, if necessary, we might use the other information to contact you for help in processing your requests.</p>\r\n\r\n<p>All information provided gives Crainly or an affiliate to contact you directly or indirectly. You give full permission to contact you through any and all devices and methods available to us whether it be manual or automated..</p>\r\n\r\n<p>We may also use the information we collect about you In order To, but Not limited To:</p>\r\n\r\n<ul>\r\n	<li>learn more about your interest In the products or services we offer and provide you with information;</li>\r\n	<li>enroll merchants who desire our services</li>\r\n	<li>open merchant files and establish their accounts</li>\r\n	<li>provide customer service</li>\r\n	<li>negotiate settlement of our merchants&rsquo; debts (according to the terms and conditions of their written agreements)</li>\r\n	<li>learn how to improve our products or services</li>\r\n	<li>evaluate your suitability for and provide opportunities for our affiliates and other companies to inform you about the products or services they offer that may interest you</li>\r\n</ul>\r\n\r\n<p>Aside from the ways mentioned above, we may use your personally identifiable information In many other ways, including sending you promotional materials, and sharing your information with third parties and Crainly affiliate so that these third parties and affiliate can send you promotional materials. (By &quot;promotional materials,&quot; we mean communications that directly promote the use Of web sites, or the purchase of products or services.). However, you may &quot;opt-out&quot; of certain uses of your personal information.</p>\r\n\r\n<h3>Disclosure of Information to third parties</h3>\r\n\r\n<p>We may disclose your personally identifiable information In order to effect or carry out any transaction that you have requested of us or As necessary to complete our contractual obligations with you. WE RESERVE THE RIGHT TO SELL, RENT OR TRANSFER YOUR PERSONAL INFORMATION TO THIRD PARTIES OR Crainly AFFILIATES FOR ANY PURPOSE IN OUR SOLE DISCRETION. Crainly may share your personally identifiable information with affiliated companies that are directly or indirectly controlled by, or under common control of Crainly. We may send personally identifiable information about you to non-affiliated companies that are not directly or indirectly controlled by, or under common control of Crainly. The personal information collected on this site and by third parties will be used to operate the site and to provide the services or products or carry out the transactions you have requested or authorized. We may change or broaden the use of your personal information at any time. We may use your personal information to provide promotional offers by means of email advertising, telephone marketing, direct mail marketing, banner advertising, and other possible uses.</p>\r\n\r\n<h3>Choice/opt-out</h3>\r\n\r\n<p>As indicated above, we provide you the opportunity to &#39;opt-out&rsquo; of having your personally identifiable information used for certain purposes, when we ask for or when you provide this information. For example, if you purchase a product/service but do not wish to receive any additional marketing material from us, you can indicate your preference on our order form. You may not, however, opt-out of any service that we deem to be required for us, our affiliates, transferees, or assignees to effectively and efficiently implement our services.</p>\r\n\r\n<p>If you no longer wish to receive promotional communications, you may opt-out of receiving them by following the instructions included in each newsletter or communication or by emailing or calling us per the information contained on our contact page.</p>\r\n\r\n<p>If you do not wish to have your applicable personal information collected, shared, or used by any third party that is not our affiliate/agent/service provider, please contact our customer service department to actively opt-out of having your personal information shared. Customer Service Contact Information:</p>\r\n\r\n<h3>Crainly</h3>\r\n\r\n<ul>\r\n	<li>Email: <a href=\"mailto:help@crainly.com\">help@crainly.com</a></li>\r\n	<li>Phone: <a href=\"tel:1-888-349-6226\">1-888-349-6226</a></li>\r\n</ul>\r\n\r\n<p>We take our ethical responsibilities, the security of your personal information, and your privacy seriously. We have a strong commitment to providing excellent service to all our customers and visitors of this web site, including respecting your concerns about privacy. This term&#39;s of services discloses how we collect, protect, use, And share information gathered about you on our website. If you use this site you explicitly agree to this term&#39;s of services and the Terms Of Use in effect at the time of your accessing this website as set forth here. We hope that this disclosure will help increase your confidence in our web site. Therefore, in conformity with our goal of exceeding industry standards and the regulations enacted by federal and state authoritative bodies, we abide the following term&#39;s of services.</p>\r\n\r\n<h3>Browsing</h3>\r\n\r\n<p>This website does collect personally identifiable information from your computer when you browse this website and request pages from our servers. This means that, unless you voluntarily and knowingly provide us with personally identifiable information, we will not know your name, your email address, or any other personally identifiable information. We may use IP addresses, browser types and access times to analyze trends, administer the site, improve site performance and gather broad demographic information for aggregate use. When you request a page from our website, our servers log the information provided in the HTTP request header including the IP number, the time of the request, the URL of your request, and other information that is provided in the HTTP header. We collect the HTTP request header information in order to make our website function correctly and provide you the functionality that you see on this website. We also use this information to better understand how visitors use our website and how we can better tune it, its contents and functionality to meet your needs.</p>\r\n\r\n<h3>Information collected and its uses</h3>\r\n\r\n<p>We collect your personal information if you decide to retain our services, participate in our affiliate marketing program, complete an application form, or transact other business with us. We need to collect personally identifiable information from you to execute the requested transaction, provide you with a particular service, and/or to further enhance and protect your account. At any time, we may ask you to voluntarily supply us with additional information needed. We will ask you for information such as, but not limited to: name, current and/or billing address, your e-mail address, telephone number and, other personal information, such as your date of birth, address, and loan account information. We may ask for your email address to send confirmations and, if necessary, we might use the other information to contact you for help in processing your requests.</p>\r\n\r\n<p>All information provided gives Crainly or an affiliate to contact you directly or indirectly. You give full permission to contact you through any and all devices and methods available to us whether it be manual or automated..</p>\r\n\r\n<p>We may also use the information we collect about you In order To, but Not limited To:</p>\r\n\r\n<ul>\r\n	<li>learn more about your interest In the products or services we offer and provide you with information;</li>\r\n	<li>enroll merchants who desire our services</li>\r\n	<li>open merchant files and establish their accounts</li>\r\n	<li>provide customer service</li>\r\n	<li>negotiate settlement of our merchants&rsquo; debts (according to the terms and conditions of their written agreements)</li>\r\n	<li>learn how to improve our products or services</li>\r\n	<li>evaluate your suitability for and provide opportunities for our affiliates and other companies to inform you about the products or services they offer that may interest you</li>\r\n</ul>\r\n\r\n<p>Aside from the ways mentioned above, we may use your personally identifiable information In many other ways, including sending you promotional materials, and sharing your information with third parties and Crainly affiliate so that these third parties and affiliate can send you promotional materials. (By &quot;promotional materials,&quot; we mean communications that directly promote the use Of web sites, or the purchase of products or services.). However, you may &quot;opt-out&quot; of certain uses of your personal information.</p>\r\n\r\n<h3>Disclosure of Information to third parties</h3>\r\n\r\n<p>We may disclose your personally identifiable information In order to effect or carry out any transaction that you have requested of us or As necessary to complete our contractual obligations with you. WE RESERVE THE RIGHT TO SELL, RENT OR TRANSFER YOUR PERSONAL INFORMATION TO THIRD PARTIES OR Crainly AFFILIATES FOR ANY PURPOSE IN OUR SOLE DISCRETION. Crainly may share your personally identifiable information with affiliated companies that are directly or indirectly controlled by, or under common control of Crainly. We may send personally identifiable information about you to non-affiliated companies that are not directly or indirectly controlled by, or under common control of Crainly. The personal information collected on this site and by third parties will be used to operate the site and to provide the services or products or carry out the transactions you have requested or authorized. We may change or broaden the use of your personal information at any time. We may use your personal information to provide promotional offers by means of email advertising, telephone marketing, direct mail marketing, banner advertising, and other possible uses.</p>\r\n\r\n<h3>Choice/opt-out</h3>\r\n\r\n<p>As indicated above, we provide you the opportunity to &#39;opt-out&rsquo; of having your personally identifiable information used for certain purposes, when we ask for or when you provide this information. For example, if you purchase a product/service but do not wish to receive any additional marketing material from us, you can indicate your preference on our order form. You may not, however, opt-out of any service that we deem to be required for us, our affiliates, transferees, or assignees to effectively and efficiently implement our services.</p>\r\n\r\n<p>If you no longer wish to receive promotional communications, you may opt-out of receiving them by following the instructions included in each newsletter or communication or by emailing or calling us per the information contained on our contact page.</p>\r\n\r\n<p>If you do not wish to have your applicable personal information collected, shared, or used by any third party that is not our affiliate/agent/service provider, please contact our customer service department to actively opt-out of having your personal information shared. Customer Service Contact Information:</p>\r\n\r\n<h3>Crainly</h3>\r\n\r\n<ul>\r\n	<li>Email:&nbsp;<a href=\"mailto:help@crainly.com\">help@crainly.com</a></li>\r\n	<li>Phone:&nbsp;<a href=\"tel:1-888-349-6226\">1-888-349-6226</a></li>\r\n</ul>\r\n', ''),
(3, 'bannerimage', '', '', '', 'image_1547197860_6034.png'),
(4, 'contact', 'Contact us', 'Get in Touch', 'Address & Info', 'Location Info'),
(7, 'footer_section', 'Find the right fit or it’s free.', 'We guarantee you’ll find the right tutor, or we’ll cover the first hour of your lesson.', 'What would you like to see next?', 'Submit a Feature Request');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_press`
--

CREATE TABLE `tbl_press` (
  `id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `slug` varchar(600) NOT NULL,
  `detail` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_press`
--

INSERT INTO `tbl_press` (`id`, `title`, `slug`, `detail`, `image`, `meta_description`, `meta_keywords`, `date`) VALUES
(1, 'When Do Dogs Stop Growing?', 'when-do-dogs-stop-growing', '<p>Trainer Annie Grossman of School for the Dogs, one of NYC&rsquo;s most respected dog training centers, has plenty of wisdom to share with dog people. She covers common dog behavior questions and training tips in her weekly podcast. We&rsquo;ll be sharing some of those responses right here in a regular feature!</p>\r\n\r\n<p>Have a training question of your own? Check out Annie&rsquo;s blog and click on &ldquo;Ask Annie.&rdquo;</p>\r\n\r\n<h3>Help! I&rsquo;m Moving My Country Dog to the City</h3>\r\n\r\n<p>Dear Ava,</p>\r\n\r\n<p>Transitioning a new dog to the city can certainly be stressful, but I do believe that, if your dog can make it in New York City, like the song says, he can make it anywhere.</p>\r\n\r\n<p>In fact, some trainers refer to dogs who develop &ldquo;suburban dog syndrome&rdquo; when they&rsquo;re raised behind pPFSCbial white picket fences&mdash; these dogs can end up being easily spooked by novel things since their daily intake of new information is limited to what&rsquo;s within their yard.</p>\r\n\r\n<p>Even if they get a walk a day, it&rsquo;s unlikely a dog in a rural or suburban neighborhood will encounter more than a handful of new dogs, people, or stimuli in a given walk.</p>\r\n\r\n<p>Compare this to the dog who grows up in a metropolitan area and may be exposed to dozens of dogs, hundreds of people, and god-only-knows what kind of stimuli on any given walk. I mean, is that guy approaching us wearing a suit made out of plastic bags and soup cans? Why yes, yes he is.</p>\r\n\r\n<p>What&rsquo;s more, behaviors that might be tolerated on a leash when you have all the space in the world may not be safe or desired when you&rsquo;re on a city sidewalk.</p>\r\n\r\n<p>Fortunately, it&rsquo;s absolutely possible for your dog and you to learn to co-exist happily during what will be a new kind of joint outing. All you need is to focus on how you can socialize your dog to new things, and encourage the behaviors you want during walks.</p>\r\n\r\n<p>Here are some tips on gear and training protocol that will help you both as you transition to city life.</p>\r\n\r\n<h3>1. TOSS THAT RETRACTABLE LEASH</h3>\r\n\r\n<p>Retractable leashes, which can change length based on the click of a button, mean that the radius wherein a dog can go is not fixed.</p>\r\n\r\n<p>I don&rsquo;t mind using a retractable leash when I&rsquo;m in a wide open space with my dog, but for leash walking on a busy sidewalk, I think it defeats the major purpose of having your dog on a leash to begin with.</p>\r\n\r\n<p>You want to teach your dog that he generally needs to be close to you and that he&rsquo;s allowed with in a fixed radius controlled by the leash, not by his whim.</p>\r\n\r\n<p>Another problem with retractable leashes is that they usually have very thin cords, which can snap or twist around dog or human body parts. Google &ldquo;Retractable Leash Injuries&rdquo; if you dare.</p>\r\n\r\n<p>What&rsquo;s more, if dropped by mistake, their heavy handles can snap towards the dog, which may result in a big plastic handle hurling in the direction of your dog&rsquo;s face, which isn&rsquo;t something you want to risk when there is the possibility of your dog running into traffic.</p>\r\n\r\n<p>While a leash of this sort might be a nice way for a dog to have some autonomy on a rural trail, it isn&rsquo;t the best fit for city streets.</p>\r\n\r\n<h3>2. CARRY TREATS</h3>\r\n\r\n<p>Investing in a good treat pouch is a great way to make sure that you always have rewards on you (and don&rsquo;t end up with pockets full of grease and crumbs).</p>\r\n\r\n<p>Be liberal with your dispensing of treats&mdash;you want to reward your dog whenever he pays any attention to you, whenever the leash is loose, and whenever he encounters anything that might potentially scare him.</p>\r\n\r\n<p>Giving your dog a treat when he spots unusual things (or people or dogs) is a great way to help him forge positive associations with new things. Keep in mind that the treats aren&rsquo;t just for your dog&mdash;they&rsquo;re going to be for people too!</p>\r\n\r\n<p>When you have a dog, you&rsquo;re not just training him to behave properly on the street&mdash;you are training people to behave properly, too. Without some coaching from you, you&rsquo;re likely to encounter people who will do a lot of improper things when greeting dogs on the street.</p>\r\n\r\n<p>One way to avoid impolite interactions with people who want to say hello to your dog is to hand a treat to anyone that approaches and ask them to give it to your dog.</p>\r\n\r\n<p>Your dog shouldn&rsquo;t have to sit for it or do anything for that matter. The &ldquo;trick&rdquo; they&rsquo;re being rewarded for is just the behavior of co-existing with a new human.</p>\r\n\r\n<h3>3. CHOOSE YOUR WALKING PATH WISELY</h3>\r\n\r\n<p>There are a million things that could happen on a city street that could spook a dog, most of which you cannot control. The best you can do is try to guess what&rsquo;s going to be the quietest route.</p>\r\n\r\n<p>If your dog is small enough and you get stuck in a particularly crowded area, pick up your pup! There is no shame in carrying your dog out of a situation where he could get stepped on.</p>\r\n\r\n<p>Bonus points for walking on the building side of the sidewalk, rather than by the curb. If your dog does get loose, that extra two or three feet will mean a little bit more of a buffer area where you might be able to grab him before he enters traffic.</p>\r\n', '210f760a89db30aa72ca258a3483cc7f_1579616145_2448.jpg', 'qewr', 'ewr', '2020-01-21 17:35:38'),
(2, 'Your Puppy’s Emotional Development Month by Month', 'your-puppys-emotional-development-month-by-month', '<p>Trainer Annie Grossman of School for the Dogs, one of NYC&rsquo;s most respected dog training centers, has plenty of wisdom to share with dog people. She covers common dog behavior questions and training tips in her weekly podcast. We&rsquo;ll be sharing some of those responses right here in a regular feature!</p>\r\n\r\n<p>Have a training question of your own? Check out Annie&rsquo;s blog and click on &ldquo;Ask Annie.&rdquo;</p>\r\n\r\n<h3>Help! I&rsquo;m Moving My Country Dog to the City</h3>\r\n\r\n<p>Dear Ava,</p>\r\n\r\n<p>Transitioning a new dog to the city can certainly be stressful, but I do believe that, if your dog can make it in New York City, like the song says, he can make it anywhere.</p>\r\n\r\n<p>In fact, some trainers refer to dogs who develop &ldquo;suburban dog syndrome&rdquo; when they&rsquo;re raised behind pPFSCbial white picket fences&mdash; these dogs can end up being easily spooked by novel things since their daily intake of new information is limited to what&rsquo;s within their yard.</p>\r\n\r\n<p>Even if they get a walk a day, it&rsquo;s unlikely a dog in a rural or suburban neighborhood will encounter more than a handful of new dogs, people, or stimuli in a given walk.</p>\r\n\r\n<p>Compare this to the dog who grows up in a metropolitan area and may be exposed to dozens of dogs, hundreds of people, and god-only-knows what kind of stimuli on any given walk. I mean, is that guy approaching us wearing a suit made out of plastic bags and soup cans? Why yes, yes he is.</p>\r\n\r\n<p>What&rsquo;s more, behaviors that might be tolerated on a leash when you have all the space in the world may not be safe or desired when you&rsquo;re on a city sidewalk.</p>\r\n\r\n<p>Fortunately, it&rsquo;s absolutely possible for your dog and you to learn to co-exist happily during what will be a new kind of joint outing. All you need is to focus on how you can socialize your dog to new things, and encourage the behaviors you want during walks.</p>\r\n\r\n<p>Here are some tips on gear and training protocol that will help you both as you transition to city life.</p>\r\n\r\n<h3>1. TOSS THAT RETRACTABLE LEASH</h3>\r\n\r\n<p>Retractable leashes, which can change length based on the click of a button, mean that the radius wherein a dog can go is not fixed.</p>\r\n\r\n<p>I don&rsquo;t mind using a retractable leash when I&rsquo;m in a wide open space with my dog, but for leash walking on a busy sidewalk, I think it defeats the major purpose of having your dog on a leash to begin with.</p>\r\n\r\n<p>You want to teach your dog that he generally needs to be close to you and that he&rsquo;s allowed with in a fixed radius controlled by the leash, not by his whim.</p>\r\n\r\n<p>Another problem with retractable leashes is that they usually have very thin cords, which can snap or twist around dog or human body parts. Google &ldquo;Retractable Leash Injuries&rdquo; if you dare.</p>\r\n\r\n<p>What&rsquo;s more, if dropped by mistake, their heavy handles can snap towards the dog, which may result in a big plastic handle hurling in the direction of your dog&rsquo;s face, which isn&rsquo;t something you want to risk when there is the possibility of your dog running into traffic.</p>\r\n\r\n<p>While a leash of this sort might be a nice way for a dog to have some autonomy on a rural trail, it isn&rsquo;t the best fit for city streets.</p>\r\n\r\n<h3>2. CARRY TREATS</h3>\r\n\r\n<p>Investing in a good treat pouch is a great way to make sure that you always have rewards on you (and don&rsquo;t end up with pockets full of grease and crumbs).</p>\r\n\r\n<p>Be liberal with your dispensing of treats&mdash;you want to reward your dog whenever he pays any attention to you, whenever the leash is loose, and whenever he encounters anything that might potentially scare him.</p>\r\n\r\n<p>Giving your dog a treat when he spots unusual things (or people or dogs) is a great way to help him forge positive associations with new things. Keep in mind that the treats aren&rsquo;t just for your dog&mdash;they&rsquo;re going to be for people too!</p>\r\n\r\n<p>When you have a dog, you&rsquo;re not just training him to behave properly on the street&mdash;you are training people to behave properly, too. Without some coaching from you, you&rsquo;re likely to encounter people who will do a lot of improper things when greeting dogs on the street.</p>\r\n\r\n<p>One way to avoid impolite interactions with people who want to say hello to your dog is to hand a treat to anyone that approaches and ask them to give it to your dog.</p>\r\n\r\n<p>Your dog shouldn&rsquo;t have to sit for it or do anything for that matter. The &ldquo;trick&rdquo; they&rsquo;re being rewarded for is just the behavior of co-existing with a new human.</p>\r\n\r\n<h3>3. CHOOSE YOUR WALKING PATH WISELY</h3>\r\n\r\n<p>There are a million things that could happen on a city street that could spook a dog, most of which you cannot control. The best you can do is try to guess what&rsquo;s going to be the quietest route.</p>\r\n\r\n<p>If your dog is small enough and you get stuck in a particularly crowded area, pick up your pup! There is no shame in carrying your dog out of a situation where he could get stepped on.</p>\r\n\r\n<p>Bonus points for walking on the building side of the sidewalk, rather than by the curb. If your dog does get loose, that extra two or three feet will mean a little bit more of a buffer area where you might be able to grab him before he enters traffic.</p>\r\n', 'daca41214b39c5dc66674d09081940f0_1579616177_7643.jpg', NULL, NULL, '2020-01-21 17:45:48'),
(3, 'Does My Dog Think I’m a Dog?', 'does-my-dog-think-im-a-dog', '<p>Trainer Annie Grossman of School for the Dogs, one of NYC&rsquo;s most respected dog training centers, has plenty of wisdom to share with dog people. She covers common dog behavior questions and training tips in her weekly podcast. We&rsquo;ll be sharing some of those responses right here in a regular feature!</p>\r\n\r\n<p>Have a training question of your own? Check out Annie&rsquo;s blog and click on &ldquo;Ask Annie.&rdquo;</p>\r\n\r\n<h3>Help! I&rsquo;m Moving My Country Dog to the City</h3>\r\n\r\n<p>Dear Ava,</p>\r\n\r\n<p>Transitioning a new dog to the city can certainly be stressful, but I do believe that, if your dog can make it in New York City, like the song says, he can make it anywhere.</p>\r\n\r\n<p>In fact, some trainers refer to dogs who develop &ldquo;suburban dog syndrome&rdquo; when they&rsquo;re raised behind pPFSCbial white picket fences&mdash; these dogs can end up being easily spooked by novel things since their daily intake of new information is limited to what&rsquo;s within their yard.</p>\r\n\r\n<p>Even if they get a walk a day, it&rsquo;s unlikely a dog in a rural or suburban neighborhood will encounter more than a handful of new dogs, people, or stimuli in a given walk.</p>\r\n\r\n<p>Compare this to the dog who grows up in a metropolitan area and may be exposed to dozens of dogs, hundreds of people, and god-only-knows what kind of stimuli on any given walk. I mean, is that guy approaching us wearing a suit made out of plastic bags and soup cans? Why yes, yes he is.</p>\r\n\r\n<p>What&rsquo;s more, behaviors that might be tolerated on a leash when you have all the space in the world may not be safe or desired when you&rsquo;re on a city sidewalk.</p>\r\n\r\n<p>Fortunately, it&rsquo;s absolutely possible for your dog and you to learn to co-exist happily during what will be a new kind of joint outing. All you need is to focus on how you can socialize your dog to new things, and encourage the behaviors you want during walks.</p>\r\n\r\n<p>Here are some tips on gear and training protocol that will help you both as you transition to city life.</p>\r\n\r\n<h3>1. TOSS THAT RETRACTABLE LEASH</h3>\r\n\r\n<p>Retractable leashes, which can change length based on the click of a button, mean that the radius wherein a dog can go is not fixed.</p>\r\n\r\n<p>I don&rsquo;t mind using a retractable leash when I&rsquo;m in a wide open space with my dog, but for leash walking on a busy sidewalk, I think it defeats the major purpose of having your dog on a leash to begin with.</p>\r\n\r\n<p>You want to teach your dog that he generally needs to be close to you and that he&rsquo;s allowed with in a fixed radius controlled by the leash, not by his whim.</p>\r\n\r\n<p>Another problem with retractable leashes is that they usually have very thin cords, which can snap or twist around dog or human body parts. Google &ldquo;Retractable Leash Injuries&rdquo; if you dare.</p>\r\n\r\n<p>What&rsquo;s more, if dropped by mistake, their heavy handles can snap towards the dog, which may result in a big plastic handle hurling in the direction of your dog&rsquo;s face, which isn&rsquo;t something you want to risk when there is the possibility of your dog running into traffic.</p>\r\n\r\n<p>While a leash of this sort might be a nice way for a dog to have some autonomy on a rural trail, it isn&rsquo;t the best fit for city streets.</p>\r\n\r\n<h3>2. CARRY TREATS</h3>\r\n\r\n<p>Investing in a good treat pouch is a great way to make sure that you always have rewards on you (and don&rsquo;t end up with pockets full of grease and crumbs).</p>\r\n\r\n<p>Be liberal with your dispensing of treats&mdash;you want to reward your dog whenever he pays any attention to you, whenever the leash is loose, and whenever he encounters anything that might potentially scare him.</p>\r\n\r\n<p>Giving your dog a treat when he spots unusual things (or people or dogs) is a great way to help him forge positive associations with new things. Keep in mind that the treats aren&rsquo;t just for your dog&mdash;they&rsquo;re going to be for people too!</p>\r\n\r\n<p>When you have a dog, you&rsquo;re not just training him to behave properly on the street&mdash;you are training people to behave properly, too. Without some coaching from you, you&rsquo;re likely to encounter people who will do a lot of improper things when greeting dogs on the street.</p>\r\n\r\n<p>One way to avoid impolite interactions with people who want to say hello to your dog is to hand a treat to anyone that approaches and ask them to give it to your dog.</p>\r\n\r\n<p>Your dog shouldn&rsquo;t have to sit for it or do anything for that matter. The &ldquo;trick&rdquo; they&rsquo;re being rewarded for is just the behavior of co-existing with a new human.</p>\r\n\r\n<h3>3. CHOOSE YOUR WALKING PATH WISELY</h3>\r\n\r\n<p>There are a million things that could happen on a city street that could spook a dog, most of which you cannot control. The best you can do is try to guess what&rsquo;s going to be the quietest route.</p>\r\n\r\n<p>If your dog is small enough and you get stuck in a particularly crowded area, pick up your pup! There is no shame in carrying your dog out of a situation where he could get stepped on.</p>\r\n\r\n<p>Bonus points for walking on the building side of the sidewalk, rather than by the curb. If your dog does get loose, that extra two or three feet will mean a little bit more of a buffer area where you might be able to grab him before he enters traffic.</p>\r\n', '15de21c670ae7c3f6f3f1f37029303c9_1579616186_7538.jpg', NULL, NULL, '2020-01-21 17:46:06'),
(4, 'The 105 Most Popular Rottweiler Names of 2018', 'the-105-most-popular-rottweiler-names-of-2018', '<p>Transitioning a new dog to the city can certainly be stressful, but I do believe that, if your dog can make it in New York City, like the song says, he can make it anywhere.</p>\r\n\r\n<p>In fact, some trainers refer to dogs who develop &ldquo;suburban dog syndrome&rdquo; when they&rsquo;re raised behind pPFSCbial white picket fences&mdash; these dogs can end up being easily spooked by novel things since their daily intake of new information is limited to what&rsquo;s within their yard.</p>\r\n\r\n<p>Even if they get a walk a day, it&rsquo;s unlikely a dog in a rural or suburban neighborhood will encounter more than a handful of new dogs, people, or stimuli in a given walk.</p>\r\n\r\n<p>Compare this to the dog who grows up in a metropolitan area and may be exposed to dozens of dogs, hundreds of people, and god-only-knows what kind of stimuli on any given walk. I mean, is that guy approaching us wearing a suit made out of plastic bags and soup cans? Why yes, yes he is.</p>\r\n\r\n<p>What&rsquo;s more, behaviors that might be tolerated on a leash when you have all the space in the world may not be safe or desired when you&rsquo;re on a city sidewalk.</p>\r\n\r\n<p>Fortunately, it&rsquo;s absolutely possible for your dog and you to learn to co-exist happily during what will be a new kind of joint outing. All you need is to focus on how you can socialize your dog to new things, and encourage the behaviors you want during walks.</p>\r\n\r\n<p>Here are some tips on gear and training protocol that will help you both as you transition to city life.</p>\r\n\r\n<h3>1. TOSS THAT RETRACTABLE LEASH</h3>\r\n\r\n<p>Retractable leashes, which can change length based on the click of a button, mean that the radius wherein a dog can go is not fixed.</p>\r\n\r\n<p>I don&rsquo;t mind using a retractable leash when I&rsquo;m in a wide open space with my dog, but for leash walking on a busy sidewalk, I think it defeats the major purpose of having your dog on a leash to begin with.</p>\r\n\r\n<p>You want to teach your dog that he generally needs to be close to you and that he&rsquo;s allowed with in a fixed radius controlled by the leash, not by his whim.</p>\r\n\r\n<p>Another problem with retractable leashes is that they usually have very thin cords, which can snap or twist around dog or human body parts. Google &ldquo;Retractable Leash Injuries&rdquo; if you dare.</p>\r\n\r\n<p>What&rsquo;s more, if dropped by mistake, their heavy handles can snap towards the dog, which may result in a big plastic handle hurling in the direction of your dog&rsquo;s face, which isn&rsquo;t something you want to risk when there is the possibility of your dog running into traffic.</p>\r\n\r\n<p>While a leash of this sort might be a nice way for a dog to have some autonomy on a rural trail, it isn&rsquo;t the best fit for city streets.</p>\r\n\r\n<h3>2. CARRY TREATS</h3>\r\n\r\n<p>Investing in a good treat pouch is a great way to make sure that you always have rewards on you (and don&rsquo;t end up with pockets full of grease and crumbs).</p>\r\n\r\n<p>Be liberal with your dispensing of treats&mdash;you want to reward your dog whenever he pays any attention to you, whenever the leash is loose, and whenever he encounters anything that might potentially scare him.</p>\r\n\r\n<p>Giving your dog a treat when he spots unusual things (or people or dogs) is a great way to help him forge positive associations with new things. Keep in mind that the treats aren&rsquo;t just for your dog&mdash;they&rsquo;re going to be for people too!</p>\r\n\r\n<p>When you have a dog, you&rsquo;re not just training him to behave properly on the street&mdash;you are training people to behave properly, too. Without some coaching from you, you&rsquo;re likely to encounter people who will do a lot of improper things when greeting dogs on the street.</p>\r\n\r\n<p>One way to avoid impolite interactions with people who want to say hello to your dog is to hand a treat to anyone that approaches and ask them to give it to your dog.</p>\r\n\r\n<p>Your dog shouldn&rsquo;t have to sit for it or do anything for that matter. The &ldquo;trick&rdquo; they&rsquo;re being rewarded for is just the behavior of co-existing with a new human.</p>\r\n\r\n<h3>3. CHOOSE YOUR WALKING PATH WISELY</h3>\r\n\r\n<p>There are a million things that could happen on a city street that could spook a dog, most of which you cannot control. The best you can do is try to guess what&rsquo;s going to be the quietest route.</p>\r\n\r\n<p>If your dog is small enough and you get stuck in a particularly crowded area, pick up your pup! There is no shame in carrying your dog out of a situation where he could get stepped on.</p>\r\n\r\n<p>Bonus points for walking on the building side of the sidewalk, rather than by the curb. If your dog does get loose, that extra two or three feet will mean a little bit more of a buffer area where you might be able to grab him before he enters traffic.</p>\r\n', '64223ccf70bbb65a3a4aceac37e21016_1579616206_6034.jpg', NULL, NULL, '2020-01-21 17:46:46'),
(5, 'The Top 7 Affordable Dog Fencing Options for 2019', 'the-top-7-affordable-dog-fencing-options-for-2019', '<p>Trainer Annie Grossman of School for the Dogs, one of NYC&rsquo;s most respected dog training centers, has plenty of wisdom to share with dog people. She covers common dog behavior questions and training tips in her weekly podcast. We&rsquo;ll be sharing some of those responses right here in a regular feature!</p>\r\n\r\n<p>Have a training question of your own? Check out Annie&rsquo;s blog and click on &ldquo;Ask Annie.&rdquo;</p>\r\n\r\n<h3>Help! I&rsquo;m Moving My Country Dog to the City</h3>\r\n\r\n<p>Dear Ava,</p>\r\n\r\n<p>Transitioning a new dog to the city can certainly be stressful, but I do believe that, if your dog can make it in New York City, like the song says, he can make it anywhere.</p>\r\n\r\n<p>In fact, some trainers refer to dogs who develop &ldquo;suburban dog syndrome&rdquo; when they&rsquo;re raised behind pPFSCbial white picket fences&mdash; these dogs can end up being easily spooked by novel things since their daily intake of new information is limited to what&rsquo;s within their yard.</p>\r\n\r\n<p>Even if they get a walk a day, it&rsquo;s unlikely a dog in a rural or suburban neighborhood will encounter more than a handful of new dogs, people, or stimuli in a given walk.</p>\r\n\r\n<p>Compare this to the dog who grows up in a metropolitan area and may be exposed to dozens of dogs, hundreds of people, and god-only-knows what kind of stimuli on any given walk. I mean, is that guy approaching us wearing a suit made out of plastic bags and soup cans? Why yes, yes he is.</p>\r\n\r\n<p>What&rsquo;s more, behaviors that might be tolerated on a leash when you have all the space in the world may not be safe or desired when you&rsquo;re on a city sidewalk.</p>\r\n\r\n<p>Fortunately, it&rsquo;s absolutely possible for your dog and you to learn to co-exist happily during what will be a new kind of joint outing. All you need is to focus on how you can socialize your dog to new things, and encourage the behaviors you want during walks.</p>\r\n\r\n<p>Here are some tips on gear and training protocol that will help you both as you transition to city life.</p>\r\n\r\n<h3>1. TOSS THAT RETRACTABLE LEASH</h3>\r\n\r\n<p>Retractable leashes, which can change length based on the click of a button, mean that the radius wherein a dog can go is not fixed.</p>\r\n\r\n<p>I don&rsquo;t mind using a retractable leash when I&rsquo;m in a wide open space with my dog, but for leash walking on a busy sidewalk, I think it defeats the major purpose of having your dog on a leash to begin with.</p>\r\n\r\n<p>You want to teach your dog that he generally needs to be close to you and that he&rsquo;s allowed with in a fixed radius controlled by the leash, not by his whim.</p>\r\n\r\n<p>Another problem with retractable leashes is that they usually have very thin cords, which can snap or twist around dog or human body parts. Google &ldquo;Retractable Leash Injuries&rdquo; if you dare.</p>\r\n\r\n<p>What&rsquo;s more, if dropped by mistake, their heavy handles can snap towards the dog, which may result in a big plastic handle hurling in the direction of your dog&rsquo;s face, which isn&rsquo;t something you want to risk when there is the possibility of your dog running into traffic.</p>\r\n\r\n<p>While a leash of this sort might be a nice way for a dog to have some autonomy on a rural trail, it isn&rsquo;t the best fit for city streets.</p>\r\n\r\n<h3>2. CARRY TREATS</h3>\r\n\r\n<p>Investing in a good treat pouch is a great way to make sure that you always have rewards on you (and don&rsquo;t end up with pockets full of grease and crumbs).</p>\r\n\r\n<p>Be liberal with your dispensing of treats&mdash;you want to reward your dog whenever he pays any attention to you, whenever the leash is loose, and whenever he encounters anything that might potentially scare him.</p>\r\n\r\n<p>Giving your dog a treat when he spots unusual things (or people or dogs) is a great way to help him forge positive associations with new things. Keep in mind that the treats aren&rsquo;t just for your dog&mdash;they&rsquo;re going to be for people too!</p>\r\n\r\n<p>When you have a dog, you&rsquo;re not just training him to behave properly on the street&mdash;you are training people to behave properly, too. Without some coaching from you, you&rsquo;re likely to encounter people who will do a lot of improper things when greeting dogs on the street.</p>\r\n\r\n<p>One way to avoid impolite interactions with people who want to say hello to your dog is to hand a treat to anyone that approaches and ask them to give it to your dog.</p>\r\n\r\n<p>Your dog shouldn&rsquo;t have to sit for it or do anything for that matter. The &ldquo;trick&rdquo; they&rsquo;re being rewarded for is just the behavior of co-existing with a new human.</p>\r\n\r\n<h3>3. CHOOSE YOUR WALKING PATH WISELY</h3>\r\n\r\n<p>There are a million things that could happen on a city street that could spook a dog, most of which you cannot control. The best you can do is try to guess what&rsquo;s going to be the quietest route.</p>\r\n\r\n<p>If your dog is small enough and you get stuck in a particularly crowded area, pick up your pup! There is no shame in carrying your dog out of a situation where he could get stepped on.</p>\r\n\r\n<p>Bonus points for walking on the building side of the sidewalk, rather than by the curb. If your dog does get loose, that extra two or three feet will mean a little bit more of a buffer area where you might be able to grab him before he enters traffic.</p>\r\n', 'a86c450b76fb8c371afead6410d55534_1579616219_4033.jpg', NULL, NULL, '2020-01-21 17:47:25'),
(6, 'How Can I Help my Dog Adjust to City Life?', 'how-can-i-help-my-dog-adjust-to-city-life', '<p>Trainer Annie Grossman of School for the Dogs, one of NYC&rsquo;s most respected dog training centers, has plenty of wisdom to share with dog people. She covers common dog behavior questions and training tips in her weekly podcast. We&rsquo;ll be sharing some of those responses right here in a regular feature!</p>\r\n\r\n<p>Have a training question of your own? Check out Annie&rsquo;s blog and click on &ldquo;Ask Annie.&rdquo;</p>\r\n\r\n<h3>Help! I&rsquo;m Moving My Country Dog to the City</h3>\r\n\r\n<p>Dear Ava,</p>\r\n\r\n<p>Transitioning a new dog to the city can certainly be stressful, but I do believe that, if your dog can make it in New York City, like the song says, he can make it anywhere.</p>\r\n\r\n<p>In fact, some trainers refer to dogs who develop &ldquo;suburban dog syndrome&rdquo; when they&rsquo;re raised behind pPFSCbial white picket fences&mdash; these dogs can end up being easily spooked by novel things since their daily intake of new information is limited to what&rsquo;s within their yard.</p>\r\n\r\n<p>Even if they get a walk a day, it&rsquo;s unlikely a dog in a rural or suburban neighborhood will encounter more than a handful of new dogs, people, or stimuli in a given walk.</p>\r\n\r\n<p>Compare this to the dog who grows up in a metropolitan area and may be exposed to dozens of dogs, hundreds of people, and god-only-knows what kind of stimuli on any given walk. I mean, is that guy approaching us wearing a suit made out of plastic bags and soup cans? Why yes, yes he is.</p>\r\n\r\n<p>What&rsquo;s more, behaviors that might be tolerated on a leash when you have all the space in the world may not be safe or desired when you&rsquo;re on a city sidewalk.</p>\r\n\r\n<p>Fortunately, it&rsquo;s absolutely possible for your dog and you to learn to co-exist happily during what will be a new kind of joint outing. All you need is to focus on how you can socialize your dog to new things, and encourage the behaviors you want during walks.</p>\r\n\r\n<p>Here are some tips on gear and training protocol that will help you both as you transition to city life.</p>\r\n\r\n<h3>1. TOSS THAT RETRACTABLE LEASH</h3>\r\n\r\n<p>Retractable leashes, which can change length based on the click of a button, mean that the radius wherein a dog can go is not fixed.</p>\r\n\r\n<p>I don&rsquo;t mind using a retractable leash when I&rsquo;m in a wide open space with my dog, but for leash walking on a busy sidewalk, I think it defeats the major purpose of having your dog on a leash to begin with.</p>\r\n\r\n<p>You want to teach your dog that he generally needs to be close to you and that he&rsquo;s allowed with in a fixed radius controlled by the leash, not by his whim.</p>\r\n\r\n<p>Another problem with retractable leashes is that they usually have very thin cords, which can snap or twist around dog or human body parts. Google &ldquo;Retractable Leash Injuries&rdquo; if you dare.</p>\r\n\r\n<p>What&rsquo;s more, if dropped by mistake, their heavy handles can snap towards the dog, which may result in a big plastic handle hurling in the direction of your dog&rsquo;s face, which isn&rsquo;t something you want to risk when there is the possibility of your dog running into traffic.</p>\r\n\r\n<p>While a leash of this sort might be a nice way for a dog to have some autonomy on a rural trail, it isn&rsquo;t the best fit for city streets.</p>\r\n\r\n<h3>2. CARRY TREATS</h3>\r\n\r\n<p>Investing in a good treat pouch is a great way to make sure that you always have rewards on you (and don&rsquo;t end up with pockets full of grease and crumbs).</p>\r\n\r\n<p>Be liberal with your dispensing of treats&mdash;you want to reward your dog whenever he pays any attention to you, whenever the leash is loose, and whenever he encounters anything that might potentially scare him.</p>\r\n\r\n<p>Giving your dog a treat when he spots unusual things (or people or dogs) is a great way to help him forge positive associations with new things. Keep in mind that the treats aren&rsquo;t just for your dog&mdash;they&rsquo;re going to be for people too!</p>\r\n\r\n<p>When you have a dog, you&rsquo;re not just training him to behave properly on the street&mdash;you are training people to behave properly, too. Without some coaching from you, you&rsquo;re likely to encounter people who will do a lot of improper things when greeting dogs on the street.</p>\r\n\r\n<p>One way to avoid impolite interactions with people who want to say hello to your dog is to hand a treat to anyone that approaches and ask them to give it to your dog.</p>\r\n\r\n<p>Your dog shouldn&rsquo;t have to sit for it or do anything for that matter. The &ldquo;trick&rdquo; they&rsquo;re being rewarded for is just the behavior of co-existing with a new human.</p>\r\n\r\n<h3>3. CHOOSE YOUR WALKING PATH WISELY</h3>\r\n\r\n<p>There are a million things that could happen on a city street that could spook a dog, most of which you cannot control. The best you can do is try to guess what&rsquo;s going to be the quietest route.</p>\r\n\r\n<p>If your dog is small enough and you get stuck in a particularly crowded area, pick up your pup! There is no shame in carrying your dog out of a situation where he could get stepped on.</p>\r\n\r\n<p>Bonus points for walking on the building side of the sidewalk, rather than by the curb. If your dog does get loose, that extra two or three feet will mean a little bit more of a buffer area where you might be able to grab him before he enters traffic.</p>\r\n', 'bf8229696f7a3bb4700cfddef19fa23f_1579616240_1866.jpg', NULL, NULL, '2020-01-21 17:47:42'),
(7, 'Healthy Paws Pet Insurance Reveals the Most Expensive', 'healthy-paws-pet-insurance-reveals-the-most-expensive', '<p>Trainer Annie Grossman of School for the Dogs, one of NYC&rsquo;s most respected dog training centers, has plenty of wisdom to share with dog people. She covers common dog behavior questions and training tips in her weekly podcast. We&rsquo;ll be sharing some of those responses right here in a regular feature!</p>\r\n\r\n<p>Have a training question of your own? Check out Annie&rsquo;s blog and click on &ldquo;Ask Annie.&rdquo;</p>\r\n\r\n<h3>Help! I&rsquo;m Moving My Country Dog to the City</h3>\r\n\r\n<p>Dear Ava,</p>\r\n\r\n<p>Transitioning a new dog to the city can certainly be stressful, but I do believe that, if your dog can make it in New York City, like the song says, he can make it anywhere.</p>\r\n\r\n<p>In fact, some trainers refer to dogs who develop &ldquo;suburban dog syndrome&rdquo; when they&rsquo;re raised behind pPFSCbial white picket fences&mdash; these dogs can end up being easily spooked by novel things since their daily intake of new information is limited to what&rsquo;s within their yard.</p>\r\n\r\n<p>Even if they get a walk a day, it&rsquo;s unlikely a dog in a rural or suburban neighborhood will encounter more than a handful of new dogs, people, or stimuli in a given walk.</p>\r\n\r\n<p>Compare this to the dog who grows up in a metropolitan area and may be exposed to dozens of dogs, hundreds of people, and god-only-knows what kind of stimuli on any given walk. I mean, is that guy approaching us wearing a suit made out of plastic bags and soup cans? Why yes, yes he is.</p>\r\n\r\n<p>What&rsquo;s more, behaviors that might be tolerated on a leash when you have all the space in the world may not be safe or desired when you&rsquo;re on a city sidewalk.</p>\r\n\r\n<p>Fortunately, it&rsquo;s absolutely possible for your dog and you to learn to co-exist happily during what will be a new kind of joint outing. All you need is to focus on how you can socialize your dog to new things, and encourage the behaviors you want during walks.</p>\r\n\r\n<p>Here are some tips on gear and training protocol that will help you both as you transition to city life.</p>\r\n\r\n<h3>1. TOSS THAT RETRACTABLE LEASH</h3>\r\n\r\n<p>Retractable leashes, which can change length based on the click of a button, mean that the radius wherein a dog can go is not fixed.</p>\r\n\r\n<p>I don&rsquo;t mind using a retractable leash when I&rsquo;m in a wide open space with my dog, but for leash walking on a busy sidewalk, I think it defeats the major purpose of having your dog on a leash to begin with.</p>\r\n\r\n<p>You want to teach your dog that he generally needs to be close to you and that he&rsquo;s allowed with in a fixed radius controlled by the leash, not by his whim.</p>\r\n\r\n<p>Another problem with retractable leashes is that they usually have very thin cords, which can snap or twist around dog or human body parts. Google &ldquo;Retractable Leash Injuries&rdquo; if you dare.</p>\r\n\r\n<p>What&rsquo;s more, if dropped by mistake, their heavy handles can snap towards the dog, which may result in a big plastic handle hurling in the direction of your dog&rsquo;s face, which isn&rsquo;t something you want to risk when there is the possibility of your dog running into traffic.</p>\r\n\r\n<p>While a leash of this sort might be a nice way for a dog to have some autonomy on a rural trail, it isn&rsquo;t the best fit for city streets.</p>\r\n\r\n<h3>2. CARRY TREATS</h3>\r\n\r\n<p>Investing in a good treat pouch is a great way to make sure that you always have rewards on you (and don&rsquo;t end up with pockets full of grease and crumbs).</p>\r\n\r\n<p>Be liberal with your dispensing of treats&mdash;you want to reward your dog whenever he pays any attention to you, whenever the leash is loose, and whenever he encounters anything that might potentially scare him.</p>\r\n\r\n<p>Giving your dog a treat when he spots unusual things (or people or dogs) is a great way to help him forge positive associations with new things. Keep in mind that the treats aren&rsquo;t just for your dog&mdash;they&rsquo;re going to be for people too!</p>\r\n\r\n<p>When you have a dog, you&rsquo;re not just training him to behave properly on the street&mdash;you are training people to behave properly, too. Without some coaching from you, you&rsquo;re likely to encounter people who will do a lot of improper things when greeting dogs on the street.</p>\r\n\r\n<p>One way to avoid impolite interactions with people who want to say hello to your dog is to hand a treat to anyone that approaches and ask them to give it to your dog.</p>\r\n\r\n<p>Your dog shouldn&rsquo;t have to sit for it or do anything for that matter. The &ldquo;trick&rdquo; they&rsquo;re being rewarded for is just the behavior of co-existing with a new human.</p>\r\n\r\n<h3>3. CHOOSE YOUR WALKING PATH WISELY</h3>\r\n\r\n<p>There are a million things that could happen on a city street that could spook a dog, most of which you cannot control. The best you can do is try to guess what&rsquo;s going to be the quietest route.</p>\r\n\r\n<p>If your dog is small enough and you get stuck in a particularly crowded area, pick up your pup! There is no shame in carrying your dog out of a situation where he could get stepped on.</p>\r\n\r\n<p>Bonus points for walking on the building side of the sidewalk, rather than by the curb. If your dog does get loose, that extra two or three feet will mean a little bit more of a buffer area where you might be able to grab him before he enters traffic.</p>\r\n', '53fde96fcc4b4ce72d7739202324cd49_1579616252_1982.jpg', NULL, NULL, '2020-01-21 17:48:11'),
(8, 'The 116 Most Popular French Bulldog Names of 2018', 'the-116-most-popular-french-bulldog-names-of-2018', '<p>Trainer Annie Grossman of School for the Dogs, one of NYC&rsquo;s most respected dog training centers, has plenty of wisdom to share with dog people. She covers common dog behavior questions and training tips in her weekly podcast. We&rsquo;ll be sharing some of those responses right here in a regular feature!</p>\r\n\r\n<p>Have a training question of your own? Check out Annie&rsquo;s blog and click on &ldquo;Ask Annie.&rdquo;</p>\r\n\r\n<h3>Help! I&rsquo;m Moving My Country Dog to the City</h3>\r\n\r\n<p>Dear Ava,</p>\r\n\r\n<p>Transitioning a new dog to the city can certainly be stressful, but I do believe that, if your dog can make it in New York City, like the song says, he can make it anywhere.</p>\r\n\r\n<p>In fact, some trainers refer to dogs who develop &ldquo;suburban dog syndrome&rdquo; when they&rsquo;re raised behind pPFSCbial white picket fences&mdash; these dogs can end up being easily spooked by novel things since their daily intake of new information is limited to what&rsquo;s within their yard.</p>\r\n\r\n<p>Even if they get a walk a day, it&rsquo;s unlikely a dog in a rural or suburban neighborhood will encounter more than a handful of new dogs, people, or stimuli in a given walk.</p>\r\n\r\n<p>Compare this to the dog who grows up in a metropolitan area and may be exposed to dozens of dogs, hundreds of people, and god-only-knows what kind of stimuli on any given walk. I mean, is that guy approaching us wearing a suit made out of plastic bags and soup cans? Why yes, yes he is.</p>\r\n\r\n<p>What&rsquo;s more, behaviors that might be tolerated on a leash when you have all the space in the world may not be safe or desired when you&rsquo;re on a city sidewalk.</p>\r\n\r\n<p>Fortunately, it&rsquo;s absolutely possible for your dog and you to learn to co-exist happily during what will be a new kind of joint outing. All you need is to focus on how you can socialize your dog to new things, and encourage the behaviors you want during walks.</p>\r\n\r\n<p>Here are some tips on gear and training protocol that will help you both as you transition to city life.</p>\r\n\r\n<h3>1. TOSS THAT RETRACTABLE LEASH</h3>\r\n\r\n<p>Retractable leashes, which can change length based on the click of a button, mean that the radius wherein a dog can go is not fixed.</p>\r\n\r\n<p>I don&rsquo;t mind using a retractable leash when I&rsquo;m in a wide open space with my dog, but for leash walking on a busy sidewalk, I think it defeats the major purpose of having your dog on a leash to begin with.</p>\r\n\r\n<p>You want to teach your dog that he generally needs to be close to you and that he&rsquo;s allowed with in a fixed radius controlled by the leash, not by his whim.</p>\r\n\r\n<p>Another problem with retractable leashes is that they usually have very thin cords, which can snap or twist around dog or human body parts. Google &ldquo;Retractable Leash Injuries&rdquo; if you dare.</p>\r\n\r\n<p>What&rsquo;s more, if dropped by mistake, their heavy handles can snap towards the dog, which may result in a big plastic handle hurling in the direction of your dog&rsquo;s face, which isn&rsquo;t something you want to risk when there is the possibility of your dog running into traffic.</p>\r\n\r\n<p>While a leash of this sort might be a nice way for a dog to have some autonomy on a rural trail, it isn&rsquo;t the best fit for city streets.</p>\r\n\r\n<h3>2. CARRY TREATS</h3>\r\n\r\n<p>Investing in a good treat pouch is a great way to make sure that you always have rewards on you (and don&rsquo;t end up with pockets full of grease and crumbs).</p>\r\n\r\n<p>Be liberal with your dispensing of treats&mdash;you want to reward your dog whenever he pays any attention to you, whenever the leash is loose, and whenever he encounters anything that might potentially scare him.</p>\r\n\r\n<p>Giving your dog a treat when he spots unusual things (or people or dogs) is a great way to help him forge positive associations with new things. Keep in mind that the treats aren&rsquo;t just for your dog&mdash;they&rsquo;re going to be for people too!</p>\r\n\r\n<p>When you have a dog, you&rsquo;re not just training him to behave properly on the street&mdash;you are training people to behave properly, too. Without some coaching from you, you&rsquo;re likely to encounter people who will do a lot of improper things when greeting dogs on the street.</p>\r\n\r\n<p>One way to avoid impolite interactions with people who want to say hello to your dog is to hand a treat to anyone that approaches and ask them to give it to your dog.</p>\r\n\r\n<p>Your dog shouldn&rsquo;t have to sit for it or do anything for that matter. The &ldquo;trick&rdquo; they&rsquo;re being rewarded for is just the behavior of co-existing with a new human.</p>\r\n\r\n<h3>3. CHOOSE YOUR WALKING PATH WISELY</h3>\r\n\r\n<p>There are a million things that could happen on a city street that could spook a dog, most of which you cannot control. The best you can do is try to guess what&rsquo;s going to be the quietest route.</p>\r\n\r\n<p>If your dog is small enough and you get stuck in a particularly crowded area, pick up your pup! There is no shame in carrying your dog out of a situation where he could get stepped on.</p>\r\n\r\n<p>Bonus points for walking on the building side of the sidewalk, rather than by the curb. If your dog does get loose, that extra two or three feet will mean a little bit more of a buffer area where you might be able to grab him before he enters traffic.</p>\r\n', 'b0b183c207f46f0cca7dc63b2604f5cc_1579616263_4820.jpg', NULL, NULL, '2020-01-21 17:48:33');
INSERT INTO `tbl_press` (`id`, `title`, `slug`, `detail`, `image`, `meta_description`, `meta_keywords`, `date`) VALUES
(9, 'When Do Dogs Stop Growing?', 'when-do-dogs-stop-growing', '<p>Trainer Annie Grossman of School for the Dogs, one of NYC&rsquo;s most respected dog training centers, has plenty of wisdom to share with dog people. She covers common dog behavior questions and training tips in her weekly podcast. We&rsquo;ll be sharing some of those responses right here in a regular feature!</p>\r\n\r\n<p>Have a training question of your own? Check out Annie&rsquo;s blog and click on &ldquo;Ask Annie.&rdquo;</p>\r\n\r\n<h3>Help! I&rsquo;m Moving My Country Dog to the City</h3>\r\n\r\n<p>Dear Ava,</p>\r\n\r\n<p>Transitioning a new dog to the city can certainly be stressful, but I do believe that, if your dog can make it in New York City, like the song says, he can make it anywhere.</p>\r\n\r\n<p>In fact, some trainers refer to dogs who develop &ldquo;suburban dog syndrome&rdquo; when they&rsquo;re raised behind pPFSCbial white picket fences&mdash; these dogs can end up being easily spooked by novel things since their daily intake of new information is limited to what&rsquo;s within their yard.</p>\r\n\r\n<p>Even if they get a walk a day, it&rsquo;s unlikely a dog in a rural or suburban neighborhood will encounter more than a handful of new dogs, people, or stimuli in a given walk.</p>\r\n\r\n<p>Compare this to the dog who grows up in a metropolitan area and may be exposed to dozens of dogs, hundreds of people, and god-only-knows what kind of stimuli on any given walk. I mean, is that guy approaching us wearing a suit made out of plastic bags and soup cans? Why yes, yes he is.</p>\r\n\r\n<p>What&rsquo;s more, behaviors that might be tolerated on a leash when you have all the space in the world may not be safe or desired when you&rsquo;re on a city sidewalk.</p>\r\n\r\n<p>Fortunately, it&rsquo;s absolutely possible for your dog and you to learn to co-exist happily during what will be a new kind of joint outing. All you need is to focus on how you can socialize your dog to new things, and encourage the behaviors you want during walks.</p>\r\n\r\n<p>Here are some tips on gear and training protocol that will help you both as you transition to city life.</p>\r\n\r\n<h3>1. TOSS THAT RETRACTABLE LEASH</h3>\r\n\r\n<p>Retractable leashes, which can change length based on the click of a button, mean that the radius wherein a dog can go is not fixed.</p>\r\n\r\n<p>I don&rsquo;t mind using a retractable leash when I&rsquo;m in a wide open space with my dog, but for leash walking on a busy sidewalk, I think it defeats the major purpose of having your dog on a leash to begin with.</p>\r\n\r\n<p>You want to teach your dog that he generally needs to be close to you and that he&rsquo;s allowed with in a fixed radius controlled by the leash, not by his whim.</p>\r\n\r\n<p>Another problem with retractable leashes is that they usually have very thin cords, which can snap or twist around dog or human body parts. Google &ldquo;Retractable Leash Injuries&rdquo; if you dare.</p>\r\n\r\n<p>What&rsquo;s more, if dropped by mistake, their heavy handles can snap towards the dog, which may result in a big plastic handle hurling in the direction of your dog&rsquo;s face, which isn&rsquo;t something you want to risk when there is the possibility of your dog running into traffic.</p>\r\n\r\n<p>While a leash of this sort might be a nice way for a dog to have some autonomy on a rural trail, it isn&rsquo;t the best fit for city streets.</p>\r\n\r\n<h3>2. CARRY TREATS</h3>\r\n\r\n<p>Investing in a good treat pouch is a great way to make sure that you always have rewards on you (and don&rsquo;t end up with pockets full of grease and crumbs).</p>\r\n\r\n<p>Be liberal with your dispensing of treats&mdash;you want to reward your dog whenever he pays any attention to you, whenever the leash is loose, and whenever he encounters anything that might potentially scare him.</p>\r\n\r\n<p>Giving your dog a treat when he spots unusual things (or people or dogs) is a great way to help him forge positive associations with new things. Keep in mind that the treats aren&rsquo;t just for your dog&mdash;they&rsquo;re going to be for people too!</p>\r\n\r\n<p>When you have a dog, you&rsquo;re not just training him to behave properly on the street&mdash;you are training people to behave properly, too. Without some coaching from you, you&rsquo;re likely to encounter people who will do a lot of improper things when greeting dogs on the street.</p>\r\n\r\n<p>One way to avoid impolite interactions with people who want to say hello to your dog is to hand a treat to anyone that approaches and ask them to give it to your dog.</p>\r\n\r\n<p>Your dog shouldn&rsquo;t have to sit for it or do anything for that matter. The &ldquo;trick&rdquo; they&rsquo;re being rewarded for is just the behavior of co-existing with a new human.</p>\r\n\r\n<h3>3. CHOOSE YOUR WALKING PATH WISELY</h3>\r\n\r\n<p>There are a million things that could happen on a city street that could spook a dog, most of which you cannot control. The best you can do is try to guess what&rsquo;s going to be the quietest route.</p>\r\n\r\n<p>If your dog is small enough and you get stuck in a particularly crowded area, pick up your pup! There is no shame in carrying your dog out of a situation where he could get stepped on.</p>\r\n\r\n<p>Bonus points for walking on the building side of the sidewalk, rather than by the curb. If your dog does get loose, that extra two or three feet will mean a little bit more of a buffer area where you might be able to grab him before he enters traffic.</p>\r\n', 'c8ed21db4f678f3b13b9d5ee16489088_1579616272_8707.jpg', NULL, NULL, '2020-01-21 17:48:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_promocodes`
--

CREATE TABLE `tbl_promocodes` (
  `id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `code_type` enum('percent','fixed') NOT NULL DEFAULT 'percent',
  `amount` float NOT NULL DEFAULT 0,
  `codes` int(11) DEFAULT 0,
  `code_used` int(11) DEFAULT 0,
  `expiry_date` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_promocodes`
--

INSERT INTO `tbl_promocodes` (`id`, `code`, `code_type`, `amount`, `codes`, `code_used`, `expiry_date`, `status`) VALUES
(1, 'test1', 'percent', 5, 5, 5, '2020-06-30', 0),
(2, 'test2', 'fixed', 50, 5, 2, '2020-07-31', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_questions`
--

CREATE TABLE `tbl_questions` (
  `id` int(11) UNSIGNED NOT NULL,
  `question` varchar(500) DEFAULT NULL,
  `type` enum('why','income') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_questions`
--

INSERT INTO `tbl_questions` (`id`, `question`, `type`) VALUES
(1, 'Build a dog-sitting business as my sole source of income', 'why'),
(2, 'Dog sit to earn additional income', 'why'),
(3, 'Dog sit primarily for fun', 'why'),
(4, 'Dog sit temporarily (less than 6 months) for extra cash', 'why'),
(5, 'Expand my established dog-sitting business', 'why'),
(6, 'Up to $100 (up to 4 dog overnights at $25/night)', 'income'),
(7, '$125 - $400 (5-16 dog overnights at $25/night)', 'income'),
(8, '$425 - $825 (17-33 dog overnights at $25/night)', 'income'),
(9, '$850 - $1,500 (34-60 dog overnights at $25/night)', 'income'),
(10, '$1,525 - $2,500 (61-100 dog overnights at $25/night)', 'income'),
(11, '$2,525 - $4,000', 'income'),
(12, '$4,025 or more', 'income');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ref_signups`
--

CREATE TABLE `tbl_ref_signups` (
  `id` int(11) NOT NULL,
  `mem_id` int(11) NOT NULL,
  `ref_mem_id` int(11) NOT NULL,
  `reward` tinyint(4) NOT NULL DEFAULT 0,
  `coupon_expire` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ref_signups`
--

INSERT INTO `tbl_ref_signups` (`id`, `mem_id`, `ref_mem_id`, `reward`, `coupon_expire`) VALUES
(1, 2, 11, 0, 0),
(2, 2, 12, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reports`
--

CREATE TABLE `tbl_reports` (
  `id` int(11) NOT NULL,
  `mem_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `reason` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_resources`
--

CREATE TABLE `tbl_resources` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `slug` varchar(600) NOT NULL,
  `detail` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_resources`
--

INSERT INTO `tbl_resources` (`id`, `cat_id`, `title`, `slug`, `detail`, `image`, `meta_description`, `meta_keywords`, `date`) VALUES
(1, 1, 'When Do Dogs Stop Growing?', 'when-do-dogs-stop-growing', '<p>Trainer Annie Grossman of School for the Dogs, one of NYC&rsquo;s most respected dog training centers, has plenty of wisdom to share with dog people. She covers common dog behavior questions and training tips in her weekly podcast. We&rsquo;ll be sharing some of those responses right here in a regular feature!</p>\r\n\r\n<p>Have a training question of your own? Check out Annie&rsquo;s blog and click on &ldquo;Ask Annie.&rdquo;</p>\r\n\r\n<h3>Help! I&rsquo;m Moving My Country Dog to the City</h3>\r\n\r\n<p>Dear Ava,</p>\r\n\r\n<p>Transitioning a new dog to the city can certainly be stressful, but I do believe that, if your dog can make it in New York City, like the song says, he can make it anywhere.</p>\r\n\r\n<p>In fact, some trainers refer to dogs who develop &ldquo;suburban dog syndrome&rdquo; when they&rsquo;re raised behind pPFSCbial white picket fences&mdash; these dogs can end up being easily spooked by novel things since their daily intake of new information is limited to what&rsquo;s within their yard.</p>\r\n\r\n<p>Even if they get a walk a day, it&rsquo;s unlikely a dog in a rural or suburban neighborhood will encounter more than a handful of new dogs, people, or stimuli in a given walk.</p>\r\n\r\n<p>Compare this to the dog who grows up in a metropolitan area and may be exposed to dozens of dogs, hundreds of people, and god-only-knows what kind of stimuli on any given walk. I mean, is that guy approaching us wearing a suit made out of plastic bags and soup cans? Why yes, yes he is.</p>\r\n\r\n<p>What&rsquo;s more, behaviors that might be tolerated on a leash when you have all the space in the world may not be safe or desired when you&rsquo;re on a city sidewalk.</p>\r\n\r\n<p>Fortunately, it&rsquo;s absolutely possible for your dog and you to learn to co-exist happily during what will be a new kind of joint outing. All you need is to focus on how you can socialize your dog to new things, and encourage the behaviors you want during walks.</p>\r\n\r\n<p>Here are some tips on gear and training protocol that will help you both as you transition to city life.</p>\r\n\r\n<h3>1. TOSS THAT RETRACTABLE LEASH</h3>\r\n\r\n<p>Retractable leashes, which can change length based on the click of a button, mean that the radius wherein a dog can go is not fixed.</p>\r\n\r\n<p>I don&rsquo;t mind using a retractable leash when I&rsquo;m in a wide open space with my dog, but for leash walking on a busy sidewalk, I think it defeats the major purpose of having your dog on a leash to begin with.</p>\r\n\r\n<p>You want to teach your dog that he generally needs to be close to you and that he&rsquo;s allowed with in a fixed radius controlled by the leash, not by his whim.</p>\r\n\r\n<p>Another problem with retractable leashes is that they usually have very thin cords, which can snap or twist around dog or human body parts. Google &ldquo;Retractable Leash Injuries&rdquo; if you dare.</p>\r\n\r\n<p>What&rsquo;s more, if dropped by mistake, their heavy handles can snap towards the dog, which may result in a big plastic handle hurling in the direction of your dog&rsquo;s face, which isn&rsquo;t something you want to risk when there is the possibility of your dog running into traffic.</p>\r\n\r\n<p>While a leash of this sort might be a nice way for a dog to have some autonomy on a rural trail, it isn&rsquo;t the best fit for city streets.</p>\r\n\r\n<h3>2. CARRY TREATS</h3>\r\n\r\n<p>Investing in a good treat pouch is a great way to make sure that you always have rewards on you (and don&rsquo;t end up with pockets full of grease and crumbs).</p>\r\n\r\n<p>Be liberal with your dispensing of treats&mdash;you want to reward your dog whenever he pays any attention to you, whenever the leash is loose, and whenever he encounters anything that might potentially scare him.</p>\r\n\r\n<p>Giving your dog a treat when he spots unusual things (or people or dogs) is a great way to help him forge positive associations with new things. Keep in mind that the treats aren&rsquo;t just for your dog&mdash;they&rsquo;re going to be for people too!</p>\r\n\r\n<p>When you have a dog, you&rsquo;re not just training him to behave properly on the street&mdash;you are training people to behave properly, too. Without some coaching from you, you&rsquo;re likely to encounter people who will do a lot of improper things when greeting dogs on the street.</p>\r\n\r\n<p>One way to avoid impolite interactions with people who want to say hello to your dog is to hand a treat to anyone that approaches and ask them to give it to your dog.</p>\r\n\r\n<p>Your dog shouldn&rsquo;t have to sit for it or do anything for that matter. The &ldquo;trick&rdquo; they&rsquo;re being rewarded for is just the behavior of co-existing with a new human.</p>\r\n\r\n<h3>3. CHOOSE YOUR WALKING PATH WISELY</h3>\r\n\r\n<p>There are a million things that could happen on a city street that could spook a dog, most of which you cannot control. The best you can do is try to guess what&rsquo;s going to be the quietest route.</p>\r\n\r\n<p>If your dog is small enough and you get stuck in a particularly crowded area, pick up your pup! There is no shame in carrying your dog out of a situation where he could get stepped on.</p>\r\n\r\n<p>Bonus points for walking on the building side of the sidewalk, rather than by the curb. If your dog does get loose, that extra two or three feet will mean a little bit more of a buffer area where you might be able to grab him before he enters traffic.</p>\r\n', '140f6969d5213fd0ece03148e62e461e_1579610138_6524.jpg', NULL, NULL, '2020-01-21 17:35:38'),
(2, 1, 'Your Puppy’s Emotional Development Month by Month', 'your-puppys-emotional-development-month-by-month', '<p>Trainer Annie Grossman of School for the Dogs, one of NYC&rsquo;s most respected dog training centers, has plenty of wisdom to share with dog people. She covers common dog behavior questions and training tips in her weekly podcast. We&rsquo;ll be sharing some of those responses right here in a regular feature!</p>\r\n\r\n<p>Have a training question of your own? Check out Annie&rsquo;s blog and click on &ldquo;Ask Annie.&rdquo;</p>\r\n\r\n<h3>Help! I&rsquo;m Moving My Country Dog to the City</h3>\r\n\r\n<p>Dear Ava,</p>\r\n\r\n<p>Transitioning a new dog to the city can certainly be stressful, but I do believe that, if your dog can make it in New York City, like the song says, he can make it anywhere.</p>\r\n\r\n<p>In fact, some trainers refer to dogs who develop &ldquo;suburban dog syndrome&rdquo; when they&rsquo;re raised behind pPFSCbial white picket fences&mdash; these dogs can end up being easily spooked by novel things since their daily intake of new information is limited to what&rsquo;s within their yard.</p>\r\n\r\n<p>Even if they get a walk a day, it&rsquo;s unlikely a dog in a rural or suburban neighborhood will encounter more than a handful of new dogs, people, or stimuli in a given walk.</p>\r\n\r\n<p>Compare this to the dog who grows up in a metropolitan area and may be exposed to dozens of dogs, hundreds of people, and god-only-knows what kind of stimuli on any given walk. I mean, is that guy approaching us wearing a suit made out of plastic bags and soup cans? Why yes, yes he is.</p>\r\n\r\n<p>What&rsquo;s more, behaviors that might be tolerated on a leash when you have all the space in the world may not be safe or desired when you&rsquo;re on a city sidewalk.</p>\r\n\r\n<p>Fortunately, it&rsquo;s absolutely possible for your dog and you to learn to co-exist happily during what will be a new kind of joint outing. All you need is to focus on how you can socialize your dog to new things, and encourage the behaviors you want during walks.</p>\r\n\r\n<p>Here are some tips on gear and training protocol that will help you both as you transition to city life.</p>\r\n\r\n<h3>1. TOSS THAT RETRACTABLE LEASH</h3>\r\n\r\n<p>Retractable leashes, which can change length based on the click of a button, mean that the radius wherein a dog can go is not fixed.</p>\r\n\r\n<p>I don&rsquo;t mind using a retractable leash when I&rsquo;m in a wide open space with my dog, but for leash walking on a busy sidewalk, I think it defeats the major purpose of having your dog on a leash to begin with.</p>\r\n\r\n<p>You want to teach your dog that he generally needs to be close to you and that he&rsquo;s allowed with in a fixed radius controlled by the leash, not by his whim.</p>\r\n\r\n<p>Another problem with retractable leashes is that they usually have very thin cords, which can snap or twist around dog or human body parts. Google &ldquo;Retractable Leash Injuries&rdquo; if you dare.</p>\r\n\r\n<p>What&rsquo;s more, if dropped by mistake, their heavy handles can snap towards the dog, which may result in a big plastic handle hurling in the direction of your dog&rsquo;s face, which isn&rsquo;t something you want to risk when there is the possibility of your dog running into traffic.</p>\r\n\r\n<p>While a leash of this sort might be a nice way for a dog to have some autonomy on a rural trail, it isn&rsquo;t the best fit for city streets.</p>\r\n\r\n<h3>2. CARRY TREATS</h3>\r\n\r\n<p>Investing in a good treat pouch is a great way to make sure that you always have rewards on you (and don&rsquo;t end up with pockets full of grease and crumbs).</p>\r\n\r\n<p>Be liberal with your dispensing of treats&mdash;you want to reward your dog whenever he pays any attention to you, whenever the leash is loose, and whenever he encounters anything that might potentially scare him.</p>\r\n\r\n<p>Giving your dog a treat when he spots unusual things (or people or dogs) is a great way to help him forge positive associations with new things. Keep in mind that the treats aren&rsquo;t just for your dog&mdash;they&rsquo;re going to be for people too!</p>\r\n\r\n<p>When you have a dog, you&rsquo;re not just training him to behave properly on the street&mdash;you are training people to behave properly, too. Without some coaching from you, you&rsquo;re likely to encounter people who will do a lot of improper things when greeting dogs on the street.</p>\r\n\r\n<p>One way to avoid impolite interactions with people who want to say hello to your dog is to hand a treat to anyone that approaches and ask them to give it to your dog.</p>\r\n\r\n<p>Your dog shouldn&rsquo;t have to sit for it or do anything for that matter. The &ldquo;trick&rdquo; they&rsquo;re being rewarded for is just the behavior of co-existing with a new human.</p>\r\n\r\n<h3>3. CHOOSE YOUR WALKING PATH WISELY</h3>\r\n\r\n<p>There are a million things that could happen on a city street that could spook a dog, most of which you cannot control. The best you can do is try to guess what&rsquo;s going to be the quietest route.</p>\r\n\r\n<p>If your dog is small enough and you get stuck in a particularly crowded area, pick up your pup! There is no shame in carrying your dog out of a situation where he could get stepped on.</p>\r\n\r\n<p>Bonus points for walking on the building side of the sidewalk, rather than by the curb. If your dog does get loose, that extra two or three feet will mean a little bit more of a buffer area where you might be able to grab him before he enters traffic.</p>\r\n', '5f93f983524def3dca464469d2cf9f3e_1579610748_7558.jpg', NULL, NULL, '2020-01-21 17:45:48'),
(3, 1, 'Does My Dog Think I’m a Dog?', 'does-my-dog-think-im-a-dog', '<p>Trainer Annie Grossman of School for the Dogs, one of NYC&rsquo;s most respected dog training centers, has plenty of wisdom to share with dog people. She covers common dog behavior questions and training tips in her weekly podcast. We&rsquo;ll be sharing some of those responses right here in a regular feature!</p>\r\n\r\n<p>Have a training question of your own? Check out Annie&rsquo;s blog and click on &ldquo;Ask Annie.&rdquo;</p>\r\n\r\n<h3>Help! I&rsquo;m Moving My Country Dog to the City</h3>\r\n\r\n<p>Dear Ava,</p>\r\n\r\n<p>Transitioning a new dog to the city can certainly be stressful, but I do believe that, if your dog can make it in New York City, like the song says, he can make it anywhere.</p>\r\n\r\n<p>In fact, some trainers refer to dogs who develop &ldquo;suburban dog syndrome&rdquo; when they&rsquo;re raised behind pPFSCbial white picket fences&mdash; these dogs can end up being easily spooked by novel things since their daily intake of new information is limited to what&rsquo;s within their yard.</p>\r\n\r\n<p>Even if they get a walk a day, it&rsquo;s unlikely a dog in a rural or suburban neighborhood will encounter more than a handful of new dogs, people, or stimuli in a given walk.</p>\r\n\r\n<p>Compare this to the dog who grows up in a metropolitan area and may be exposed to dozens of dogs, hundreds of people, and god-only-knows what kind of stimuli on any given walk. I mean, is that guy approaching us wearing a suit made out of plastic bags and soup cans? Why yes, yes he is.</p>\r\n\r\n<p>What&rsquo;s more, behaviors that might be tolerated on a leash when you have all the space in the world may not be safe or desired when you&rsquo;re on a city sidewalk.</p>\r\n\r\n<p>Fortunately, it&rsquo;s absolutely possible for your dog and you to learn to co-exist happily during what will be a new kind of joint outing. All you need is to focus on how you can socialize your dog to new things, and encourage the behaviors you want during walks.</p>\r\n\r\n<p>Here are some tips on gear and training protocol that will help you both as you transition to city life.</p>\r\n\r\n<h3>1. TOSS THAT RETRACTABLE LEASH</h3>\r\n\r\n<p>Retractable leashes, which can change length based on the click of a button, mean that the radius wherein a dog can go is not fixed.</p>\r\n\r\n<p>I don&rsquo;t mind using a retractable leash when I&rsquo;m in a wide open space with my dog, but for leash walking on a busy sidewalk, I think it defeats the major purpose of having your dog on a leash to begin with.</p>\r\n\r\n<p>You want to teach your dog that he generally needs to be close to you and that he&rsquo;s allowed with in a fixed radius controlled by the leash, not by his whim.</p>\r\n\r\n<p>Another problem with retractable leashes is that they usually have very thin cords, which can snap or twist around dog or human body parts. Google &ldquo;Retractable Leash Injuries&rdquo; if you dare.</p>\r\n\r\n<p>What&rsquo;s more, if dropped by mistake, their heavy handles can snap towards the dog, which may result in a big plastic handle hurling in the direction of your dog&rsquo;s face, which isn&rsquo;t something you want to risk when there is the possibility of your dog running into traffic.</p>\r\n\r\n<p>While a leash of this sort might be a nice way for a dog to have some autonomy on a rural trail, it isn&rsquo;t the best fit for city streets.</p>\r\n\r\n<h3>2. CARRY TREATS</h3>\r\n\r\n<p>Investing in a good treat pouch is a great way to make sure that you always have rewards on you (and don&rsquo;t end up with pockets full of grease and crumbs).</p>\r\n\r\n<p>Be liberal with your dispensing of treats&mdash;you want to reward your dog whenever he pays any attention to you, whenever the leash is loose, and whenever he encounters anything that might potentially scare him.</p>\r\n\r\n<p>Giving your dog a treat when he spots unusual things (or people or dogs) is a great way to help him forge positive associations with new things. Keep in mind that the treats aren&rsquo;t just for your dog&mdash;they&rsquo;re going to be for people too!</p>\r\n\r\n<p>When you have a dog, you&rsquo;re not just training him to behave properly on the street&mdash;you are training people to behave properly, too. Without some coaching from you, you&rsquo;re likely to encounter people who will do a lot of improper things when greeting dogs on the street.</p>\r\n\r\n<p>One way to avoid impolite interactions with people who want to say hello to your dog is to hand a treat to anyone that approaches and ask them to give it to your dog.</p>\r\n\r\n<p>Your dog shouldn&rsquo;t have to sit for it or do anything for that matter. The &ldquo;trick&rdquo; they&rsquo;re being rewarded for is just the behavior of co-existing with a new human.</p>\r\n\r\n<h3>3. CHOOSE YOUR WALKING PATH WISELY</h3>\r\n\r\n<p>There are a million things that could happen on a city street that could spook a dog, most of which you cannot control. The best you can do is try to guess what&rsquo;s going to be the quietest route.</p>\r\n\r\n<p>If your dog is small enough and you get stuck in a particularly crowded area, pick up your pup! There is no shame in carrying your dog out of a situation where he could get stepped on.</p>\r\n\r\n<p>Bonus points for walking on the building side of the sidewalk, rather than by the curb. If your dog does get loose, that extra two or three feet will mean a little bit more of a buffer area where you might be able to grab him before he enters traffic.</p>\r\n', '7e7757b1e12abcb736ab9a754ffb617a_1579610766_7084.jpg', NULL, NULL, '2020-01-21 17:46:06'),
(4, 1, 'The 105 Most Popular Rottweiler Names of 2018', 'the-105-most-popular-rottweiler-names-of-2018', '<h2><span style=\"font-size:13px\">Transitioning a new dog to the city can certainly be stressful, but I do believe that, if your dog can make it in New York City, like the song says, he can make it anywhere.</span></h2>\r\n\r\n<p>In fact, some trainers refer to dogs who develop &ldquo;suburban dog syndrome&rdquo; when they&rsquo;re raised behind pPFSCbial white picket fences&mdash; these dogs can end up being easily spooked by novel things since their daily intake of new information is limited to what&rsquo;s within their yard.</p>\r\n\r\n<p>Even if they get a walk a day, it&rsquo;s unlikely a dog in a rural or suburban neighborhood will encounter more than a handful of new dogs, people, or stimuli in a given walk.</p>\r\n\r\n<p>Compare this to the dog who grows up in a metropolitan area and may be exposed to dozens of dogs, hundreds of people, and god-only-knows what kind of stimuli on any given walk. I mean, is that guy approaching us wearing a suit made out of plastic bags and soup cans? Why yes, yes he is.</p>\r\n\r\n<p>What&rsquo;s more, behaviors that might be tolerated on a leash when you have all the space in the world may not be safe or desired when you&rsquo;re on a city sidewalk.</p>\r\n\r\n<p>Fortunately, it&rsquo;s absolutely possible for your dog and you to learn to co-exist happily during what will be a new kind of joint outing. All you need is to focus on how you can socialize your dog to new things, and encourage the behaviors you want during walks.</p>\r\n\r\n<p>Here are some tips on gear and training protocol that will help you both as you transition to city life.</p>\r\n\r\n<h3>1. TOSS THAT RETRACTABLE LEASH</h3>\r\n\r\n<p>Retractable leashes, which can change length based on the click of a button, mean that the radius wherein a dog can go is not fixed.</p>\r\n\r\n<p>I don&rsquo;t mind using a retractable leash when I&rsquo;m in a wide open space with my dog, but for leash walking on a busy sidewalk, I think it defeats the major purpose of having your dog on a leash to begin with.</p>\r\n\r\n<p>You want to teach your dog that he generally needs to be close to you and that he&rsquo;s allowed with in a fixed radius controlled by the leash, not by his whim.</p>\r\n\r\n<p>Another problem with retractable leashes is that they usually have very thin cords, which can snap or twist around dog or human body parts. Google &ldquo;Retractable Leash Injuries&rdquo; if you dare.</p>\r\n\r\n<p>What&rsquo;s more, if dropped by mistake, their heavy handles can snap towards the dog, which may result in a big plastic handle hurling in the direction of your dog&rsquo;s face, which isn&rsquo;t something you want to risk when there is the possibility of your dog running into traffic.</p>\r\n\r\n<p>While a leash of this sort might be a nice way for a dog to have some autonomy on a rural trail, it isn&rsquo;t the best fit for city streets.</p>\r\n\r\n<h3>2. CARRY TREATS</h3>\r\n\r\n<p>Investing in a good treat pouch is a great way to make sure that you always have rewards on you (and don&rsquo;t end up with pockets full of grease and crumbs).</p>\r\n\r\n<p>Be liberal with your dispensing of treats&mdash;you want to reward your dog whenever he pays any attention to you, whenever the leash is loose, and whenever he encounters anything that might potentially scare him.</p>\r\n\r\n<p>Giving your dog a treat when he spots unusual things (or people or dogs) is a great way to help him forge positive associations with new things. Keep in mind that the treats aren&rsquo;t just for your dog&mdash;they&rsquo;re going to be for people too!</p>\r\n\r\n<p>When you have a dog, you&rsquo;re not just training him to behave properly on the street&mdash;you are training people to behave properly, too. Without some coaching from you, you&rsquo;re likely to encounter people who will do a lot of improper things when greeting dogs on the street.</p>\r\n\r\n<p>One way to avoid impolite interactions with people who want to say hello to your dog is to hand a treat to anyone that approaches and ask them to give it to your dog.</p>\r\n\r\n<p>Your dog shouldn&rsquo;t have to sit for it or do anything for that matter. The &ldquo;trick&rdquo; they&rsquo;re being rewarded for is just the behavior of co-existing with a new human.</p>\r\n\r\n<h3>3. CHOOSE YOUR WALKING PATH WISELY</h3>\r\n\r\n<p>There are a million things that could happen on a city street that could spook a dog, most of which you cannot control. The best you can do is try to guess what&rsquo;s going to be the quietest route.</p>\r\n\r\n<p>If your dog is small enough and you get stuck in a particularly crowded area, pick up your pup! There is no shame in carrying your dog out of a situation where he could get stepped on.</p>\r\n\r\n<p>Bonus points for walking on the building side of the sidewalk, rather than by the curb. If your dog does get loose, that extra two or three feet will mean a little bit more of a buffer area where you might be able to grab him before he enters traffic.</p>\r\n', '060ad92489947d410d897474079c1477_1579610806_9914.jpg', NULL, NULL, '2020-01-21 17:46:46'),
(5, 2, 'The Top 7 Affordable Dog Fencing Options for 2019', 'the-top-7-affordable-dog-fencing-options-for-2019', '<h2><span style=\"font-size:13px\">Trainer Annie Grossman of School for the Dogs, one of NYC&rsquo;s most respected dog training centers, has plenty of wisdom to share with dog people. She covers common dog behavior questions and training tips in her weekly podcast. We&rsquo;ll be sharing some of those responses right here in a regular feature!</span></h2>\r\n\r\n<p>Have a training question of your own? Check out Annie&rsquo;s blog and click on &ldquo;Ask Annie.&rdquo;</p>\r\n\r\n<h3>Help! I&rsquo;m Moving My Country Dog to the City</h3>\r\n\r\n<p>Dear Ava,</p>\r\n\r\n<p>Transitioning a new dog to the city can certainly be stressful, but I do believe that, if your dog can make it in New York City, like the song says, he can make it anywhere.</p>\r\n\r\n<p>In fact, some trainers refer to dogs who develop &ldquo;suburban dog syndrome&rdquo; when they&rsquo;re raised behind pPFSCbial white picket fences&mdash; these dogs can end up being easily spooked by novel things since their daily intake of new information is limited to what&rsquo;s within their yard.</p>\r\n\r\n<p>Even if they get a walk a day, it&rsquo;s unlikely a dog in a rural or suburban neighborhood will encounter more than a handful of new dogs, people, or stimuli in a given walk.</p>\r\n\r\n<p>Compare this to the dog who grows up in a metropolitan area and may be exposed to dozens of dogs, hundreds of people, and god-only-knows what kind of stimuli on any given walk. I mean, is that guy approaching us wearing a suit made out of plastic bags and soup cans? Why yes, yes he is.</p>\r\n\r\n<p>What&rsquo;s more, behaviors that might be tolerated on a leash when you have all the space in the world may not be safe or desired when you&rsquo;re on a city sidewalk.</p>\r\n\r\n<p>Fortunately, it&rsquo;s absolutely possible for your dog and you to learn to co-exist happily during what will be a new kind of joint outing. All you need is to focus on how you can socialize your dog to new things, and encourage the behaviors you want during walks.</p>\r\n\r\n<p>Here are some tips on gear and training protocol that will help you both as you transition to city life.</p>\r\n\r\n<h3>1. TOSS THAT RETRACTABLE LEASH</h3>\r\n\r\n<p>Retractable leashes, which can change length based on the click of a button, mean that the radius wherein a dog can go is not fixed.</p>\r\n\r\n<p>I don&rsquo;t mind using a retractable leash when I&rsquo;m in a wide open space with my dog, but for leash walking on a busy sidewalk, I think it defeats the major purpose of having your dog on a leash to begin with.</p>\r\n\r\n<p>You want to teach your dog that he generally needs to be close to you and that he&rsquo;s allowed with in a fixed radius controlled by the leash, not by his whim.</p>\r\n\r\n<p>Another problem with retractable leashes is that they usually have very thin cords, which can snap or twist around dog or human body parts. Google &ldquo;Retractable Leash Injuries&rdquo; if you dare.</p>\r\n\r\n<p>What&rsquo;s more, if dropped by mistake, their heavy handles can snap towards the dog, which may result in a big plastic handle hurling in the direction of your dog&rsquo;s face, which isn&rsquo;t something you want to risk when there is the possibility of your dog running into traffic.</p>\r\n\r\n<p>While a leash of this sort might be a nice way for a dog to have some autonomy on a rural trail, it isn&rsquo;t the best fit for city streets.</p>\r\n\r\n<h3>2. CARRY TREATS</h3>\r\n\r\n<p>Investing in a good treat pouch is a great way to make sure that you always have rewards on you (and don&rsquo;t end up with pockets full of grease and crumbs).</p>\r\n\r\n<p>Be liberal with your dispensing of treats&mdash;you want to reward your dog whenever he pays any attention to you, whenever the leash is loose, and whenever he encounters anything that might potentially scare him.</p>\r\n\r\n<p>Giving your dog a treat when he spots unusual things (or people or dogs) is a great way to help him forge positive associations with new things. Keep in mind that the treats aren&rsquo;t just for your dog&mdash;they&rsquo;re going to be for people too!</p>\r\n\r\n<p>When you have a dog, you&rsquo;re not just training him to behave properly on the street&mdash;you are training people to behave properly, too. Without some coaching from you, you&rsquo;re likely to encounter people who will do a lot of improper things when greeting dogs on the street.</p>\r\n\r\n<p>One way to avoid impolite interactions with people who want to say hello to your dog is to hand a treat to anyone that approaches and ask them to give it to your dog.</p>\r\n\r\n<p>Your dog shouldn&rsquo;t have to sit for it or do anything for that matter. The &ldquo;trick&rdquo; they&rsquo;re being rewarded for is just the behavior of co-existing with a new human.</p>\r\n\r\n<h3>3. CHOOSE YOUR WALKING PATH WISELY</h3>\r\n\r\n<p>There are a million things that could happen on a city street that could spook a dog, most of which you cannot control. The best you can do is try to guess what&rsquo;s going to be the quietest route.</p>\r\n\r\n<p>If your dog is small enough and you get stuck in a particularly crowded area, pick up your pup! There is no shame in carrying your dog out of a situation where he could get stepped on.</p>\r\n\r\n<p>Bonus points for walking on the building side of the sidewalk, rather than by the curb. If your dog does get loose, that extra two or three feet will mean a little bit more of a buffer area where you might be able to grab him before he enters traffic.</p>\r\n', 'addfa9b7e234254d26e9c7f2af1005cb_1579610845_1304.jpg', NULL, NULL, '2020-01-21 17:47:25'),
(6, 2, 'How Can I Help my Dog Adjust to City Life?', 'how-can-i-help-my-dog-adjust-to-city-life', '<h2><span style=\"font-size:13px\">Trainer Annie Grossman of School for the Dogs, one of NYC&rsquo;s most respected dog training centers, has plenty of wisdom to share with dog people. She covers common dog behavior questions and training tips in her weekly podcast. We&rsquo;ll be sharing some of those responses right here in a regular feature!</span></h2>\r\n\r\n<p>Have a training question of your own? Check out Annie&rsquo;s blog and click on &ldquo;Ask Annie.&rdquo;</p>\r\n\r\n<h3>Help! I&rsquo;m Moving My Country Dog to the City</h3>\r\n\r\n<p>Dear Ava,</p>\r\n\r\n<p>Transitioning a new dog to the city can certainly be stressful, but I do believe that, if your dog can make it in New York City, like the song says, he can make it anywhere.</p>\r\n\r\n<p>In fact, some trainers refer to dogs who develop &ldquo;suburban dog syndrome&rdquo; when they&rsquo;re raised behind pPFSCbial white picket fences&mdash; these dogs can end up being easily spooked by novel things since their daily intake of new information is limited to what&rsquo;s within their yard.</p>\r\n\r\n<p>Even if they get a walk a day, it&rsquo;s unlikely a dog in a rural or suburban neighborhood will encounter more than a handful of new dogs, people, or stimuli in a given walk.</p>\r\n\r\n<p>Compare this to the dog who grows up in a metropolitan area and may be exposed to dozens of dogs, hundreds of people, and god-only-knows what kind of stimuli on any given walk. I mean, is that guy approaching us wearing a suit made out of plastic bags and soup cans? Why yes, yes he is.</p>\r\n\r\n<p>What&rsquo;s more, behaviors that might be tolerated on a leash when you have all the space in the world may not be safe or desired when you&rsquo;re on a city sidewalk.</p>\r\n\r\n<p>Fortunately, it&rsquo;s absolutely possible for your dog and you to learn to co-exist happily during what will be a new kind of joint outing. All you need is to focus on how you can socialize your dog to new things, and encourage the behaviors you want during walks.</p>\r\n\r\n<p>Here are some tips on gear and training protocol that will help you both as you transition to city life.</p>\r\n\r\n<h3>1. TOSS THAT RETRACTABLE LEASH</h3>\r\n\r\n<p>Retractable leashes, which can change length based on the click of a button, mean that the radius wherein a dog can go is not fixed.</p>\r\n\r\n<p>I don&rsquo;t mind using a retractable leash when I&rsquo;m in a wide open space with my dog, but for leash walking on a busy sidewalk, I think it defeats the major purpose of having your dog on a leash to begin with.</p>\r\n\r\n<p>You want to teach your dog that he generally needs to be close to you and that he&rsquo;s allowed with in a fixed radius controlled by the leash, not by his whim.</p>\r\n\r\n<p>Another problem with retractable leashes is that they usually have very thin cords, which can snap or twist around dog or human body parts. Google &ldquo;Retractable Leash Injuries&rdquo; if you dare.</p>\r\n\r\n<p>What&rsquo;s more, if dropped by mistake, their heavy handles can snap towards the dog, which may result in a big plastic handle hurling in the direction of your dog&rsquo;s face, which isn&rsquo;t something you want to risk when there is the possibility of your dog running into traffic.</p>\r\n\r\n<p>While a leash of this sort might be a nice way for a dog to have some autonomy on a rural trail, it isn&rsquo;t the best fit for city streets.</p>\r\n\r\n<h3>2. CARRY TREATS</h3>\r\n\r\n<p>Investing in a good treat pouch is a great way to make sure that you always have rewards on you (and don&rsquo;t end up with pockets full of grease and crumbs).</p>\r\n\r\n<p>Be liberal with your dispensing of treats&mdash;you want to reward your dog whenever he pays any attention to you, whenever the leash is loose, and whenever he encounters anything that might potentially scare him.</p>\r\n\r\n<p>Giving your dog a treat when he spots unusual things (or people or dogs) is a great way to help him forge positive associations with new things. Keep in mind that the treats aren&rsquo;t just for your dog&mdash;they&rsquo;re going to be for people too!</p>\r\n\r\n<p>When you have a dog, you&rsquo;re not just training him to behave properly on the street&mdash;you are training people to behave properly, too. Without some coaching from you, you&rsquo;re likely to encounter people who will do a lot of improper things when greeting dogs on the street.</p>\r\n\r\n<p>One way to avoid impolite interactions with people who want to say hello to your dog is to hand a treat to anyone that approaches and ask them to give it to your dog.</p>\r\n\r\n<p>Your dog shouldn&rsquo;t have to sit for it or do anything for that matter. The &ldquo;trick&rdquo; they&rsquo;re being rewarded for is just the behavior of co-existing with a new human.</p>\r\n\r\n<h3>3. CHOOSE YOUR WALKING PATH WISELY</h3>\r\n\r\n<p>There are a million things that could happen on a city street that could spook a dog, most of which you cannot control. The best you can do is try to guess what&rsquo;s going to be the quietest route.</p>\r\n\r\n<p>If your dog is small enough and you get stuck in a particularly crowded area, pick up your pup! There is no shame in carrying your dog out of a situation where he could get stepped on.</p>\r\n\r\n<p>Bonus points for walking on the building side of the sidewalk, rather than by the curb. If your dog does get loose, that extra two or three feet will mean a little bit more of a buffer area where you might be able to grab him before he enters traffic.</p>\r\n', '335f5352088d7d9bf74191e006d8e24c_1579610862_9295.jpg', NULL, NULL, '2020-01-21 17:47:42'),
(7, 2, 'Healthy Paws Pet Insurance Reveals the Most Expensive', 'healthy-paws-pet-insurance-reveals-the-most-expensive', '<h2><span style=\"font-size:13px\">Trainer Annie Grossman of School for the Dogs, one of NYC&rsquo;s most respected dog training centers, has plenty of wisdom to share with dog people. She covers common dog behavior questions and training tips in her weekly podcast. We&rsquo;ll be sharing some of those responses right here in a regular feature!</span></h2>\r\n\r\n<p>Have a training question of your own? Check out Annie&rsquo;s blog and click on &ldquo;Ask Annie.&rdquo;</p>\r\n\r\n<h3>Help! I&rsquo;m Moving My Country Dog to the City</h3>\r\n\r\n<p>Dear Ava,</p>\r\n\r\n<p>Transitioning a new dog to the city can certainly be stressful, but I do believe that, if your dog can make it in New York City, like the song says, he can make it anywhere.</p>\r\n\r\n<p>In fact, some trainers refer to dogs who develop &ldquo;suburban dog syndrome&rdquo; when they&rsquo;re raised behind pPFSCbial white picket fences&mdash; these dogs can end up being easily spooked by novel things since their daily intake of new information is limited to what&rsquo;s within their yard.</p>\r\n\r\n<p>Even if they get a walk a day, it&rsquo;s unlikely a dog in a rural or suburban neighborhood will encounter more than a handful of new dogs, people, or stimuli in a given walk.</p>\r\n\r\n<p>Compare this to the dog who grows up in a metropolitan area and may be exposed to dozens of dogs, hundreds of people, and god-only-knows what kind of stimuli on any given walk. I mean, is that guy approaching us wearing a suit made out of plastic bags and soup cans? Why yes, yes he is.</p>\r\n\r\n<p>What&rsquo;s more, behaviors that might be tolerated on a leash when you have all the space in the world may not be safe or desired when you&rsquo;re on a city sidewalk.</p>\r\n\r\n<p>Fortunately, it&rsquo;s absolutely possible for your dog and you to learn to co-exist happily during what will be a new kind of joint outing. All you need is to focus on how you can socialize your dog to new things, and encourage the behaviors you want during walks.</p>\r\n\r\n<p>Here are some tips on gear and training protocol that will help you both as you transition to city life.</p>\r\n\r\n<h3>1. TOSS THAT RETRACTABLE LEASH</h3>\r\n\r\n<p>Retractable leashes, which can change length based on the click of a button, mean that the radius wherein a dog can go is not fixed.</p>\r\n\r\n<p>I don&rsquo;t mind using a retractable leash when I&rsquo;m in a wide open space with my dog, but for leash walking on a busy sidewalk, I think it defeats the major purpose of having your dog on a leash to begin with.</p>\r\n\r\n<p>You want to teach your dog that he generally needs to be close to you and that he&rsquo;s allowed with in a fixed radius controlled by the leash, not by his whim.</p>\r\n\r\n<p>Another problem with retractable leashes is that they usually have very thin cords, which can snap or twist around dog or human body parts. Google &ldquo;Retractable Leash Injuries&rdquo; if you dare.</p>\r\n\r\n<p>What&rsquo;s more, if dropped by mistake, their heavy handles can snap towards the dog, which may result in a big plastic handle hurling in the direction of your dog&rsquo;s face, which isn&rsquo;t something you want to risk when there is the possibility of your dog running into traffic.</p>\r\n\r\n<p>While a leash of this sort might be a nice way for a dog to have some autonomy on a rural trail, it isn&rsquo;t the best fit for city streets.</p>\r\n\r\n<h3>2. CARRY TREATS</h3>\r\n\r\n<p>Investing in a good treat pouch is a great way to make sure that you always have rewards on you (and don&rsquo;t end up with pockets full of grease and crumbs).</p>\r\n\r\n<p>Be liberal with your dispensing of treats&mdash;you want to reward your dog whenever he pays any attention to you, whenever the leash is loose, and whenever he encounters anything that might potentially scare him.</p>\r\n\r\n<p>Giving your dog a treat when he spots unusual things (or people or dogs) is a great way to help him forge positive associations with new things. Keep in mind that the treats aren&rsquo;t just for your dog&mdash;they&rsquo;re going to be for people too!</p>\r\n\r\n<p>When you have a dog, you&rsquo;re not just training him to behave properly on the street&mdash;you are training people to behave properly, too. Without some coaching from you, you&rsquo;re likely to encounter people who will do a lot of improper things when greeting dogs on the street.</p>\r\n\r\n<p>One way to avoid impolite interactions with people who want to say hello to your dog is to hand a treat to anyone that approaches and ask them to give it to your dog.</p>\r\n\r\n<p>Your dog shouldn&rsquo;t have to sit for it or do anything for that matter. The &ldquo;trick&rdquo; they&rsquo;re being rewarded for is just the behavior of co-existing with a new human.</p>\r\n\r\n<h3>3. CHOOSE YOUR WALKING PATH WISELY</h3>\r\n\r\n<p>There are a million things that could happen on a city street that could spook a dog, most of which you cannot control. The best you can do is try to guess what&rsquo;s going to be the quietest route.</p>\r\n\r\n<p>If your dog is small enough and you get stuck in a particularly crowded area, pick up your pup! There is no shame in carrying your dog out of a situation where he could get stepped on.</p>\r\n\r\n<p>Bonus points for walking on the building side of the sidewalk, rather than by the curb. If your dog does get loose, that extra two or three feet will mean a little bit more of a buffer area where you might be able to grab him before he enters traffic.</p>\r\n', 'e2c0be24560d78c5e599c2a9c9d0bbd2_1579610891_3945.jpg', NULL, NULL, '2020-01-21 17:48:11'),
(8, 2, 'The 116 Most Popular French Bulldog Names of 2018', 'the-116-most-popular-french-bulldog-names-of-2018', '<h2><span style=\"font-size:13px\">Trainer Annie Grossman of School for the Dogs, one of NYC&rsquo;s most respected dog training centers, has plenty of wisdom to share with dog people. She covers common dog behavior questions and training tips in her weekly podcast. We&rsquo;ll be sharing some of those responses right here in a regular feature!</span></h2>\r\n\r\n<p>Have a training question of your own? Check out Annie&rsquo;s blog and click on &ldquo;Ask Annie.&rdquo;</p>\r\n\r\n<h3>Help! I&rsquo;m Moving My Country Dog to the City</h3>\r\n\r\n<p>Dear Ava,</p>\r\n\r\n<p>Transitioning a new dog to the city can certainly be stressful, but I do believe that, if your dog can make it in New York City, like the song says, he can make it anywhere.</p>\r\n\r\n<p>In fact, some trainers refer to dogs who develop &ldquo;suburban dog syndrome&rdquo; when they&rsquo;re raised behind pPFSCbial white picket fences&mdash; these dogs can end up being easily spooked by novel things since their daily intake of new information is limited to what&rsquo;s within their yard.</p>\r\n\r\n<p>Even if they get a walk a day, it&rsquo;s unlikely a dog in a rural or suburban neighborhood will encounter more than a handful of new dogs, people, or stimuli in a given walk.</p>\r\n\r\n<p>Compare this to the dog who grows up in a metropolitan area and may be exposed to dozens of dogs, hundreds of people, and god-only-knows what kind of stimuli on any given walk. I mean, is that guy approaching us wearing a suit made out of plastic bags and soup cans? Why yes, yes he is.</p>\r\n\r\n<p>What&rsquo;s more, behaviors that might be tolerated on a leash when you have all the space in the world may not be safe or desired when you&rsquo;re on a city sidewalk.</p>\r\n\r\n<p>Fortunately, it&rsquo;s absolutely possible for your dog and you to learn to co-exist happily during what will be a new kind of joint outing. All you need is to focus on how you can socialize your dog to new things, and encourage the behaviors you want during walks.</p>\r\n\r\n<p>Here are some tips on gear and training protocol that will help you both as you transition to city life.</p>\r\n\r\n<h3>1. TOSS THAT RETRACTABLE LEASH</h3>\r\n\r\n<p>Retractable leashes, which can change length based on the click of a button, mean that the radius wherein a dog can go is not fixed.</p>\r\n\r\n<p>I don&rsquo;t mind using a retractable leash when I&rsquo;m in a wide open space with my dog, but for leash walking on a busy sidewalk, I think it defeats the major purpose of having your dog on a leash to begin with.</p>\r\n\r\n<p>You want to teach your dog that he generally needs to be close to you and that he&rsquo;s allowed with in a fixed radius controlled by the leash, not by his whim.</p>\r\n\r\n<p>Another problem with retractable leashes is that they usually have very thin cords, which can snap or twist around dog or human body parts. Google &ldquo;Retractable Leash Injuries&rdquo; if you dare.</p>\r\n\r\n<p>What&rsquo;s more, if dropped by mistake, their heavy handles can snap towards the dog, which may result in a big plastic handle hurling in the direction of your dog&rsquo;s face, which isn&rsquo;t something you want to risk when there is the possibility of your dog running into traffic.</p>\r\n\r\n<p>While a leash of this sort might be a nice way for a dog to have some autonomy on a rural trail, it isn&rsquo;t the best fit for city streets.</p>\r\n\r\n<h3>2. CARRY TREATS</h3>\r\n\r\n<p>Investing in a good treat pouch is a great way to make sure that you always have rewards on you (and don&rsquo;t end up with pockets full of grease and crumbs).</p>\r\n\r\n<p>Be liberal with your dispensing of treats&mdash;you want to reward your dog whenever he pays any attention to you, whenever the leash is loose, and whenever he encounters anything that might potentially scare him.</p>\r\n\r\n<p>Giving your dog a treat when he spots unusual things (or people or dogs) is a great way to help him forge positive associations with new things. Keep in mind that the treats aren&rsquo;t just for your dog&mdash;they&rsquo;re going to be for people too!</p>\r\n\r\n<p>When you have a dog, you&rsquo;re not just training him to behave properly on the street&mdash;you are training people to behave properly, too. Without some coaching from you, you&rsquo;re likely to encounter people who will do a lot of improper things when greeting dogs on the street.</p>\r\n\r\n<p>One way to avoid impolite interactions with people who want to say hello to your dog is to hand a treat to anyone that approaches and ask them to give it to your dog.</p>\r\n\r\n<p>Your dog shouldn&rsquo;t have to sit for it or do anything for that matter. The &ldquo;trick&rdquo; they&rsquo;re being rewarded for is just the behavior of co-existing with a new human.</p>\r\n\r\n<h3>3. CHOOSE YOUR WALKING PATH WISELY</h3>\r\n\r\n<p>There are a million things that could happen on a city street that could spook a dog, most of which you cannot control. The best you can do is try to guess what&rsquo;s going to be the quietest route.</p>\r\n\r\n<p>If your dog is small enough and you get stuck in a particularly crowded area, pick up your pup! There is no shame in carrying your dog out of a situation where he could get stepped on.</p>\r\n\r\n<p>Bonus points for walking on the building side of the sidewalk, rather than by the curb. If your dog does get loose, that extra two or three feet will mean a little bit more of a buffer area where you might be able to grab him before he enters traffic.</p>\r\n', 'd6c651ddcd97183b2e40bc464231c962_1579610913_1430.jpg', NULL, NULL, '2020-01-21 17:48:33');
INSERT INTO `tbl_resources` (`id`, `cat_id`, `title`, `slug`, `detail`, `image`, `meta_description`, `meta_keywords`, `date`) VALUES
(9, 2, 'When Do Dogs Stop Growing?', 'when-do-dogs-stop-growing', '<p>Trainer Annie Grossman of School for the Dogs, one of NYC&rsquo;s most respected dog training centers, has plenty of wisdom to share with dog people. She covers common dog behavior questions and training tips in her weekly podcast. We&rsquo;ll be sharing some of those responses right here in a regular feature!</p>\r\n\r\n<p>Have a training question of your own? Check out Annie&rsquo;s blog and click on &ldquo;Ask Annie.&rdquo;</p>\r\n\r\n<h3>Help! I&rsquo;m Moving My Country Dog to the City</h3>\r\n\r\n<p>Dear Ava,</p>\r\n\r\n<p>Transitioning a new dog to the city can certainly be stressful, but I do believe that, if your dog can make it in New York City, like the song says, he can make it anywhere.</p>\r\n\r\n<p>In fact, some trainers refer to dogs who develop &ldquo;suburban dog syndrome&rdquo; when they&rsquo;re raised behind pPFSCbial white picket fences&mdash; these dogs can end up being easily spooked by novel things since their daily intake of new information is limited to what&rsquo;s within their yard.</p>\r\n\r\n<p>Even if they get a walk a day, it&rsquo;s unlikely a dog in a rural or suburban neighborhood will encounter more than a handful of new dogs, people, or stimuli in a given walk.</p>\r\n\r\n<p>Compare this to the dog who grows up in a metropolitan area and may be exposed to dozens of dogs, hundreds of people, and god-only-knows what kind of stimuli on any given walk. I mean, is that guy approaching us wearing a suit made out of plastic bags and soup cans? Why yes, yes he is.</p>\r\n\r\n<p>What&rsquo;s more, behaviors that might be tolerated on a leash when you have all the space in the world may not be safe or desired when you&rsquo;re on a city sidewalk.</p>\r\n\r\n<p>Fortunately, it&rsquo;s absolutely possible for your dog and you to learn to co-exist happily during what will be a new kind of joint outing. All you need is to focus on how you can socialize your dog to new things, and encourage the behaviors you want during walks.</p>\r\n\r\n<p>Here are some tips on gear and training protocol that will help you both as you transition to city life.</p>\r\n\r\n<h3>1. TOSS THAT RETRACTABLE LEASH</h3>\r\n\r\n<p>Retractable leashes, which can change length based on the click of a button, mean that the radius wherein a dog can go is not fixed.</p>\r\n\r\n<p>I don&rsquo;t mind using a retractable leash when I&rsquo;m in a wide open space with my dog, but for leash walking on a busy sidewalk, I think it defeats the major purpose of having your dog on a leash to begin with.</p>\r\n\r\n<p>You want to teach your dog that he generally needs to be close to you and that he&rsquo;s allowed with in a fixed radius controlled by the leash, not by his whim.</p>\r\n\r\n<p>Another problem with retractable leashes is that they usually have very thin cords, which can snap or twist around dog or human body parts. Google &ldquo;Retractable Leash Injuries&rdquo; if you dare.</p>\r\n\r\n<p>What&rsquo;s more, if dropped by mistake, their heavy handles can snap towards the dog, which may result in a big plastic handle hurling in the direction of your dog&rsquo;s face, which isn&rsquo;t something you want to risk when there is the possibility of your dog running into traffic.</p>\r\n\r\n<p>While a leash of this sort might be a nice way for a dog to have some autonomy on a rural trail, it isn&rsquo;t the best fit for city streets.</p>\r\n\r\n<h3>2. CARRY TREATS</h3>\r\n\r\n<p>Investing in a good treat pouch is a great way to make sure that you always have rewards on you (and don&rsquo;t end up with pockets full of grease and crumbs).</p>\r\n\r\n<p>Be liberal with your dispensing of treats&mdash;you want to reward your dog whenever he pays any attention to you, whenever the leash is loose, and whenever he encounters anything that might potentially scare him.</p>\r\n\r\n<p>Giving your dog a treat when he spots unusual things (or people or dogs) is a great way to help him forge positive associations with new things. Keep in mind that the treats aren&rsquo;t just for your dog&mdash;they&rsquo;re going to be for people too!</p>\r\n\r\n<p>When you have a dog, you&rsquo;re not just training him to behave properly on the street&mdash;you are training people to behave properly, too. Without some coaching from you, you&rsquo;re likely to encounter people who will do a lot of improper things when greeting dogs on the street.</p>\r\n\r\n<p>One way to avoid impolite interactions with people who want to say hello to your dog is to hand a treat to anyone that approaches and ask them to give it to your dog.</p>\r\n\r\n<p>Your dog shouldn&rsquo;t have to sit for it or do anything for that matter. The &ldquo;trick&rdquo; they&rsquo;re being rewarded for is just the behavior of co-existing with a new human.</p>\r\n\r\n<h3>3. CHOOSE YOUR WALKING PATH WISELY</h3>\r\n\r\n<p>There are a million things that could happen on a city street that could spook a dog, most of which you cannot control. The best you can do is try to guess what&rsquo;s going to be the quietest route.</p>\r\n\r\n<p>If your dog is small enough and you get stuck in a particularly crowded area, pick up your pup! There is no shame in carrying your dog out of a situation where he could get stepped on.</p>\r\n\r\n<p>Bonus points for walking on the building side of the sidewalk, rather than by the curb. If your dog does get loose, that extra two or three feet will mean a little bit more of a buffer area where you might be able to grab him before he enters traffic.</p>\r\n', '8c7bbbba95c1025975e548cee86dfadc_1579610935_3126.jpg', NULL, NULL, '2020-01-21 17:48:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reviews`
--

CREATE TABLE `tbl_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `mem_id` int(11) NOT NULL,
  `from_id` int(11) NOT NULL,
  `ref_id` int(11) NOT NULL,
  `ref_type` enum('booking') NOT NULL,
  `rating` float NOT NULL,
  `comment` text DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_reviews`
--

INSERT INTO `tbl_reviews` (`id`, `parent_id`, `mem_id`, `from_id`, `ref_id`, `ref_type`, `rating`, `comment`, `date`) VALUES
(1, NULL, 3, 1, 1, 'booking', 5, 'test afaf dsfsad fsad', '2020-06-26 07:45:13'),
(2, 1, 3, 3, 1, 'booking', 0, 'fdssadfsdaf', '2020-06-26 07:45:28'),
(3, NULL, 3, 1, 2, 'booking', 5, 'fgsfdgfd', '2020-06-26 07:57:15'),
(4, 3, 3, 3, 2, 'booking', 0, 'fdsadfsdf', '2020-06-26 07:57:28'),
(5, NULL, 3, 1, 3, 'booking', 4, 'fsdfasdf', '2020-06-26 09:51:41'),
(6, 5, 3, 3, 3, 'booking', 0, 'test', '2020-06-26 09:51:55'),
(7, NULL, 3, 1, 4, 'booking', 5, 'Great Work. Highly recommended. ', '2020-07-03 17:50:52'),
(8, 7, 3, 3, 4, 'booking', 0, 'Thank you. ', '2020-07-03 17:51:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_services`
--

CREATE TABLE `tbl_services` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `overview` varchar(500) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `price_overview` varchar(500) DEFAULT NULL,
  `price_detail` text DEFAULT NULL,
  `price_label` varchar(20) DEFAULT NULL,
  `home_overview` text DEFAULT NULL,
  `default_price` int(11) DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `highest_earning` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_services`
--

INSERT INTO `tbl_services` (`id`, `title`, `overview`, `detail`, `price_overview`, `price_detail`, `price_label`, `home_overview`, `default_price`, `image`, `highest_earning`) VALUES
(1, 'PFSC Vacations', 'Your client\'s pets come to your home and stay overnight.', '<p>PFSC Vacations (Boarding) vacation home with a loving provider to care for your fur kids no kennels, fenced yard to ensure your baby can roam freely vide chats and photo updates.</p>\r\n', 'In the sitter’s home.', '<p>Here&#39;s the rate we recommend to start. Later on, you&#39;ll be able to set rates for add-on services (like dog grooming and drop-off/pickup). You can change your rates at any time.</p>\r\n', 'night', 'Perfect if you need a few days away or an extended vacation.', 30, 'f9a40a4780f5e1306c46f1c8daecee3b_1577441072_8654.svg', 1),
(2, 'House Sitting', 'You go to your client\'s home and stay overnight, taking care of their dogs and home.', '<p>Our background checked and vetted Furkid sitter stays at your home for the duration of your vacation, Video calls and photos updates provided. Plants watered and more just tell your provider what is required and PFSC daily report card.</p>\r\n', 'In your home.', '<p>Here&#39;s the rate we recommend to start. Later on, you&#39;ll be able to set rates for add-on services (like dog grooming and drop-off/pickup). You can change your rates at any time.</p>\r\n', 'night', 'Great if you need overnight fur kid care in your home.', 25, '3cf166c6b73f030b4f67eeaeba301103_1577441224_1496.svg', 0),
(3, 'Drop-in Visits / Dog Walking', ' Your clients ask you to do 30-minute home visits to feed and play with their pets.', '<p>Breakfast Lunch, Dinner serviced and then a 30 minute walk to follow. You choose what best suits your needs and our fur kid sitters will do their best to fulfill your away from home needs . Turn lights on and off when needed water plants and care for your kitty Just tell your PFSC provider what you need We aim to please and And PFSC daily report card.</p>\r\n', 'Visits in your home.', '<p>Here&#39;s the rate we recommend to start. Later on, you&#39;ll be able to set rates for add-on services (like dog grooming and drop-off/pickup). You can change your rates at any time.</p>\r\n', 'visit', 'Whenever your fur kid needs a walk or belly rub.', 20, 'b2f627fff19fda463cb386442eac2b3d_1577441284_9185.svg', 0),
(4, 'PFSC Day Care', 'You provide pet care services in your home.', '<ul>\r\n	<li>Dog walks</li>\r\n	<li>Field trips to the local dog park</li>\r\n	<li>Snack and playtimes</li>\r\n	<li>Video and photo updates</li>\r\n	<li>And PFSC daily daycare report card</li>\r\n</ul>\r\n', 'In the sitter’s home.', '<p>Here&#39;s the rate we recommend to start. Later on, you&#39;ll be able to set rates for add-on services (like dog grooming and drop-off/pickup). You can change your rates at any time.</p>\r\n', 'day', 'Daytime pet care in your sitter’s pet-friendly home.', 35, 'fa14d4fe2f19414de3ebd9f63d5c0169_1577441322_6231.svg', 0),
(5, 'PFSC Play Dates', 'You provide this service near client’s neighborhood. ', '<p>For sitter play date, paid sitter brings their fur kid to play with yours for a few hours while you are at work all play dates must be with dogs of simililar breeds and size dogs.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'In your neighborhood,', '<p>Here&#39;s the rate we recommend to start. Later on, you&#39;ll be able to set rates for add-on services (like dog grooming and drop-off/pickup). For sitter play date paid sitter brings their fur kid to play with yours for a few hours while you are at work all play dates must be with dogs of simililar breeds and size dogs.</p>\r\n', 'day', 'Link with another member in your area to socialize your pet and make friends with others.', 20, 'fe73f687e5bc5280214e0486b273a5f9_1582104857_4100.svg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siteadmin`
--

CREATE TABLE `tbl_siteadmin` (
  `site_id` int(11) NOT NULL,
  `site_username` varchar(255) DEFAULT NULL,
  `site_password` varchar(255) DEFAULT NULL,
  `site_admin_name` varchar(255) DEFAULT NULL,
  `site_admin_type` enum('admin','subadmin') NOT NULL DEFAULT 'admin',
  `site_domain` varchar(100) DEFAULT NULL,
  `site_name` varchar(500) DEFAULT NULL,
  `site_email` varchar(255) DEFAULT NULL,
  `site_noreply_email` varchar(255) DEFAULT NULL,
  `site_phone` varchar(255) DEFAULT NULL,
  `site_fax` varchar(255) DEFAULT NULL,
  `site_paypal_sandox` tinyint(1) DEFAULT 0,
  `site_sandbox_paypal` varchar(255) DEFAULT NULL,
  `site_live_paypal` varchar(255) DEFAULT NULL,
  `site_ip` varchar(255) DEFAULT NULL,
  `site_logo` varchar(255) DEFAULT NULL,
  `site_icon` varchar(255) DEFAULT NULL,
  `site_thumb` varchar(255) DEFAULT NULL,
  `site_address` varchar(255) DEFAULT NULL,
  `site_about` text DEFAULT NULL,
  `site_city` varchar(100) DEFAULT NULL,
  `site_state` varchar(100) DEFAULT NULL,
  `site_zip` varchar(25) DEFAULT NULL,
  `site_country` varchar(100) DEFAULT NULL,
  `site_lastlogindate` timestamp NOT NULL DEFAULT current_timestamp(),
  `site_copyright` varchar(1000) DEFAULT NULL,
  `site_facebook` varchar(255) DEFAULT NULL,
  `site_twitter` varchar(255) DEFAULT NULL,
  `site_google` varchar(255) DEFAULT NULL,
  `site_instagram` varchar(255) DEFAULT NULL,
  `site_linkedin` varchar(255) DEFAULT NULL,
  `site_youtube` varchar(255) DEFAULT NULL,
  `site_contact_map` text DEFAULT NULL,
  `site_google_ad` text DEFAULT NULL,
  `site_meta_desc` text DEFAULT NULL,
  `site_meta_keyword` varchar(1000) DEFAULT NULL,
  `site_meta_copyright` varchar(500) DEFAULT NULL,
  `site_meta_author` varchar(255) DEFAULT NULL,
  `site_how_to_pay` text DEFAULT NULL,
  `site_status` int(11) NOT NULL DEFAULT 1,
  `sub_location` int(20) DEFAULT NULL,
  `site_chat` text DEFAULT NULL,
  `sub_featured` int(30) DEFAULT NULL,
  `site_version` int(11) NOT NULL DEFAULT 0,
  `site_percentage` float NOT NULL DEFAULT 0,
  `site_commission` float DEFAULT 0,
  `site_hold_payment` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_siteadmin`
--

INSERT INTO `tbl_siteadmin` (`site_id`, `site_username`, `site_password`, `site_admin_name`, `site_admin_type`, `site_domain`, `site_name`, `site_email`, `site_noreply_email`, `site_phone`, `site_fax`, `site_paypal_sandox`, `site_sandbox_paypal`, `site_live_paypal`, `site_ip`, `site_logo`, `site_icon`, `site_thumb`, `site_address`, `site_about`, `site_city`, `site_state`, `site_zip`, `site_country`, `site_lastlogindate`, `site_copyright`, `site_facebook`, `site_twitter`, `site_google`, `site_instagram`, `site_linkedin`, `site_youtube`, `site_contact_map`, `site_google_ad`, `site_meta_desc`, `site_meta_keyword`, `site_meta_copyright`, `site_meta_author`, `site_how_to_pay`, `site_status`, `sub_location`, `site_chat`, `sub_featured`, `site_version`, `site_percentage`, `site_commission`, `site_hold_payment`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administration', 'admin', 'www.cosplaycosmos.com', 'Cosplay Cosmos', 'info@cosplaycosmos.com', 'no-reply@pfsc.com', '+254-775-050-697', '', 1, 'mehdiabedin@gmail.com', 'mehdiabedin@gmail.com', '::1', 'cosplay-cosmos-logo1.png', 'cosplay-cosmos-icon1.png', 'cosplay-cosmos-thumb.jpg', '10100 West Sample Road, <br>\r\nThird Floor, Coral Springs, <br>\r\nFL 33065', 'We are creating a cosplay marketplace to connect endclients ( conventions, businesses, eventplanners ) with cosplayers.', 'New York', 'WA', '75350', 'USA', '2020-08-21 05:58:12', 'Copyright © 2018. All Rights Reserved', 'https://www.facebook.com/Puppy-Friends-Social-Club-669277989870887/', '#', 'https://plus.google.com/mrservicecard', 'https://www.instagram.com/puppyfriendssocialclub/', 'https://www.linkedin.com/pfsc', 'https://www.youtube.com/channel/UCykPfbr2Q-_tjO-49hhTpoA', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3318.7250567536676!2d-84.34897039425!3d33.71606266992961!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x88f501790d22f717%3A0x7ff91decdaf344dc!2s1264+Custer+Ave+SE%2C+Atlanta%2C+GA+30316!5e0!3m2!1sen!2s!4v1493122321821', '', 'We are creating a cosplay marketplace to connect endclients ( conventions, businesses, eventplanners ) with cosplayers.', 'HTML, CSS, XML, JavaScript', 'New Admin &copy; 2018 All Rights Reserved.', 'Administration', '', 1, 20, 'window.fcWidget.init({\r\ntoken: \"89884c16-15cc-484d-926f-ec74202a584d\",\r\nhost: \"https://wchat.freshchat.com\"\r\n});', 30, 29, 5, 20, 1),
(2, 'ajay', '098f6bcd4621d373cade4e832627b4f6', 'Malik Ajay Jones', 'subadmin', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-06 15:00:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sitecontent`
--

CREATE TABLE `tbl_sitecontent` (
  `id` int(11) NOT NULL,
  `ckey` varchar(80) NOT NULL,
  `code` text DEFAULT NULL,
  `full_code` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sitecontent`
--

INSERT INTO `tbl_sitecontent` (`id`, `ckey`, `code`, `full_code`) VALUES
(1, 'home', 'a:37:{s:14:\"banner_heading\";s:14:\"Cosplay Cosmos\";s:13:\"banner_detail\";s:119:\"We are creating a cosplay marketplace to connect end-clients (conventions, businesses, event-planners) with cosplayers.\";s:18:\"banner_button_text\";s:6:\"Search\";s:17:\"first_left_button\";s:21:\"Book your next sitter\";s:18:\"first_left_section\";s:355:\"<h3>BOOK WITH PET SITTERS YOU CAN&nbsp;TRUST</h3>\r\n\r\n<ul>\r\n	<li>All new sitters pass a basic background check</li>\r\n	<li>All sitters homes will be inspected, and video tour will be provided.&nbsp;</li>\r\n	<li>All sitters provide a detailed profile and personal information</li>\r\n	<li>All sitters are approved by our team of sitter specialists</li>\r\n</ul>\r\n\";s:15:\"first_left_note\";s:282:\"<p>All services booked on PFSC are backed by the&nbsp;<a href=\"https://herosolutions.com.pk/sarim/pfsc/guarantee\">PFSC Guarantee</a>, 24/7 Support, Photo Updates, and our&nbsp;<a href=\"https://herosolutions.com.pk/sarim/pfsc/reservation-protection\">Reservation Protection.</a></p>\r\n\";s:21:\"first_section_heading\";s:43:\"Puppy Friends Social Club <em>Services</em>\";s:20:\"first_section_detail\";s:227:\"<p>Find trusted pet care providers for every need.</p>\r\n\r\n<p>PFSC is the pet care marketplace for busy pet parents. Search and book mobile pet grooming, pet sitting &amp; boarding, dog walking, and dog training on-demand.</p>\r\n\";s:19:\"testimonial_heading\";s:21:\" Happiness guaranteed\";s:18:\"testimonial_detail\";s:84:\"Relax knowing that your pet will be lovingly cared for by an experienced pet sitter.\";s:13:\"match_heading\";s:27:\"Find the perfect match fast\";s:16:\"match_short_desc\";s:169:\"Search for cosplay in your area that meet your events\'s individual needs, and book their services within minutes. Because finding a good cosplay shouldn’t be a hassle.\";s:11:\"match_text1\";s:97:\"Fantastic platform, I am able to work around my schedule, which is the biggest advantage for me. \";s:11:\"match_text2\";s:93:\"Great to work with a platform that offers such convenient way to provide cosplayer services. \";s:11:\"how_heading\";s:12:\"How it works\";s:14:\"how_short_desc\";s:84:\"Relax knowing that your events will be lovingly cared for by an experienced cosplay.\";s:12:\"how_heading1\";s:12:\"Smart prices\";s:9:\"how_text1\";s:34:\"Just book last-minute, or off-peak\";s:12:\"how_heading2\";s:9:\"Book 24/7\";s:9:\"how_text2\";s:20:\"From bed, or the bus\";s:12:\"how_heading3\";s:27:\"Choice of top-rated cosplay\";s:9:\"how_text3\";s:33:\"Thousands of venues (and reviews)\";s:15:\"feature_heading\";s:24:\"You’re in good company\";s:14:\"feature_detail\";s:386:\"It\'s our passion to provide the best service we can, every time, that makes us stand out from the pack. Every wag, wiggle, ear scratch, and belly rub is done with the the utmost love and care. When you leave your pets with us, you won\'t have to worry about whether they\'re enjoying themselves: their exuberance when they walk through our doors will tell you everything you need to know.\";s:19:\"feature_button_text\";s:11:\"Get Started\";s:6:\"image1\";s:52:\"e00da03b685a0dd18fb6a08af0923de0_1577368580_5746.svg\";s:6:\"image2\";s:52:\"8fecb20817b3847419bb3de39a609afe_1577368580_4649.jpg\";s:12:\"match_image1\";s:52:\"1d7f7abc18fcb43975065399b0d1e48e_1577368580_2574.jpg\";s:12:\"match_image2\";s:52:\"20aee3a5f4643755a79ee5f6a73050ac_1577368580_9253.jpg\";s:10:\"how_image1\";s:52:\"b7bb35b9c6ca2aee2df08cf09d7016c2_1597249613_7257.svg\";s:10:\"how_image2\";s:52:\"2b24d495052a8ce66358eb576b8912c8_1597249613_9115.svg\";s:10:\"how_image3\";s:52:\"26e359e83860db1d11b6acca57d8ea88_1597249614_7685.svg\";s:14:\"cities_heading\";s:47:\"Find a qualified cosplay <em>in your city </em>\";s:21:\"banner_search_heading\";s:32:\"I\'m looking for services for my:\";s:10:\"page_title\";s:4:\"Home\";s:16:\"meta_description\";s:119:\"We are creating a cosplay marketplace to connect end-clients (conventions, businesses, event-planners) with cosplayers.\";s:13:\"meta_keywords\";s:119:\"We are creating a cosplay marketplace to connect end-clients (conventions, businesses, event-planners) with cosplayers.\";}', NULL),
(2, 'about', 'a:29:{s:11:\"iframe_link\";s:131:\"<iframe src=\"https://www.youtube.com/embed/_lXWIDAtIUM?start=10&rel=0&wmode=transparent&modestbranding=1\" frameborder=\"0\"></iframe>\";s:13:\"first_heading\";s:29:\"About <em>Cosplay Cosmos</em>\";s:12:\"first_detail\";s:1444:\"<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Minus&nbsp;id&nbsp;ex&nbsp;odit,&nbsp;quo&nbsp;porro&nbsp;nesciunt.&nbsp;Vel&nbsp;magni&nbsp;id&nbsp;dolores&nbsp;quas&nbsp;repudiandae&nbsp;accusantium,&nbsp;ipsum&nbsp;quia&nbsp;nobis.&nbsp;Perspiciatis&nbsp;totam&nbsp;error&nbsp;veniam&nbsp;repudiandae.</p>\r\n\r\n<p>Minus&nbsp;id&nbsp;ex&nbsp;odit,&nbsp;quo&nbsp;porro&nbsp;nesciunt. Vel&nbsp;magni&nbsp;id&nbsp;dolores&nbsp;quas&nbsp;repudiandae&nbsp;accusantium,&nbsp;ipsum&nbsp;quia&nbsp;nobis.&nbsp;Perspiciatis&nbsp;totam&nbsp;error&nbsp;veniam&nbsp;repudiandae.&nbsp;Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Minus&nbsp;id&nbsp;ex&nbsp;odit,&nbsp;quo&nbsp;porro&nbsp;nesciunt.&nbsp;Vel&nbsp;magni&nbsp;id&nbsp;dolores&nbsp;quas&nbsp;repudiandae&nbsp;accusantium,&nbsp;ipsum&nbsp;quia&nbsp;nobis.&nbsp;Perspiciatis&nbsp;totam&nbsp;error&nbsp;veniam&nbsp;repudiandae.</p>\r\n\r\n<p>Vel&nbsp;magni&nbsp;id&nbsp;dolores&nbsp;quas&nbsp;repudiandae&nbsp;accusantium,&nbsp;ipsum&nbsp;quia&nbsp;nobis.&nbsp;Perspiciatis&nbsp;totam&nbsp;error&nbsp;veniam&nbsp;repudiandae.</p>\r\n\r\n<p>Minus&nbsp;id&nbsp;ex&nbsp;odit,&nbsp;quo&nbsp;porro&nbsp;nesciunt.&nbsp;Vel&nbsp;magni&nbsp;id&nbsp;dolores&nbsp;quas&nbsp;repudiandae&nbsp;accusantium,&nbsp;ipsum&nbsp;quia&nbsp;nobis.&nbsp;Perspiciatis&nbsp;totam&nbsp;error&nbsp;veniam&nbsp;repudiandae.</p>\r\n\";s:14:\"second_heading\";s:20:\"How are we doing it?\";s:17:\"second_short_desc\";s:26:\"We’ll do it all for you.\";s:9:\"ico_text1\";s:166:\"<h3>Care and Comfort</h3>\r\n\r\n<p>By inspecting each home and carefully interviewing each care giver we can insure that you fur kids are in safe and loving hands.</p>\r\n\";s:9:\"ico_text2\";s:168:\"<h3>Daily Updates</h3>\r\n\r\n<p>Providers are required to send a minimum of 5 photos a day. You can also call at any time to video chat and check in on your fur kid.</p>\r\n\";s:9:\"ico_text3\";s:149:\"<h3>Expert and Vets</h3>\r\n\r\n<p>Our expert and vets are available 24/7, as well, so day or night, your best friend&rsquo;s in the best of hands.</p>\r\n\";s:9:\"ico_text4\";s:241:\"<h3>Our Goal</h3>\r\n\r\n<p>To ensure each provider is properly trained and vetted. Provider homes must be inspected. Ensuring clients feel secure that their fur kids are in a safe loving households with all the pleasantries of being home.</p>\r\n\";s:9:\"ico_text5\";s:246:\"<h3>GPS collar</h3>\r\n\r\n<p>Free range boarding with GPS collar for each pet owner that connects to our system allowing parents to see location of their pet 24 hours a day 7 days a week(Available thru membership to Puppy Friends Social Club).</p>\r\n\";s:9:\"ico_text6\";s:462:\"<h3>5-Star Sitters in Your Neighborhood</h3>\r\n\r\n<p>Discover local pet sitters and dog walkers, read reviews, and find the right fit for you. PFSC offers:</p>\r\n\r\n<ul>\r\n	<li>Background or identity checks</li>\r\n	<li>The PFSC Guarantee</li>\r\n	<li>Reservation protection</li>\r\n	<li>24/7 support</li>\r\n	<li>Secure online payments</li>\r\n	<li>Ongoing sitter education</li>\r\n	<li>Photo updates</li>\r\n	<li>Verified reviews</li>\r\n	<li>Trust and safety experts</li>\r\n</ul>\r\n\";s:10:\"third_left\";s:216:\"<h3>OUR MISSION</h3>\r\n\r\n<p>Vel&nbsp;magni&nbsp;id&nbsp;dolores&nbsp;quas&nbsp;repudiandae&nbsp;accusantium,&nbsp;ipsum&nbsp;quia&nbsp;nobis.&nbsp;Perspiciatis&nbsp;totam&nbsp;error&nbsp;veniam&nbsp;repudiandae.</p>\r\n\";s:11:\"third_right\";s:291:\"<h3>OUR GUARANTEE</h3>\r\n\r\n<p>Minus&nbsp;id&nbsp;ex&nbsp;odit,&nbsp;quo&nbsp;porro&nbsp;nesciunt.&nbsp;Vel&nbsp;magni&nbsp;id&nbsp;dolores&nbsp;quas&nbsp;repudiandae&nbsp;accusantium,&nbsp;ipsum&nbsp;quia&nbsp;nobis.&nbsp;Perspiciatis&nbsp;totam&nbsp;error&nbsp;veniam&nbsp;repudiandae.</p>\r\n\";s:14:\"fourth_heading\";s:41:\"The people behind <em>Cosplay Cosmos</em>\";s:13:\"second_image1\";s:52:\"4e0cb6fb5fb446d1c92ede2ed8780188_1579511053_1297.svg\";s:13:\"second_image2\";s:52:\"9872ed9fc22fc182d371c3e9ed316094_1579511053_8035.svg\";s:13:\"second_image3\";s:52:\"cdc0d6e63aa8e41c89689f54970bb35f_1579511053_1670.svg\";s:13:\"second_image4\";s:52:\"08419be897405321542838d77f855226_1579511053_3883.svg\";s:13:\"second_image5\";s:52:\"6aab1270668d8cac7cef2566a1c5f569_1597660775_6786.svg\";s:13:\"second_image6\";s:52:\"a597e50502f5ff68e3e25b9114205d4a_1579511053_1490.svg\";s:12:\"second_text1\";s:391:\"<h3>Care and Comfort</h3>\r\n\r\n<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Minus&nbsp;id&nbsp;ex&nbsp;odit,&nbsp;quo&nbsp;porro&nbsp;nesciunt.&nbsp;Vel&nbsp;magni&nbsp;id&nbsp;dolores&nbsp;quas&nbsp;repudiandae&nbsp;accusantium,&nbsp;ipsum&nbsp;quia&nbsp;nobis.&nbsp;Perspiciatis&nbsp;totam&nbsp;error&nbsp;veniam&nbsp;repudiandae.</p>\r\n\";s:12:\"second_text2\";s:388:\"<h3>Daily Updates</h3>\r\n\r\n<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Minus&nbsp;id&nbsp;ex&nbsp;odit,&nbsp;quo&nbsp;porro&nbsp;nesciunt.&nbsp;Vel&nbsp;magni&nbsp;id&nbsp;dolores&nbsp;quas&nbsp;repudiandae&nbsp;accusantium,&nbsp;ipsum&nbsp;quia&nbsp;nobis.&nbsp;Perspiciatis&nbsp;totam&nbsp;error&nbsp;veniam&nbsp;repudiandae.</p>\r\n\";s:12:\"second_text3\";s:399:\"<h3>Expert and Professionals</h3>\r\n\r\n<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Minus&nbsp;id&nbsp;ex&nbsp;odit,&nbsp;quo&nbsp;porro&nbsp;nesciunt.&nbsp;Vel&nbsp;magni&nbsp;id&nbsp;dolores&nbsp;quas&nbsp;repudiandae&nbsp;accusantium,&nbsp;ipsum&nbsp;quia&nbsp;nobis.&nbsp;Perspiciatis&nbsp;totam&nbsp;error&nbsp;veniam&nbsp;repudiandae.</p>\r\n\";s:12:\"second_text4\";s:383:\"<h3>Our Goal</h3>\r\n\r\n<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Minus&nbsp;id&nbsp;ex&nbsp;odit,&nbsp;quo&nbsp;porro&nbsp;nesciunt.&nbsp;Vel&nbsp;magni&nbsp;id&nbsp;dolores&nbsp;quas&nbsp;repudiandae&nbsp;accusantium,&nbsp;ipsum&nbsp;quia&nbsp;nobis.&nbsp;Perspiciatis&nbsp;totam&nbsp;error&nbsp;veniam&nbsp;repudiandae.</p>\r\n\";s:12:\"second_text5\";s:392:\"<h3>Cosplayer Stories</h3>\r\n\r\n<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Minus&nbsp;id&nbsp;ex&nbsp;odit,&nbsp;quo&nbsp;porro&nbsp;nesciunt.&nbsp;Vel&nbsp;magni&nbsp;id&nbsp;dolores&nbsp;quas&nbsp;repudiandae&nbsp;accusantium,&nbsp;ipsum&nbsp;quia&nbsp;nobis.&nbsp;Perspiciatis&nbsp;totam&nbsp;error&nbsp;veniam&nbsp;repudiandae.</p>\r\n\";s:12:\"second_text6\";s:398:\"<h3>Providing Great Service</h3>\r\n\r\n<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Minus&nbsp;id&nbsp;ex&nbsp;odit,&nbsp;quo&nbsp;porro&nbsp;nesciunt.&nbsp;Vel&nbsp;magni&nbsp;id&nbsp;dolores&nbsp;quas&nbsp;repudiandae&nbsp;accusantium,&nbsp;ipsum&nbsp;quia&nbsp;nobis.&nbsp;Perspiciatis&nbsp;totam&nbsp;error&nbsp;veniam&nbsp;repudiandae.</p>\r\n\";s:10:\"page_title\";s:8:\"About us\";s:16:\"meta_description\";s:37:\"Your pets vaction home away from home\";s:13:\"meta_keywords\";s:37:\"Your pets vaction home away from home\";}', NULL),
(3, 'login', 'a:7:{s:7:\"heading\";s:25:\"Sign in to Cosplay Cosmos\";s:10:\"short_desc\";s:66:\"Based on your username our system will know if you\'re a cosplayer.\";s:11:\"login_image\";N;s:5:\"image\";s:52:\"b56a18e0eacdf51aa2a5306b0f533204_1577355260_9264.svg\";s:10:\"page_title\";s:5:\"Login\";s:16:\"meta_description\";s:37:\"Your pets vaction home away from home\";s:13:\"meta_keywords\";s:26:\"HTML, CSS, XML, JavaScript\";}', NULL),
(4, 'signup', 'a:6:{s:7:\"heading\";s:40:\"Cosplay - Let\'s get your account set up!\";s:10:\"short_desc\";s:71:\"Discover local cosplayer, read reviews, and find the right fit for you.\";s:5:\"image\";s:52:\"303ed4c69846ab36c2904d3ba8573050_1577355286_9419.svg\";s:10:\"page_title\";s:7:\"Sign up\";s:16:\"meta_description\";s:37:\"Your pets vaction home away from home\";s:13:\"meta_keywords\";s:26:\"HTML, CSS, XML, JavaScript\";}', NULL),
(5, 'forgot', 'a:6:{s:7:\"heading\";s:15:\"Forgot Password\";s:10:\"short_desc\";s:122:\"Don’t worry. Just enter the email address you registered with and we’ll email you instructions to reset your password.\";s:5:\"image\";s:52:\"9b72e31dac81715466cd580a448cf823_1577355251_6445.svg\";s:10:\"page_title\";s:15:\"Forgot Password\";s:16:\"meta_description\";s:37:\"Your pets vaction home away from home\";s:13:\"meta_keywords\";s:37:\"Your pets vaction home away from home\";}', NULL),
(6, 'reset', 'a:3:{s:7:\"heading\";s:14:\"Reset password\";s:10:\"short_desc\";s:38:\"Enter a new password for your account.\";s:5:\"image\";s:52:\"bc6dc48b743dc5d013b1abaebd2faed2_1577355238_2644.svg\";}', NULL),
(8, 'email_verify', 'a:2:{s:15:\"everify_heading\";s:18:\"Email Verification\";s:14:\"everify_detail\";s:272:\"<p>Please verify your email address, We&rsquo;ve sent a verify email to your email address. If you don&rsquo;t see the email, check your spam folder. If you didn&#39;t get email click on resend email link, or if you want to change email address click the link below.</p>\r\n\";}', NULL),
(9, 'search', '', NULL),
(10, 'contact', 'a:7:{s:13:\"first_heading\";s:10:\"Contact us\";s:6:\"detail\";s:183:\"Feel free to ask any questions over the phone or get in touch via our contact form. Your message will be dispatched directly to our staff who will get back to you as soon as they can.\";s:14:\"second_heading\";s:21:\"Questions or Comments\";s:13:\"third_heading\";s:17:\"Drop us a message\";s:10:\"page_title\";s:10:\"Contact us\";s:16:\"meta_description\";s:37:\"Your pets vaction home away from home\";s:13:\"meta_keywords\";s:37:\"Your pets vaction home away from home\";}', NULL),
(11, 'phone_verify', 'a:2:{s:15:\"pverify_heading\";s:18:\"Phone Verification\";s:14:\"pverify_detail\";s:289:\"<p>We are going to send you a text message for Phone verification if you want to verify your phone number, Please make sure your phone number is correct before verification. Click the link below to verify your phone number or if you want to change Phone Number click the link below .</p>\r\n\";}', NULL),
(12, 'sitter_signup', 'a:6:{s:7:\"heading\";s:43:\"Work Better, Live Better. Become Cosplayer.\";s:10:\"short_desc\";s:111:\"Create your profile, receive requests as soon as your profile is approved. And get paid to become a cosplayer. \";s:5:\"image\";s:52:\"3c7781a36bcd6cf08c11a970fbe0e2a6_1577355866_1113.svg\";s:10:\"page_title\";s:17:\"Cosplayer Sign up\";s:16:\"meta_description\";s:37:\"Your pets vaction home away from home\";s:13:\"meta_keywords\";s:26:\"HTML, CSS, XML, JavaScript\";}', NULL),
(13, 'become_pet_sitter', 'a:22:{s:7:\"heading\";s:41:\"Get paid to <em>play role of cosplay</em>\";s:10:\"short_desc\";s:118:\"Thanks for your interest in Cosmos! To give you the best experience possible, we\'d love to know what brought you here.\";s:11:\"button_text\";s:15:\"Get started now\";s:8:\"left_txt\";s:612:\"<h3>PFSC services</h3>\r\n\r\n<ul>\r\n	<li><strong>Dog Boarding</strong> Care for a dog (or cat!) overnight in your home. Sitters who offer boarding can make up to 2x more than sitters who don&#39;t.</li>\r\n	<li><strong>Dog Walking</strong> Pick up dog walks that fit your schedule</li>\r\n	<li><strong>Doggy Daycare</strong> Ideal for work-from-home dog lovers</li>\r\n	<li><strong>House-sitting, Drop-ins</strong> Stay with or check up on pets in their natural habitat</li>\r\n	<li><strong>PFSC Play Dates&nbsp;</strong>Link with another member in your area to socialize your pet and make friends with others.</li>\r\n</ul>\r\n\";s:9:\"right_txt\";s:485:\"<h3>Safety first. Always.</h3>\r\n\r\n<p>We work tirelessly to ensure tails keep wagging and pet parents&rsquo; minds are at ease.</p>\r\n\r\n<ul>\r\n	<li>Every PFSC service you offer is covered by the PFSC Guarantee</li>\r\n	<li>Safe, secure, and convenient online payments</li>\r\n	<li>General background checks offered for every pet sitter and dog walker</li>\r\n	<li>A world-class support team that has your back around the clock</li>\r\n	<li>Ongoing pet care education for dog sitters</li>\r\n</ul>\r\n\";s:5:\"image\";s:52:\"3a835d3215755c435ef4fe9965a3f2a0_1577359435_7776.svg\";s:6:\"image1\";s:52:\"0777d5c17d4066b82ab86dff8a46af6f_1577360313_9841.svg\";s:6:\"image2\";s:52:\"55743cc0393b1cb4b8b37d09ae48d097_1577360313_5207.jpg\";s:11:\"how_heading\";s:12:\"How it works\";s:14:\"how_short_desc\";s:84:\"Relax knowing that your events will be lovingly cared for by an experienced cosplay.\";s:12:\"how_heading1\";s:12:\"Smart prices\";s:9:\"how_text1\";s:34:\"Just book last-minute, or off-peak\";s:12:\"how_heading2\";s:9:\"Book 24/7\";s:9:\"how_text2\";s:20:\"From bed, or the bus\";s:12:\"how_heading3\";s:27:\"Choice of top-rated cosplay\";s:9:\"how_text3\";s:33:\"Thousands of venues (and reviews)\";s:10:\"how_image1\";s:52:\"65b9eea6e1cc6bb9f0cd2a47751a186f_1597311709_4466.svg\";s:10:\"how_image2\";s:52:\"ae0eb3eed39d2bcef4622b2499a05fe6_1597311709_9264.svg\";s:10:\"how_image3\";s:52:\"903ce9225fca3e988c2af215d4e544d3_1597311709_9241.svg\";s:10:\"page_title\";s:13:\"Become Cosmos\";s:16:\"meta_description\";s:37:\"Your pets vaction home away from home\";s:13:\"meta_keywords\";s:26:\"HTML, CSS, XML, JavaScript\";}', NULL),
(14, 'services', 'a:19:{s:7:\"heading\";s:41:\"We\'ll treat <em>your dog like family</em>\";s:10:\"short_desc\";s:151:\"Connect with a 5-star sitter who\'ll welcome your dog into their home when you\'re out of town—whether it’s just for the weekend or over a few weeks.\";s:11:\"button_text\";s:15:\"Get started now\";s:16:\"services_heading\";s:17:\"Our main Services\";s:11:\"how_heading\";s:12:\"How it works\";s:14:\"how_short_desc\";s:131:\"With PFSC, your pet stays in a sitter’s home or yours, whether you’re traveling or just out for the day. Here’s how it works.\";s:12:\"how_heading1\";s:6:\"Search\";s:9:\"how_text1\";s:50:\"Read verified reviews and pick the perfect sitter.\";s:12:\"how_heading2\";s:10:\"Book & Pay\";s:9:\"how_text2\";s:49:\"Book and pay securely through the website or app.\";s:12:\"how_heading3\";s:5:\"Relax\";s:9:\"how_text3\";s:65:\"Get the PFSC Guarantee, 24/7 support, and reservation protection.\";s:6:\"image1\";s:52:\"c8ffe9a587b126f152ed3d89a146b445_1577432408_2112.jpg\";s:10:\"how_image1\";s:52:\"e1e32e235eee1f970470a3a6658dfdd5_1577432408_1474.svg\";s:10:\"how_image2\";s:52:\"d707329bece455a462b58ce00d1194c9_1577432408_5792.svg\";s:10:\"how_image3\";s:52:\"b4a528955b84f584974e92d025a75d1f_1577432408_6299.svg\";s:10:\"page_title\";s:72:\"Pet Sitting Marketplace Services - Find Qualified Pet Sitters Near You. \";s:16:\"meta_description\";s:37:\"Your pets vaction home away from home\";s:13:\"meta_keywords\";s:37:\"Your pets vaction home away from home\";}', NULL),
(15, 'privacy_policy', 'a:4:{s:7:\"heading\";s:14:\"Privacy Policy\";s:10:\"page_title\";s:14:\"Privacy Policy\";s:16:\"meta_description\";s:37:\"Your pets vaction home away from home\";s:13:\"meta_keywords\";s:37:\"Your pets vaction home away from home\";}', '<p>We believe your right to privacy and data security is our high priority.</p>\r\n\r\n<p>This statement discloses the privacy guidelines for the entire Company&#39;s website.</p>\r\n\r\n<p>For more information about our privacy or information usage guidelines, please contact Company&#39;s at sales@company.com and put &quot;Privacy&quot; in the subject line.</p>\r\n\r\n<p>Company&#39;s only asks for specific types of personal information which will allow us to fully process your order(s).</p>\r\n\r\n<p>On the Company&#39;s web site, you will be asked to provide information that will allow us to process your order.</p>\r\n\r\n<p>Company&#39;s requests information from you when you place an order or check the status on your computer system.</p>\r\n\r\n<p>Company&#39;s may ask for your name, e-mail address, phone number, address, customer preference information, customer number, as well as other similar personal information that is needed to place an order with Company&#39;s. If Company&#39;s ever asks for significantly different information you will be informed.</p>\r\n\r\n<p>Company&#39;s only uses your personal information for specific purposes</p>\r\n\r\n<p>The information you provide will be kept confidential and used to support your customer relationship with Company&#39;s. Representatives of Company&#39;s who have access to your personal information and prospect information are required to keep the information confidential and not use it for any other purpose than to carry out the services they are performing for Company&#39;s.</p>\r\n\r\n<p>Company&#39;s will not disclose your personal information to any outside organization for its use in marketing without your consent.</p>\r\n\r\n<p>Information regarding you (such as name, address and phone number) or your order and the products you purchase will not be given or sold to any outside organization for its use in marketing or solicitation without your consent.</p>\r\n\r\n<p>Company&#39;s wants to help you keep your personal information secure.</p>\r\n\r\n<p>You can request the individual information that Company&#39;s has collected about you via the Internet at sales@company.com or dial 1-866-81-PC&#39;s.</p>\r\n'),
(16, 'terms_conditions', 'a:4:{s:7:\"heading\";s:20:\"Terms and Conditions\";s:10:\"page_title\";s:18:\"Terms & Conditions\";s:16:\"meta_description\";s:37:\"Your pets vaction home away from home\";s:13:\"meta_keywords\";s:37:\"Your pets vaction home away from home\";}', '<h3>Competition Terms and Conditions</h3>\r\n\r\n<p>Your use of the supportcompany.org web site (the &ldquo;Site&rdquo;) and our services, including phone orders, all purchases, and inquiries, from Company&#39;s is governed by the policies, terms, and conditions set forth below. Please read the following information carefully. By using this site or submitting an order for products or services, you indicate your acceptance of, and agreement to be bound by, the terms and conditions set forth below personally or as an agent for any business entity you represent. The term &ldquo;Customer&rdquo; means you or the business entity you are ordering goods or services for. If you do not agree to these terms and conditions, please do not use this site and please do not submit any orders for products or services. The terms and conditions posted on this website, including the warranty policy, are public information and must be adhered to by anyone doing business with Company&#39;s unless there is a written contract signed by an officer of Company&#39;s.</p>\r\n\r\n<h3>GENERAL TERMS AND CONDITIONS</h3>\r\n\r\n<ul>\r\n	<li>Customer agrees that Company&#39;s is not liable for mismatched product pictures or mistakes in product information. Company&#39;s reserves the right to change products and specifications and those listed on the Site may not be current. Customer agrees to verify the specifications of each product with the order. Company&#39;s is only responsible for products named on the invoice.</li>\r\n	<li>Our sales representatives are not authorized to make any representations or promises related to any product or services that exceed these terms and conditions and the warranty. Any additional provisions to your purchase must be made in writing signed by an officer of Company&#39;s.</li>\r\n	<li>Customer agrees that each item in a multi-item purchase from Company&#39;s shall be treated independently unless stated otherwise in the memo section of their order. That is, defect, replacement, and cancellation of one item does not constitute the voiding of the entire purchase. Each item shall be considered independently for warranty or refund purposes unless the customer has stated otherwise in the invoice memo.</li>\r\n	<li>Customer agrees that shipping costs and expenses will not be refunded once we ship.</li>\r\n	<li>It is the Customer&#39;s responsibility to look over their email confirmation and make sure all shipping, billing and item purchased are correct. If you do not get an email confirmation, call us to see if the order went through. Do not submit multiple orders or you will end up paying full restocking and shipping fees.</li>\r\n	<li>Order cancellation will be accepted by phone with a sales representative or over the web (only before the order is processed). It cannot be done over email or by leaving voice mails. You can confirm order cancellation by checking the order status online. Cancellation on orders already charged carries a 4.9% credit card processing cancellation fee. If an order has already been built in our facility (entered Stage 4) but has not been shipped, there will be an additional 15% restocking fee which covers expenses for taking the system apart and re-stocking the hardware.</li>\r\n	<li>Material fee for boxes, transportation, etc. are included in the shipping fee. Customer shall not be liable for additional shipping charges for purchases Company&#39;s chooses to ship in multiple packages unless they request and agree to shipping upgrades and upgrade fees. Company&#39;s does include shipping insurance with every FedEx and UPS shipment.</li>\r\n	<li>Customer agrees that Company&#39;s will not liable for shipper&#39;s shipping delays.</li>\r\n	<li>Financing interest fees paid by a customer are unable to be refunded or credited back by Company&#39;s for any reason.</li>\r\n</ul>\r\n\r\n<h3>A. WEB ORDERING SECURITY</h3>\r\n\r\n<p>Protecting your information is a priority for us. We use 128-bit encryption Secure Sockets Layer (SSL) technology to protect the security of your online order information. When you are about to enter your credit card information, look at the bottom right corner of the browser window for a icon of a gold lock. Also you can look at your address bar and see if it starts with &ldquo;https://&rdquo;. Some versions of browsers and some firewalls don&#39;t permit connection through secure servers. In that case, you won&#39;t be able to connect to the server and therefore won&#39;t be able to place an order through an insecure connection. If you cannot access the secure server for any reason, Please contact us to place an order, 1-866-81-STORM.</p>\r\n\r\n<h3>B. TRADEMARKS</h3>\r\n\r\n<p>All trademarks and registered trademarks displayed on the site are the trademarks of their respective owners, and are not intended to imply any endorsement or affiliation between Company&#39;s and these companies.</p>\r\n\r\n<h3>C. MAKING PURCHASES</h3>\r\n\r\n<p>If you wish to purchase products offered on the site, you will be asked to supply certain information, including but not limited to credit card or other payment information. You agree that all information you provide to Company&#39;s will be accurate complete and current. You agree to pay all charges incurred by authorized users of your account and credit card or other payment mechanism at the prices in effect when such charges are incurred. You will also be responsible for paying any applicable taxes, and shipping and handling charges relating to your purchases.</p>\r\n\r\n<h3>D. WHERE WE SHIP</h3>\r\n\r\n<p>We ship to any physical address that the shipper/courier can ship to domestically or internationally. We may accommodate (&ldquo;Customer&rdquo;) who need to have an item shipped to an APO/FPO address or PO Box depending on the circumstances. Due to the number of wrong addresses from customers, we now charge the face value that the shipper/courier charges us to reroute your package if you did not enter the address correctly. This charge is anywhere from $5-$25 and you agree if your address is wrong, Company&#39;s is authorized to charge your credit card for these fees.</p>\r\n\r\n<h3>E. WHEN WE SHIP</h3>\r\n\r\n<p>Orders received before 3:00 PM PST are usually processed the same day for product build. Products are shipped only after build which can take up to 15 days on a standard basis. Your order may be delayed if your ship to address does not match what your credit card issuer has on their file. Some orders that are shipped from fulfillment warehouses may require longer for the item to ship. We may also ship the orders with multiple items from different warehouses so it is possible you get the items on different days. Due to the many circumstances such as unable to charge your card or verify your address, we cannot guarantee when your order is shipped out. Also if you choose next day air service, it does not necessarily mean you will get it the next day from the order date, it means that you will get it the next day from the date we ship the order. Company&#39;s reserves the right at any time after receipt of your order to delay your order for any reason.</p>\r\n\r\n<h3>F. SHIPPING DELAYS</h3>\r\n\r\n<p>Once an order is shipped, it is up to the shipper courier to deliver the products; we will not be able to stop the shipment once it is shipped. If the shipper/courier loses the package, the shipper courier will put a tracer on the package. Tracers take around 3 days for air packages and 7 business days for ground packages. We will not be able to ship out replacement packages until the shipper courier confirms that the package is lost/will not be delivered to its destination and they will reimburse us. Without confirmation from the shipper courier, we will not know for sure if you will get two shipments if we ship out another one. Another delay is if there is no one to sign for the package, every package we ship usually requires a signature, if a package is returned to us because no one was available to sign for it or the address was input incorrectly at the time you enter the order, you will be charged again to ship it out a second time.</p>\r\n\r\n<h3>G. PRICING AND TYPOGRAPHICAL ERRORS</h3>\r\n\r\n<p>Due to the fast pace of the computer industry, all prices are subject to change without notice. We make every effort to list the most accurate, up to the minute information. Despite our efforts, some items on our website may be miss-priced. If a product is listed at an incorrect price due to a typographical, photographical, or technical error or error in pricing from our vendors, Company&#39;s reserves the right to refuse or cancel any orders placed for a product listed at the incorrect price. If your credit card has already been charged for the incorrect price, we will immediately refund your card and cancel your order. You may also repurchase it for the correct price if you wish to. Due to the volatility in pricing for computer products, we do not match competitor&#39;s pricing and we will not offer price protection beyond the 24 hours of purchase. Example: If Intel drops the price of a processor 5 days after your purchase, that is beyond our control and our cost for that same processor when we shipped is also much higher than our current selling price. We will not be able to refund the difference since we had to purchase the processor at a much higher cost to send it to you when you placed your order.</p>\r\n\r\n<h3>H. ORDER ACCEPTANCE POLICY</h3>\r\n\r\n<p>Your receipt of an electronic or phone order confirmation does not signify our acceptance of your order. Company&#39;s reserves the right at any time after receipt of your order to accept or decline your order for any reason.</p>\r\n\r\n<h3>I. DISCLAIMER AND LIMITATION OF LIABILITY AS TO PRODUCTS SOLD</h3>\r\n\r\n<p>YOU AGREE THAT THE SOLE AND EXCLUSIVE MAXIMUM LIABILITY TO Company&#39;s. ARISING FROM ANY PRODUCT SOLD BY Company&#39;s SHALL BE THE PRICE OF THE PRODUCT ORDERED. IN NO EVENT SHALL Company&#39;s, ITS DIRECTORS, OFFICERS, SHAREHOLDERS, EMPLOYEES AND REPRESENTATIVES BE LIABLE FOR SPECIAL, INDIRECT, CONSEQUENTIAL, OR PUNITIVE DAMAGES RELATED TO PRODUCT SOLD.</p>\r\n\r\n<p>1. DISCLAIMER AND LIMITATION OF LIABILITY AS TO THE supportcompany.org WEBSITE. THE supportcompany.org WEB SITE AND THE MATERIALS THEREIN ARE PROVIDED &ldquo;AS IS&rdquo;. Company&#39;s. MAKES NO REPRESENTATIONS OR WARRANTIES, EITHER EXPRESS OR IMPLIED, OF ANY KIND WITH RESPECT TO THE supportcompany.org SITE, THEIR OPERATION, CONTENTS, INFORMATION, OR MATERIALS ON THE SITE. Company&#39;s EXPRESSLY DISCLAIMS ALL WARRANTIES, EXPRESS OR IMPLIED, OF ANY KIND WITH RESPECT TO THE SITE OR THEIR USE, INCLUDING BUT NOT LIMITED TO ANY IMPLIED WARRANTY OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. YOU AGREE THAT Company&#39;s, ITS DIRECTORS, OFFICERS, EMPLOYEES OR OTHER REPRESENTATIVES SHALL NOT BE LIABLE FOR DAMAGES ARISING FROM THE OPERATION, CONTENT OR USE OF THE Company&#39;s SITE. YOU AGREE THAT THIS LIMITATION OF LIABILITY IS COMPREHENSIVE AND APPLIES TO ALL DAMAGES OF ANY KIND, INCLUDING WITHOUT LIMITATION DIRECT, INDIRECT, COMPENSATORY, SPECIAL, INCIDENTAL, PUNITIVE AND CONSEQUENTIAL DAMAGES.</p>\r\n\r\n<h3>J. TITLE TRANSFER</h3>\r\n\r\n<p>Company&#39;s retains title to parts and complete systems purchased until the said purchaser pays for items in full at which time the title passes to purchaser.</p>\r\n\r\n<h3>K. GOVERNING LAW</h3>\r\n\r\n<p>You agree that any legal action brought against Company&#39;s shall be governed by the laws of the State of California without regard to its conflict of law principles. You agree that the sole jurisdiction and venue for any arbitration arising from your use of or orders and purchased made on the Company&#39;s sites or from Company&#39;s shall be in Alameda County, California. All actions between the parties related to purchases and sales from Company&#39;s shall be resolved by binding AAA arbitration in Alameda County California.</p>\r\n\r\n<h3>L. RETURNS</h3>\r\n\r\n<p>Refunds are only issued for the sale amount at current selling market value (see section &ldquo;O&rdquo;) of the component(s) inside the computer, and does not include freight charges.</p>\r\n\r\n<p>Additionally, a 15% restocking fee is applied to computer system unless all of the three items below have been met:</p>\r\n\r\n<ol>\r\n	<li>Your purchase is returned back to Company&#39;s within 30 days of original delivery.</li>\r\n	<li>There are defective hardware component(s) inside the computer such as a memory stick causing stability/performance issue.</li>\r\n	<li>Company&#39;s or a third-party computer company contracted by Company&#39;s has verified that the stability/performance issues are in direct result of the hardware inside the computer and NOT the software such as the operating system, drivers, or software.</li>\r\n</ol>\r\n\r\n<p>Company&#39;s cannot offer a full refund for the purchase price of the product(s) unless there were issues such as defective hardware component(s) inside the computer such as a memory stick causing stability/performance issues. The returned merchandise must include its original packaging, manuals, and all accessories. All sales on software items are final. Opened accessories such as the monitor and speakers will not be refunded. Company&#39;s will not refund shipping costs and will not pay shipping for returning packages. ORIGINAL SALES RECEIPT REQUIRED FOR ALL RETURNS. THE 30 DAY MONEY BACK GUARANTEE IS ONLY HONORED IF THE COMPUTER SYSTEM IS RETURNED TO Company&#39;s WITHIN 30 DAYS FROM DATE OF ORIGINAL DELIVERY AND THE COMPUTER MUST HAVE DEFECTIVE HARDWARE. CUSTOMER IS RESPONSIBLE FOR ALL SHIPPING FEES FOR RETURNS. THE REFUND VALUE WILL BE THE FULL PURCHASE PRICE OF A NEW Company&#39;s COMPUTER AT CURRENT MARKET VALUE. Before making any return, back up all software and data and remove any personal information, confidential information or private content which you do not want viewed or used by any third party. Company&#39;s is not liable for lost data or misuse of data on computers that are returned for any reason.</p>\r\n\r\n<h3>M. WARRANTY SERVICE</h3>\r\n\r\n<p>Company&#39;s warrants to the original purchaser that any hardware part of the computer system, excluding accessories (display monitor, keyboard, mouse, software, operating system, documentation and similar items) will be free of defects in workmanship and materials for the period the warranty included with the purchase from the date of delivery to Customer. During the warranty period, Company&#39;s will repair or replace, at its sole discretion, the defective computer system, for defects specified by you, free of charge for labor and/or parts depending on your warranty period. Parts may not be the same but will be equivalent parts. Company&#39;s will cover shipping costs back and forth and replace the part(s) within the first 60 days of receiving your computer system. After 60 days you will be held liable for shipping costs to Company&#39;s and Company&#39;s will cover return shipping back to you. The remedy for this breach of warranty is limited to replacement or repair with parts warranted for the the remainder of the warranty period. Any additional purchases or upgrades will not extend this warranty. Excluded from this warranty is any damage caused during shipment (except the shipment to the original purchaser) and any damage caused by: impacts, fluids, fire, flood, wind, earthquake, lightning or similar disaster; unauthorized modifications, attachments or peripherals, improper use, environment, installation or electrical supply; improper maintenance; any other misuse, abuse, or mishandling. Company&#39;s&#39;s sole liability, under this warranty, for failure to repair or replace the hardware system after a reasonable number of attempts is limited to replacement or, at Company&#39;s&#39;s sole discretion, refund of the original purchase price. The above constitutes purchaser&#39;s exclusive remedies for breach of warranty. Company&#39;s shall, under no circumstances, be liable for any other damages, including but not limited to special, incidental, consequential and other similar claims whether based upon breach of contract, breach of warranty, negligence, or strict liability, or any other similar theories. Damages excluded include but are not limited to: loss of profit, loss of revenue, loss of data or software, loss of use of the hardware system, loss of use of related equipment, cost of substitute or replacement equipment, &quot;down-time&quot;, purchaser&rsquo;s time, injury to property, and all claims of third parties. EXCEPT AS EXPRESSLY STATED HEREIN, Company&#39;s MAKES NO REPRESENTATIONS OR WARRANTIES, EITHER EXPRESS OR IMPLIED, OF ANY KIND WITH RESPECT TO PRODUCTS SOLD BY Company&#39;s. EXCEPT AS EXPRESSLY STATED HEREIN, Company&#39;s. EXPRESSLY DISCLAIMS ALL WARRANTIES, EXPRESS OR IMPLIED, OF ANY KIND WITH RESPECT TO PRODUCTS SOLD ON THIS SITE, INCLUDING BUT NOT LIMITED TO, ANY IMPLIED WARRANTY OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. Depending on the term of the limited warranty, the coverage of labor and parts will vary. For additional details, please visit the&nbsp;<a href=\"http://localhost/herosolutions/infosky/terms-and-conditions.php?\">warranty details page</a>.</p>\r\n\r\n<h3>N. REFUSED SHIPMENTS</h3>\r\n\r\n<p>Any product that Company&#39;s ships out to Customer comes back to Company&#39;s as refused delivery, Customer will subject to fees. A restock fee of 15% will be applied to computer system. Also, shipping fees sending the package to the Customer and receiving the package back from the Customer will not be refunded.</p>\r\n\r\n<h3>O. CURRENT MARKET VALUE</h3>\r\n\r\n<p>Since every computer system is customized to the Customer&rsquo;s needs, it becomes difficult to return computer systems for a full refund. If you are having defective parts issues with the computer system, we will be more than happy to offer a full refund, minus shipping costs for the purchase price of the computer at its current market value. For example, if you purchased a system from Company&#39;s at the price of $1,500.00 after a length of time, you are requesting a full refund (and you have a verified defective hardware component such as a memory stick, etc causing stability/performance issues within the first 30-days of original delivery) we will offer a full refund for the hardware at its current selling market value. If the same system is now available for $1,200.00, Company&#39;s will issue a refund of $1,200.00 which will allow you to still purchase a computer with the same configuration that you originally ordered at $1,500.00. This protects the customer and Company&#39;s from price adjustments from manufacturers that are out of both Company&#39;s and the customer&rsquo;s control. In the end, the customer will still be able to buy a new computer with the same specifications from the original purchase.</p>\r\n\r\n<h3>P. SPECIAL REQUESTED COMPONENTS &amp; ACCESSORIES</h3>\r\n\r\n<p>Customers are more than welcome to request Company&#39;s to purchase components or accessories that we normally do not offer and stock for customers to purchase on our website. In the event of an order cancellation, such items cannot be returned to Company&#39;s for a refund under any circumstances once they have been ordered, they will be returned back to the customer at the customer&rsquo;s expense. In addition, if any special ordered components or accessories turn out to be defective during testing at Company&#39;s or after the customer receives the end product, it will be the responsibility of the customer, not Company&#39;s to obtain replacement warranty service directly from the manufacturer.</p>\r\n\r\n<h3>Q. INTERNATIONAL CUSTOMERS</h3>\r\n\r\n<p>The Terms and Conditions and Warranty also applies to Company&#39;s products shipped to any location outside of the Continental United States, the customer is responsible for paying all freight charges incurred in shipping, importing/exporting, receiving replacement parts and for arranging and paying for the shipment of any defective part(s) back to Company&#39;s. All international customers are responsible for all customs duties, VAT and other associated taxes and charges. Such import custom, duty, VAT and other taxes and charges are non-refundable once the order ships.</p>\r\n'),
(17, 'cookie_policy', 'a:4:{s:7:\"heading\";s:13:\"Cookie Policy\";s:10:\"page_title\";s:13:\"Cookie Policy\";s:16:\"meta_description\";s:37:\"Your pets vaction home away from home\";s:13:\"meta_keywords\";s:37:\"Your pets vaction home away from home\";}', '<h3>A. WEB ORDERING SECURITY</h3>\r\n\r\n<p>Protecting your information is a priority for us. We use 128-bit encryption Secure Sockets Layer (SSL) technology to protect the security of your online order information. When you are about to enter your credit card information, look at the bottom right corner of the browser window for a icon of a gold lock. Also you can look at your address bar and see if it starts with &ldquo;https://&rdquo;. Some versions of browsers and some firewalls don&#39;t permit connection through secure servers. In that case, you won&#39;t be able to connect to the server and therefore won&#39;t be able to place an order through an insecure connection. If you cannot access the secure server for any reason, Please contact us to place an order, 1-866-81-STORM.</p>\r\n\r\n<h3>B. TRADEMARKS</h3>\r\n\r\n<p>All trademarks and registered trademarks displayed on the site are the trademarks of their respective owners, and are not intended to imply any endorsement or affiliation between Company&#39;s and these companies.</p>\r\n\r\n<h3>C. MAKING PURCHASES</h3>\r\n\r\n<p>If you wish to purchase products offered on the site, you will be asked to supply certain information, including but not limited to credit card or other payment information. You agree that all information you provide to Company&#39;s will be accurate complete and current. You agree to pay all charges incurred by authorized users of your account and credit card or other payment mechanism at the prices in effect when such charges are incurred. You will also be responsible for paying any applicable taxes, and shipping and handling charges relating to your purchases.</p>\r\n\r\n<h3>D. WHERE WE SHIP</h3>\r\n\r\n<p>We ship to any physical address that the shipper/courier can ship to domestically or internationally. We may accommodate (&ldquo;Customer&rdquo;) who need to have an item shipped to an APO/FPO address or PO Box depending on the circumstances. Due to the number of wrong addresses from customers, we now charge the face value that the shipper/courier charges us to reroute your package if you did not enter the address correctly. This charge is anywhere from $5-$25 and you agree if your address is wrong, Company&#39;s is authorized to charge your credit card for these fees.</p>\r\n\r\n<h3>E. WHEN WE SHIP</h3>\r\n\r\n<p>Orders received before 3:00 PM PST are usually processed the same day for product build. Products are shipped only after build which can take up to 15 days on a standard basis. Your order may be delayed if your ship to address does not match what your credit card issuer has on their file. Some orders that are shipped from fulfillment warehouses may require longer for the item to ship. We may also ship the orders with multiple items from different warehouses so it is possible you get the items on different days. Due to the many circumstances such as unable to charge your card or verify your address, we cannot guarantee when your order is shipped out. Also if you choose next day air service, it does not necessarily mean you will get it the next day from the order date, it means that you will get it the next day from the date we ship the order. Company&#39;s reserves the right at any time after receipt of your order to delay your order for any reason.</p>\r\n\r\n<h3>F. SHIPPING DELAYS</h3>\r\n\r\n<p>Once an order is shipped, it is up to the shipper courier to deliver the products; we will not be able to stop the shipment once it is shipped. If the shipper/courier loses the package, the shipper courier will put a tracer on the package. Tracers take around 3 days for air packages and 7 business days for ground packages. We will not be able to ship out replacement packages until the shipper courier confirms that the package is lost/will not be delivered to its destination and they will reimburse us. Without confirmation from the shipper courier, we will not know for sure if you will get two shipments if we ship out another one. Another delay is if there is no one to sign for the package, every package we ship usually requires a signature, if a package is returned to us because no one was available to sign for it or the address was input incorrectly at the time you enter the order, you will be charged again to ship it out a second time.</p>\r\n\r\n<h3>G. PRICING AND TYPOGRAPHICAL ERRORS</h3>\r\n\r\n<p>Due to the fast pace of the computer industry, all prices are subject to change without notice. We make every effort to list the most accurate, up to the minute information. Despite our efforts, some items on our website may be miss-priced. If a product is listed at an incorrect price due to a typographical, photographical, or technical error or error in pricing from our vendors, Company&#39;s reserves the right to refuse or cancel any orders placed for a product listed at the incorrect price. If your credit card has already been charged for the incorrect price, we will immediately refund your card and cancel your order. You may also repurchase it for the correct price if you wish to. Due to the volatility in pricing for computer products, we do not match competitor&#39;s pricing and we will not offer price protection beyond the 24 hours of purchase. Example: If Intel drops the price of a processor 5 days after your purchase, that is beyond our control and our cost for that same processor when we shipped is also much higher than our current selling price. We will not be able to refund the difference since we had to purchase the processor at a much higher cost to send it to you when you placed your order.</p>\r\n');
INSERT INTO `tbl_sitecontent` (`id`, `ckey`, `code`, `full_code`) VALUES
(18, 'guarantee', 'a:4:{s:7:\"heading\";s:16:\"Cosmos Guarantee\";s:10:\"page_title\";s:16:\"Cosmos Guarantee\";s:16:\"meta_description\";s:37:\"Your pets vaction home away from home\";s:13:\"meta_keywords\";s:37:\"Your pets vaction home away from home\";}', '<p>We believe your right to privacy and data security is our high priority.</p>\r\n\r\n<p>This statement discloses the privacy guidelines for the entire Company&#39;s website.</p>\r\n\r\n<p>For more information about our privacy or information usage guidelines, please contact Company&#39;s at sales@company.com and put &quot;Privacy&quot; in the subject line.</p>\r\n\r\n<p>Company&#39;s only asks for specific types of personal information which will allow us to fully process your order(s).</p>\r\n\r\n<p>On the Company&#39;s web site, you will be asked to provide information that will allow us to process your order.</p>\r\n\r\n<p>Company&#39;s requests information from you when you place an order or check the status on your computer system.</p>\r\n\r\n<p>Company&#39;s may ask for your name, e-mail address, phone number, address, customer preference information, customer number, as well as other similar personal information that is needed to place an order with Company&#39;s. If Company&#39;s ever asks for significantly different information you will be informed.</p>\r\n\r\n<p>Company&#39;s only uses your personal information for specific purposes</p>\r\n\r\n<p>The information you provide will be kept confidential and used to support your customer relationship with Company&#39;s. Representatives of Company&#39;s who have access to your personal information and prospect information are required to keep the information confidential and not use it for any other purpose than to carry out the services they are performing for Company&#39;s.</p>\r\n\r\n<p>Company&#39;s will not disclose your personal information to any outside organization for its use in marketing without your consent.</p>\r\n\r\n<p>Information regarding you (such as name, address and phone number) or your order and the products you purchase will not be given or sold to any outside organization for its use in marketing or solicitation without your consent.</p>\r\n\r\n<p>Company&#39;s wants to help you keep your personal information secure.</p>\r\n\r\n<p>You can request the individual information that Company&#39;s has collected about you via the Internet at sales@company.com or dial 1-866-81-PC&#39;s.</p>\r\n'),
(19, 'reservation_protection', 'a:4:{s:7:\"heading\";s:27:\"Cosmos\'s Booking Protection\";s:10:\"page_title\";s:27:\"Cosmos\'s Booking Protection\";s:16:\"meta_description\";s:37:\"Your pets vaction home away from home\";s:13:\"meta_keywords\";s:37:\"Your pets vaction home away from home\";}', '<p>Refunds are only issued for the sale amount at current selling market value (see section &ldquo;O&rdquo;) of the component(s) inside the computer, and does not include freight charges.</p>\r\n\r\n<p>Additionally, a 15% restocking fee is applied to computer system unless all of the three items below have been met:</p>\r\n\r\n<ol>\r\n	<li>Your purchase is returned back to Company&#39;s within 30 days of original delivery.</li>\r\n	<li>There are defective hardware component(s) inside the computer such as a memory stick causing stability/performance issue.</li>\r\n	<li>Company&#39;s or a third-party computer company contracted by Company&#39;s has verified that the stability/performance issues are in direct result of the hardware inside the computer and NOT the software such as the operating system, drivers, or software.</li>\r\n</ol>\r\n\r\n<p><a href=\"mailto:info@puppyfriendssocialclub.com\">Email</a>&nbsp;or call us&mdash;we can help you find a great replacement.</p>\r\n'),
(20, 'sitter_guidelines', 'a:20:{s:13:\"first_heading\";s:31:\"Pet Sitters <em>Guidelines</em>\";s:16:\"first_short_desc\";s:14:\"Just Like Home\";s:12:\"first_detail\";s:838:\"The goal of PFSC is to insure each and every fur kid feels like they are home, and each pet parent is certain they have left their fur kid in the best of care. That is why as a PFSC Member/Sitter that you follow the PFSC Guidelines. Once you have signed up and passed the background check, an in home visit will be scheduled one of the PFSC staff will come to your home to inspect the residence for safety, and do a PFSC photo shoot to add to your profile. Professional photos make your profile more appealing and will get the pet parent a chance to meet you thru the PFSC virtual sitter tour. Its highly recommended that you do an in-n person meet and greet prior to each stay. But sometimes emergencies and last minute trips happen and clients have no time to meet and greet. So the virtual tour aids in the last minute booking process.\";s:14:\"second_heading\";s:36:\"If you live in an <em>Apartment</em>\";s:13:\"second_detail\";s:77:\"You can only host small breed dogs, and no more than 3 vacationers at a time.\";s:13:\"third_heading\";s:13:\"In case Of...\";s:18:\"third_left_heading\";s:6:\"Injury\";s:17:\"third_left_detail\";s:237:\"Immediately take fur kid to the vet in your area once you check in call PFSC Emergency Hot line, and then the Pet Parent. We will also contact the pet parent. Fill out the PFSC injury report in your sitter profile. Follow up Accordingly.\";s:19:\"third_right_heading\";s:16:\"Run Away Fur Kid\";s:18:\"third_right_detail\";s:401:\"If Fido is still in your site, DO NO CHASE pups think you’re playing if you chase them. No frantic running after him. Simply get a treat if possible, and get low to the ground call his name and lure him back to you. If you can’t find the Fur Kid Immediately call PFSC Emergency Hot Line and we will GPS Locate the Missing fur kid. IN ALL EMERGENCIES CALL PFSC EMERGENCY HOTLINE AND THEN THE CLIENT\";s:14:\"fourth_heading\";s:28:\"Not The Average Hosting Site\";s:13:\"fourth_detail\";s:241:\"We are not a tech company, we are a membership based social club for pets. That means we have guidelines and rules to not only sure the safety of our clients fur kids but for your protection as well. With that being said Welcome to the Club!\";s:11:\"fourth_name\";s:11:\"Auntie Kyss\";s:10:\"fifth_left\";s:693:\"<h3>YOU MUST...</h3>\r\n\r\n<p>Spend time with the fur kids and take video and photos of playtime and walks. We are not called puppy friends social club for nothing.. If You&rsquo;re signing up to be a PFSC care provider you must have time to devote to your fur kid vacationers. That means regular walks, playtime and lots of cuddles.</p>\r\n\r\n<p>Have a fenced in yard or a XXL fenced playpen for the fur Kids to roam and play</p>\r\n\r\n<p>Have at least one resident pet, it&#39;s a social club and our members want to make fur friends and play.</p>\r\n\r\n<p>Not ever Kennel a kid unless the Kennel is brought to your home and the client insist during certain times their fur kid should be kenneled.</p>\r\n\";s:11:\"fifth_right\";s:621:\"<h3>QUESTIONS YOU SHOULD ASK</h3>\r\n\r\n<ol>\r\n	<li>What is the fur kids temperament, what are its likes and dislikes?</li>\r\n	<li>Does it have a tendency to bite or get mood swings.</li>\r\n	<li>Does it get anxious when left alone?</li>\r\n	<li>What are the feeding habits, does it finish food immediately or takes a long time to do so.</li>\r\n	<li>Any dietary restrictions</li>\r\n	<li>All clients are required to keep updated vaccination records on file, however it never hurts to ask.</li>\r\n	<li>Does the fur kid play well with other fur kids and human children</li>\r\n	<li>What commands does the fur kid respond to?</li>\r\n</ol>\r\n\";s:6:\"image1\";s:52:\"051e4e127b92f5d98d3c79b195f2b291_1579524199_9632.jpg\";s:6:\"image2\";s:52:\"1534b76d325a8f591b52d302e7181331_1579524199_8308.jpg\";s:10:\"page_title\";s:17:\"Sitter Guidelines\";s:16:\"meta_description\";s:37:\"Your pets vaction home away from home\";s:13:\"meta_keywords\";s:37:\"Your pets vaction home away from home\";}', NULL),
(21, 'safety', 'a:31:{s:13:\"first_heading\";s:50:\"When it comes to <em>safety, we lead the pack</em>\";s:16:\"first_short_desc\";s:82:\"Keeping everyone—and every pet—in the PFSC community safe is our top priority.\";s:12:\"first_detail\";s:988:\"<p>Hi, I&rsquo;m Kisha Chavis, PFSC&rsquo;s chief operating officer.</p>\r\n\r\n<p>I know how important peace of mind is when you entrust others to care for a member of your family, which is why I&rsquo;m proud to be part of the amazing team at Puppy Friends Social Club, working to build a safe platform for pet lovers through prevention, education, and support. I&#39;m especially proud of the support our 24/7 Trust &amp; Safety team provides in the rare instance that something doesn&rsquo;t go as planned.</p>\r\n\r\n<p>We don&#39;t just build and support the PFSC platform&mdash;we&#39;re part of it too. Many employees are actively involved in the PFSC community as pet sitters, dog walkers, and pet parents.</p>\r\n\r\n<p>At Puppy Friends Social Club, our mission is to make sure everyone can experience the love of a pet in their lives. Read on to learn more about our commitment to safety, and please get in touch if you have feedback for us.</p>\r\n\r\n<p><strong>- Kisha Chavis</strong></p>\r\n\";s:14:\"second_heading\";s:28:\"PFSC <em>by the numbers</em>\";s:15:\"second_heading1\";s:8:\"Millions\";s:14:\"second_detail1\";s:34:\"of 5-star reviews from pet parents\";s:15:\"second_heading2\";s:15:\"Every 3 seconds\";s:14:\"second_detail2\";s:37:\"a service is booked on PFSC worldwide\";s:15:\"second_heading3\";s:21:\"Hundreds of thousands\";s:14:\"second_detail3\";s:35:\"of pet parents worldwide trust PFSC\";s:15:\"second_heading4\";s:9:\"8 seconds\";s:14:\"second_detail4\";s:62:\"is the average wait time to speak with our Trust & Safety team\";s:13:\"third_heading\";s:31:\"Discover pet care you can trust\";s:11:\"third_text1\";s:154:\"All sitters and walkers must pass a background check and a safety quiz, and all profiles are reviewed to ensure they meet PFSC’s high quality standards.\";s:11:\"third_text2\";s:133:\"No one knows your pet better than you do. Use our advanced search options to find the exact right care for your pet’s unique needs.\";s:11:\"third_text3\";s:146:\"Payments are cashless and encrypted to keep information secure. Credit card information is never shared between pet owners and pet care providers.\";s:11:\"third_text4\";s:138:\"Pet parents and sitters can set up a free in-person Meet & Greet to discuss expectations and make sure everyone gets along before booking.\";s:11:\"fourth_left\";s:230:\"<h3>PFSC GUARANTEE</h3>\r\n\r\n<p>All stays and walks booked on PFSC.com or the PFSC app are backed by the PFSC Guarantee, a program designed to assist pet owners in the rare instance where a booking doesn&rsquo;t go as planned.</p>\r\n\";s:12:\"fourth_right\";s:222:\"<h3>RESERVATION PROTECTION</h3>\r\n\r\n<p>It doesn&rsquo;t happen often, but if a sitter or walker needs to cancel at the last minute, we&rsquo;ll help you find someone new and, if needed, help cover the cost difference.</p>\r\n\";s:6:\"image1\";s:52:\"eba0dc302bcd9a273f8bbb72be3a687b_1579527875_1984.jpg\";s:13:\"second_image1\";s:52:\"b3e3e393c77e35a4a3f3cbd1e429b5dc_1579527875_2994.jpg\";s:13:\"second_image2\";s:52:\"e836d813fd184325132fca8edcdfb40e_1579527875_7034.jpg\";s:13:\"second_image3\";s:52:\"f61d6947467ccd3aa5af24db320235dd_1579527875_3304.jpg\";s:13:\"second_image4\";s:52:\"9c01802ddb981e6bcfbec0f0516b8e35_1579527875_2951.jpg\";s:12:\"third_image1\";s:52:\"e836d813fd184325132fca8edcdfb40e_1579527875_7941.svg\";s:12:\"third_image2\";s:52:\"81e74d678581a3bb7a720b019f4f1a93_1579527875_8178.svg\";s:12:\"third_image3\";s:52:\"f2fc990265c712c49d51a18a32b39f0c_1579527876_3210.svg\";s:12:\"third_image4\";s:52:\"2b24d495052a8ce66358eb576b8912c8_1579527876_9879.svg\";s:10:\"page_title\";s:13:\"Cosmos Safety\";s:16:\"meta_description\";s:37:\"Your pets vaction home away from home\";s:13:\"meta_keywords\";s:37:\"Your pets vaction home away from home\";}', NULL),
(22, 'advertise', 'a:34:{s:13:\"first_heading\";s:17:\"Advertise with us\";s:12:\"first_detail\";s:265:\"We want to work with progressive partners that contribute to a culture of great pet care and enhance the lives of modern pet parents. We utilize our expert team to create compelling sponsored content that connects your brand to millions of highly engaged consumers.\";s:14:\"first_btn_text\";s:11:\"Contact us \";s:13:\"second_detail\";s:130:\"We\'ll craft custom content designed to perform across multiple channels and reach our dedicated audience of passionate dog owners.\";s:13:\"third_heading\";s:19:\"Products they crave\";s:13:\"third_detail1\";s:73:\"Fun, authentic, and heartwarming narratives that showcase the joy of dogs\";s:13:\"third_detail2\";s:88:\"Smart, trusted content that helps pet parents improve the quality of their dogs’ lives\";s:13:\"third_detail3\";s:92:\"Curated recommendations for real, in-market dog owners looking for high-quality pet products\";s:14:\"fourth_heading\";s:21:\"Our <em>Audience</em>\";s:13:\"fourth_detail\";s:185:\"Our audience of modern pet parents and dog lovers is passionate, discerning, affluent, and actively seeking products and information that help them and their pets live their best lives.\";s:13:\"fifth_heading\";s:3:\"45%\";s:13:\"fifth_detail1\";s:9:\"dog owner\";s:13:\"fifth_detail2\";s:23:\"median household income\";s:13:\"fifth_detail3\";s:10:\"homeowners\";s:13:\"fifth_detail4\";s:37:\"completed bachelor\'s degree and above\";s:13:\"fifth_detail5\";s:6:\"female\";s:13:\"fifth_detail6\";s:35:\"spend over $100/month on their pets\";s:6:\"image1\";s:52:\"dc6a70712a252123c40d2adba6a11d84_1579596633_4793.jpg\";s:6:\"image2\";s:52:\"3636638817772e42b59d74cff571fbb3_1579596634_1952.jpg\";s:14:\"third_heading1\";s:17:\"Stories they want\";s:14:\"third_heading2\";s:21:\"Information they need\";s:14:\"third_heading3\";s:19:\"Products they crave\";s:14:\"fifth_heading1\";s:3:\"97%\";s:14:\"fifth_heading2\";s:3:\"75K\";s:14:\"fifth_heading3\";s:3:\"58%\";s:14:\"fifth_heading4\";s:3:\"65%\";s:14:\"fifth_heading5\";s:3:\"80%\";s:14:\"fifth_heading6\";s:3:\"45%\";s:13:\"sixth_heading\";s:76:\"The best way to <em>build your brand</em> in the <em>creative</em> community\";s:15:\"sixth_btn1_text\";s:12:\"Work with us\";s:15:\"sixth_btn2_text\";s:10:\"Contact us\";s:10:\"page_title\";s:17:\"Advertise with us\";s:16:\"meta_description\";s:37:\"Your pets vaction home away from home\";s:13:\"meta_keywords\";s:37:\"Your pets vaction home away from home\";}', NULL),
(23, 'sitter_resources', 'a:5:{s:7:\"heading\";s:19:\"Cosplayer Resources\";s:10:\"short_desc\";s:49:\"Advice for being a successful cosplayer on Cosmos\";s:10:\"page_title\";s:19:\"Cosplayer Resources\";s:16:\"meta_description\";s:37:\"Your pets vaction home away from home\";s:13:\"meta_keywords\";s:26:\"HTML, CSS, XML, JavaScript\";}', NULL),
(24, 'help', 'a:8:{s:7:\"heading\";s:10:\"Need Help?\";s:10:\"short_desc\";s:26:\"How we can help you today?\";s:12:\"last_heading\";s:35:\"Can\'t find what you\'re looking for?\";s:14:\"last_btn1_text\";s:9:\"Live Chat\";s:14:\"last_btn2_text\";s:10:\"Contact us\";s:10:\"page_title\";s:9:\"Need Help\";s:16:\"meta_description\";s:37:\"Your pets vaction home away from home\";s:13:\"meta_keywords\";s:37:\"Your pets vaction home away from home\";}', NULL),
(25, 'membership', 'a:8:{s:18:\"first_left_heading\";s:37:\"Membership <em>Levels For Buyers</em>\";s:17:\"first_left_detail\";s:119:\"Membership gives you the security of knowing that our vacation homes are inspected by one of our trust and safety team.\";s:19:\"first_right_heading\";s:39:\"We offer buyers membership levels with:\";s:18:\"first_right_detail\";s:245:\"<ul>\r\n	<li>Network Access</li>\r\n	<li>Home Inspection</li>\r\n	<li>Round the Clock GPS Tracking</li>\r\n	<li>Discounts on PFSC Merchandise</li>\r\n	<li>PFSC Hat, Tee Shirts, Hoodie</li>\r\n	<li>$0 Deductible Insurance</li>\r\n	<li>PFSC events</li>\r\n</ul>\r\n\";s:14:\"second_heading\";s:17:\"Membership Levels\";s:10:\"page_title\";s:17:\"Membership Levels\";s:16:\"meta_description\";s:37:\"Your pets vaction home away from home\";s:13:\"meta_keywords\";s:37:\"Your pets vaction home away from home\";}', NULL),
(26, 'blog', 'a:4:{s:10:\"page_title\";s:13:\"Blog Articles\";s:16:\"meta_description\";s:37:\"Your pets vaction home away from home\";s:13:\"meta_keywords\";s:26:\"HTML, CSS, XML, JavaScript\";s:7:\"heading\";s:13:\"Blog Articles\";}', NULL),
(27, 'press', 'a:4:{s:10:\"page_title\";s:10:\"Press Room\";s:16:\"meta_description\";s:37:\"Your pets vaction home away from home\";s:13:\"meta_keywords\";s:26:\"HTML, CSS, XML, JavaScript\";s:7:\"heading\";s:10:\"Press Room\";}', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_site_texts`
--

CREATE TABLE `tbl_site_texts` (
  `txt_id` int(11) NOT NULL,
  `txt_type` varchar(50) DEFAULT NULL,
  `txt_label` varchar(100) DEFAULT NULL,
  `txt_key` text DEFAULT NULL,
  `txt_value` text DEFAULT NULL,
  `txt_subject` text DEFAULT NULL,
  `txt_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_site_texts`
--

INSERT INTO `tbl_site_texts` (`txt_id`, `txt_type`, `txt_label`, `txt_key`, `txt_value`, `txt_subject`, `txt_status`) VALUES
(1, 'email', 'Signup Email', 'signup', '<h3>Dear $name</h3>\r\n\r\n<p>Thank you for your registration.</p>\r\n\r\n<p>Please click on the link below to verify your email addresss.</p>\r\n', 'Thank you for registering', 1),
(2, 'email', 'Forgot Password Email', 'forgot_password', '<h3>Dear <!--?= $name ?--></h3>\r\n\r\n<p>Please click on the link below to reset your password.</p>\r\n', 'Reset your Password', 1),
(3, 'email', 'Change Email', 'change_email', '<h3>Dear $name</h3>\r\n\r\n<p>You have changed your email.</p>\r\n\r\n<p>Please click on the link below to verify your email address.</p>\r\n', 'Verify Your Email', 1),
(4, 'email', 'Verify Email', 'verify_email', '<h3>Dear $name</h3>\r\n\r\n<p>Please click on the link below to verify your email address.</p>\r\n', 'Verify Your Email', 1),
(5, 'alert', 'Profile Complete Alert', 'profile_completion', 'Thanks for registering with PFSC. Please fill in the profile information.', NULL, 1),
(6, 'alert', 'Registration Alert', 'registration', 'You are register successfully. And We’ve sent a verify email to your email address. If you don’t see the email, check your spam folder', NULL, 1),
(7, 'alert', 'Sent Verification Email Alert', 'verify_email', '', NULL, 1),
(8, 'alert', 'Email Verfication Alert', 'email_verification', 'Thanks for registering with PFSC. Please verify your email.', NULL, 1),
(9, 'email', 'Approved Sitter Email', 'approved_sitter', '<h3>Dear {$name}</h3>\r\n\r\n<p>Your Pet Sitter application has been Approved.</p>\r\n', 'Approved Sitter Email', 1),
(10, 'email', 'Declinced Sitter Email', 'declined_sitter', '<h3>Dear {$name}</h3>\r\n\r\n<p>Your Pet Sitter application has been Declinced.</p>\r\n', 'Declinced Sitter Email', 1),
(11, 'email', 'Referral Signup Email', 'invite_friend', '<h3>Referral Signup Invitation</h3>\r\n\r\n<p>$name send you a referral signup link</p>\r\n\r\n<p>Please click on the link below to referral signup.</p>\r\n', 'Referral Signup Invitation', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sitter_timings`
--

CREATE TABLE `tbl_sitter_timings` (
  `mem_id` int(11) NOT NULL,
  `day` varchar(100) NOT NULL,
  `start_time` varchar(10) DEFAULT NULL,
  `end_time` varchar(10) DEFAULT NULL,
  `available` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sitter_timings`
--

INSERT INTO `tbl_sitter_timings` (`mem_id`, `day`, `start_time`, `end_time`, `available`) VALUES
(8, 'Sunday', '', '', 0),
(8, 'Monday', '', '', 0),
(8, 'Tuesday', '', '', 0),
(8, 'Wednesday', '', '', 0),
(8, 'Thursday', '', '', 0),
(8, 'Friday', '', '', 0),
(8, 'Saturday', '', '', 0),
(13, 'Sunday', '', '', 0),
(13, 'Monday', '', '', 0),
(13, 'Tuesday', '', '', 0),
(13, 'Wednesday', '', '', 0),
(13, 'Thursday', '', '', 0),
(13, 'Friday', '', '', 0),
(13, 'Saturday', '', '', 0),
(14, 'Sunday', '', '', 0),
(14, 'Monday', '', '', 0),
(14, 'Tuesday', '', '', 0),
(14, 'Wednesday', '', '', 0),
(14, 'Thursday', '', '', 0),
(14, 'Friday', '', '', 0),
(14, 'Saturday', '', '', 0),
(17, 'Sunday', '', '', 0),
(17, 'Monday', '', '', 0),
(17, 'Tuesday', '', '', 0),
(17, 'Wednesday', '', '', 0),
(17, 'Thursday', '', '', 0),
(17, 'Friday', '', '', 0),
(17, 'Saturday', '', '', 0),
(3, 'Sunday', '00:00', '17:00', 1),
(3, 'Monday', '00:00', '00:00', 1),
(3, 'Tuesday', '00:00', '00:00', 1),
(3, 'Wednesday', '00:00', '00:00', 1),
(3, 'Thursday', '', '', 0),
(3, 'Friday', '', '', 0),
(3, 'Saturday', '', '', 0),
(4, 'Sunday', '', '', 0),
(4, 'Monday', '', '', 0),
(4, 'Tuesday', '', '', 0),
(4, 'Wednesday', '', '', 0),
(4, 'Thursday', '', '', 0),
(4, 'Friday', '', '', 0),
(4, 'Saturday', '', '', 0),
(5, 'Sunday', '', '', 0),
(5, 'Monday', '', '', 0),
(5, 'Tuesday', '', '', 0),
(5, 'Wednesday', '', '', 0),
(5, 'Thursday', '', '', 0),
(5, 'Friday', '', '', 0),
(5, 'Saturday', '', '', 0),
(22, 'Sunday', '', '', 0),
(22, 'Monday', '', '', 0),
(22, 'Tuesday', '', '', 0),
(22, 'Wednesday', '', '', 0),
(22, 'Thursday', '', '', 0),
(22, 'Friday', '', '', 0),
(22, 'Saturday', '', '', 0),
(23, 'Sunday', '', '', 0),
(23, 'Monday', '', '', 0),
(23, 'Tuesday', '', '', 0),
(23, 'Wednesday', '', '', 0),
(23, 'Thursday', '', '', 0),
(23, 'Friday', '', '', 0),
(23, 'Saturday', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_states`
--

CREATE TABLE `tbl_states` (
  `id` int(11) UNSIGNED NOT NULL,
  `code` char(2) DEFAULT '',
  `name` varchar(128) DEFAULT '',
  `status` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_states`
--

INSERT INTO `tbl_states` (`id`, `code`, `name`, `status`) VALUES
(1, 'AL', 'Alabama', 0),
(2, 'AK', 'Alaska', 0),
(3, 'AS', 'American Samoa', 0),
(4, 'AZ', 'Arizona', 0),
(5, 'AR', 'Arkansas', 0),
(6, 'CA', 'California', 1),
(7, 'CO', 'Colorado', 0),
(8, 'CT', 'Connecticut', 0),
(9, 'DE', 'Delaware', 0),
(10, 'DC', 'District of Columbia', 0),
(11, 'FM', 'Federated States of Micronesia', 0),
(12, 'FL', 'Florida', 0),
(13, 'GA', 'Georgia', 1),
(14, 'GU', 'Guam', 0),
(15, 'HI', 'Hawaii', 0),
(16, 'ID', 'Idaho', 0),
(17, 'IL', 'Illinois', 0),
(18, 'IN', 'Indiana', 0),
(19, 'IA', 'Iowa', 0),
(20, 'KS', 'Kansas', 0),
(21, 'KY', 'Kentucky', 0),
(22, 'LA', 'Louisiana', 0),
(23, 'ME', 'Maine', 0),
(24, 'MH', 'Marshall Islands', 0),
(25, 'MD', 'Maryland', 0),
(26, 'MA', 'Massachusetts', 0),
(27, 'MI', 'Michigan', 0),
(28, 'MN', 'Minnesota', 0),
(29, 'MS', 'Mississippi', 0),
(30, 'MO', 'Missouri', 0),
(31, 'MT', 'Montana', 0),
(32, 'NE', 'Nebraska', 0),
(33, 'NV', 'Nevada', 0),
(34, 'NH', 'New Hampshire', 0),
(35, 'NJ', 'New Jersey', 0),
(36, 'NM', 'New Mexico', 0),
(37, 'NY', 'New York', 1),
(38, 'NC', 'North Carolina', 0),
(39, 'ND', 'North Dakota', 0),
(40, 'MP', 'Northern Mariana Islands', 0),
(41, 'OH', 'Ohio', 0),
(42, 'OK', 'Oklahoma', 0),
(43, 'OR', 'Oregon', 0),
(44, 'PW', 'Palau', 0),
(45, 'PA', 'Pennsylvania', 0),
(46, 'PR', 'Puerto Rico', 0),
(47, 'RI', 'Rhode Island', 0),
(48, 'SC', 'South Carolina', 0),
(49, 'SD', 'South Dakota', 0),
(50, 'TN', 'Tennessee', 0),
(51, 'TX', 'Texas', 0),
(52, 'UT', 'Utah', 0),
(53, 'VT', 'Vermont', 0),
(54, 'VI', 'Virgin Islands', 0),
(55, 'VA', 'Virginia', 0),
(56, 'WA', 'Washington', 0),
(57, 'WV', 'West Virginia', 0),
(58, 'WI', 'Wisconsin', 0),
(59, 'WY', 'Wyoming', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subjects`
--

CREATE TABLE `tbl_subjects` (
  `id` int(11) NOT NULL,
  `encoded_id` varchar(100) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `slug` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_subjects`
--

INSERT INTO `tbl_subjects` (`id`, `encoded_id`, `parent_id`, `slug`, `name`, `status`) VALUES
(1, 'h5s2u3a4k365p483', 0, 'algebra', 'Algebra', 1),
(2, 'h5s2u3a4k365t483', 0, 'calculus', 'Calculus', 1),
(3, 'h5s2u3a4k365x483', 1, 'algebra-1', 'Algebra 1', 1),
(4, 'h5s2u3a4k3651583', 1, 'algebra-2', 'Algebra 2', 1),
(5, 'h5s2u3a4k3655583', 0, 'chemistry', 'Chemistry', 1),
(6, 'h5s2u3a4k3659583', 0, 'computer', 'Computer', 1),
(7, 'h5s2u3a4k365j583', 0, 'english', 'English', 1),
(8, 'h5s2u3a4k365n583', 0, 'physics', 'Physics', 1),
(9, 'v4b4b423', 0, 'computer', 'Computer', 1),
(10, 'v4b4b423', 9, 'adobe_flash', 'Adobe_Flash', 1),
(11, 'v4b4b423', 0, 'music', 'Music', 1),
(12, 'v4b4b423', 11, 'cello', 'Cello', 1),
(13, 'v4b4b423', 0, 'art', 'Art', 1),
(14, 'v4b4b423', 13, 'animation', 'Animation', 1),
(15, 'v4b4b423', 13, 'film', 'Film', 1),
(16, 'h5s2u3a4k365p4x2', 0, 'knitting', 'knitting', 1),
(17, 'h5s2u3a4k365p4y2', 16, 'tennis', 'tennis', 1),
(23, 'w493l323', 0, 'history', 'History', 1),
(24, 'w493l323', 23, 'american_history', 'American_History', 1),
(25, 'w493l323', 0, 'art', 'Art', 1),
(26, 'w493l323', 25, 'adobe_photoshop', 'Adobe_Photoshop', 1),
(27, 'w493l323', 25, 'cosmetology', 'Cosmetology', 1),
(28, 'w493t323', 0, 'art', 'Art', 1),
(29, 'w493t323', 28, 'cosmetology', 'Cosmetology', 1),
(30, 'w493t323', 28, 'painting', 'Painting', 1),
(31, 'w493t323', 28, 'video_production', 'Video_Production', 1),
(32, 'w493x323', 0, 'art', 'Art', 1),
(33, 'w493x323', 32, 'art_theory', 'Art_Theory', 1),
(34, 'w493x323', 32, 'cosmetology', 'Cosmetology', 1),
(35, 'w4937423', 0, 'art', 'Art', 1),
(36, 'w4937423', 35, 'adobe_photoshop', 'Adobe_Photoshop', 1),
(37, 'w4937423', 35, 'animation', 'Animation', 1),
(38, 'w4937423', 35, 'art_theory', 'Art_Theory', 1),
(39, 'w4937423', 35, 'ballroom_dancing', 'Ballroom_Dancing', 1),
(40, 'w4937423', 35, 'cosmetology', 'Cosmetology', 1),
(41, 'w4937423', 0, 'art', 'Art', 1),
(42, 'w4937423', 41, 'adobe_photoshop', 'Adobe_Photoshop', 1),
(43, 'w4937423', 41, 'animation', 'Animation', 1),
(44, 'w4937423', 41, 'art_theory', 'Art_Theory', 1),
(45, 'w4937423', 41, 'ballroom_dancing', 'Ballroom_Dancing', 1),
(46, 'w4937423', 41, 'cosmetology', 'Cosmetology', 1),
(47, 'w4937423', 0, 'art', 'Art', 1),
(48, 'w4937423', 47, 'adobe_photoshop', 'Adobe_Photoshop', 1),
(49, 'w4937423', 47, 'animation', 'Animation', 1),
(50, 'w4937423', 47, 'art_theory', 'Art_Theory', 1),
(51, 'w4937423', 47, 'ballroom_dancing', 'Ballroom_Dancing', 1),
(52, 'w4937423', 47, 'cosmetology', 'Cosmetology', 1),
(55, 'v4o45323', 0, 'art', 'Art', 1),
(56, 'v4o45323', 55, 'adobe_photoshop', 'Adobe_Photoshop', 1),
(57, 'v4o45323', 55, 'animation', 'Animation', 1),
(58, 'v4o45323', 55, 'cinema', 'Cinema', 1),
(59, 'v4o45323', 55, 'film', 'Film', 1),
(60, 'v4o45323', 55, 'graphic_design', 'Graphic_Design', 1),
(61, 'v4o45323', 55, 'video_production', 'Video_Production', 1),
(71, 'v4o45323', 55, 'drawing', 'Drawing', 1),
(72, 'v4o45323', 55, 'painting', 'Painting', 1),
(73, 'v4o45323', 55, 'photography', 'Photography', 1),
(74, 'v4o45323', 0, 'computer', 'Computer', 1),
(75, 'v4o45323', 74, 'animation', 'Animation', 1),
(76, 'w4b4p323', 0, 'art', 'Art', 1),
(77, 'w4b4p323', 76, 'adobe_photoshop', 'Adobe_Photoshop', 1),
(78, 'w4b4p323', 76, 'painting', 'Painting', 1),
(79, 'w4b4p323', 76, 'theater', 'Theater', 1),
(80, 'w4b4p323', 0, 'computer', 'Computer', 1),
(81, 'w4b4p323', 80, 'animation', 'Animation', 1),
(82, 'w4b4p323', 80, 'cobol', 'COBOL', 1),
(83, 'w4b4p323', 80, 'css', 'CSS', 1),
(84, 'w4b4p323', 80, 'html', 'HTML', 1),
(85, 'w4b4p323', 80, 'c', 'C', 1),
(86, 'w4b4p323', 80, 'c++', 'C++', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonials`
--

CREATE TABLE `tbl_testimonials` (
  `id` int(11) NOT NULL,
  `type` enum('owner','sitter') DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `text` varchar(1000) NOT NULL,
  `about` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `rating` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_testimonials`
--

INSERT INTO `tbl_testimonials` (`id`, `type`, `name`, `text`, `about`, `image`, `rating`) VALUES
(1, 'owner', 'Sujutha Maturo', 'I have been a client of Puppy Friends Social Club for more than 2 year now and Auntie Kyss has always insured my Dawson has had the best of care with or without her service is impeccable, and I am proud that Dawson was one the first official Puppy Friends Social Club Kids.', '', 'image_1580912680_8554.jpg', 5),
(2, 'owner', 'Lori R', 'My sweet fur baby, Ziggy, had the wonderful opportunity of staying with Kyss and her family for 5 days.  He came home exhausted!  Kyss sent me photos and videos of Ziggy playing and having fun with his new friends - he was having a blast!', '', 'image_1580915021_6898.jpg', 5),
(3, 'sitter', 'Kate C', 'PFSC platform is easy to use, and I am able to grow my business.', '', 'image_1580915187_8519.jpg', NULL),
(4, 'sitter', 'Sara M', 'Working for PFSC is a lot of fun and very appealing because you get to set your own rates and make your own schedule. It was very rewarding and I had good relationships with all of my clients as well as the veterinarian staff who is on call for when you have a pet that gets sick or injured.', '', 'image_1580915229_9678.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transactions`
--

CREATE TABLE `tbl_transactions` (
  `id` int(11) NOT NULL,
  `mem_id` int(11) DEFAULT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `charge_id` varchar(255) DEFAULT NULL,
  `trx_detail` longtext DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_transactions`
--

INSERT INTO `tbl_transactions` (`id`, `mem_id`, `booking_id`, `amount`, `note`, `charge_id`, `trx_detail`, `status`, `date`) VALUES
(1, 3, NULL, 75, 'BASIC membership package', 'ch_1FyGMNLdWQsiF0AL1lzbh0Yt', NULL, 1, '2020-01-07 12:36:38'),
(2, 1, NULL, 12, 'BASIC membership package', 'ch_1G44yxLdWQsiF0ALKsMaAtgo', NULL, 1, '2020-01-23 13:40:24'),
(3, 4, NULL, 75, 'BASIC membership package', 'ch_1G6b1ULdWQsiF0ALlFma6rUb', NULL, 1, '2020-01-30 12:17:27'),
(4, 5, NULL, 50, 'PFSC MEMBER membership package', 'ch_1G6do7LdWQsiF0ALtHrdAzuq', NULL, 1, '2020-01-30 15:15:50'),
(5, 8, NULL, 75, 'BASIC membership package', 'ch_1G9AIdLdWQsiF0ALxKclgAXI', NULL, 1, '2020-02-06 14:21:48'),
(6, 1, NULL, 12, 'BASIC membership package', 'ch_1GAyKkLdWQsiF0ALZ2k4D7b6', NULL, 1, '2020-02-11 13:59:28'),
(7, 1, NULL, 24, 'PREMIUM membership package', 'ch_1GAyNhLdWQsiF0AL9kYPooGQ', NULL, 1, '2020-02-11 14:02:30'),
(8, 13, NULL, 75, 'BASIC membership package', 'ch_1GEcJlLdWQsiF0ALh3lR9l4q', NULL, 1, '2020-02-21 08:17:26'),
(9, 1, NULL, 31, 'BASIC membership package', 'ch_1GGQeHLdWQsiF0ALklSym9Pv', NULL, 1, '2020-02-26 15:14:07'),
(10, 3, NULL, 60, 'PFSC MEMBER membership package', 'ch_1GKiwJLdWQsiF0ALUVuutn4A', NULL, 1, '2020-03-09 11:34:32'),
(11, 3, NULL, 60, 'PFSC MEMBER membership package', 'ch_1GKj7MLdWQsiF0ALv0eKal6K', NULL, 1, '2020-03-09 11:45:57'),
(12, 3, NULL, 60, 'PFSC MEMBER membership package', 'ch_1GKjHALdWQsiF0ALRroS1Qr2', NULL, 1, '2020-03-09 11:56:04'),
(13, 14, NULL, 60, 'PFSC MEMBER membership package', 'ch_1GKl3BLdWQsiF0ALXAYQ7QFH', NULL, 1, '2020-03-09 07:49:42'),
(24, 1, 1, 268, ' with Jennifer Kem', NULL, NULL, 1, '2020-06-21 04:16:51'),
(25, 17, NULL, 60, 'PFSC MEMBER membership package', 'ch_1Gx9UoLdWQsiF0ALY13I21ib', NULL, 1, '2020-06-23 12:36:57'),
(27, 3, 1, 238.5, NULL, NULL, NULL, 1, '2020-06-24 00:00:00'),
(28, 1, 2, 330, ' with Jennifer Kem', NULL, NULL, 1, '2020-06-26 12:55:53'),
(29, 3, 2, 247.5, NULL, NULL, NULL, 1, '2020-06-24 12:57:16'),
(30, 1, 3, 48, ' with Jennifer Kem', 'ch_1GyEAgLdWQsiF0ALVryw3GOv', NULL, 1, '2020-06-26 14:48:37'),
(31, 3, 3, 36, NULL, NULL, NULL, 1, '2020-06-26 14:51:41'),
(32, 1, 4, 215.25, ' with Jennifer Kem', 'ch_1H0svDLdWQsiF0ALL9Tm7SCG', NULL, 1, '2020-07-03 12:43:36'),
(33, 3, 4, 164, NULL, NULL, NULL, 1, '2020-07-03 12:50:52'),
(38, 3, NULL, 60, 'PFSC MEMBER membership package', 'ch_1H9x4pJXIsF9AzPJuqgwloDx', NULL, 1, '2020-07-28 19:58:58'),
(39, 1, NULL, 43, 'PREMIUM membership package', 'ch_1H9x6JJXIsF9AzPJ5IO0INc2', NULL, 1, '2020-07-28 20:00:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_withdrawal_detail`
--

CREATE TABLE `tbl_withdrawal_detail` (
  `withdraw_id` int(10) UNSIGNED DEFAULT NULL,
  `trx_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_withdrawal_detail`
--

INSERT INTO `tbl_withdrawal_detail` (`withdraw_id`, `trx_id`) VALUES
(1, 27),
(1, 29),
(2, 31),
(3, 33);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_withdraws`
--

CREATE TABLE `tbl_withdraws` (
  `id` int(11) NOT NULL,
  `mem_id` int(11) NOT NULL,
  `amount` float NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `paid_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_withdraws`
--

INSERT INTO `tbl_withdraws` (`id`, `mem_id`, `amount`, `note`, `payment_method_id`, `status`, `date`, `paid_date`) VALUES
(1, 3, 486, NULL, 1, 1, '2020-06-26 10:13:16', '2020-06-26 01:03:16'),
(2, 3, 36, NULL, 1, 0, '2020-06-29 19:44:58', NULL),
(3, 3, 164, NULL, 1, 0, '2020-07-14 01:20:31', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_blogs`
--
ALTER TABLE `tbl_blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_blog_categories`
--
ALTER TABLE `tbl_blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bookings`
--
ALTER TABLE `tbl_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_breeds`
--
ALTER TABLE `tbl_breeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_chat`
--
ALTER TABLE `tbl_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_chat_attachments`
--
ALTER TABLE `tbl_chat_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `msg_id` (`msg_id`);

--
-- Indexes for table `tbl_chat_msgs`
--
ALTER TABLE `tbl_chat_msgs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_id` (`chat_id`);

--
-- Indexes for table `tbl_cities`
--
ALTER TABLE `tbl_cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_founders`
--
ALTER TABLE `tbl_founders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_help`
--
ALTER TABLE `tbl_help`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_holidays`
--
ALTER TABLE `tbl_holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_jobs`
--
ALTER TABLE `tbl_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_job_grade_levels`
--
ALTER TABLE `tbl_job_grade_levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_members`
--
ALTER TABLE `tbl_members`
  ADD PRIMARY KEY (`mem_id`);

--
-- Indexes for table `tbl_newsletter`
--
ALTER TABLE `tbl_newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_notifications`
--
ALTER TABLE `tbl_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mem_id` (`mem_id`);

--
-- Indexes for table `tbl_packages`
--
ALTER TABLE `tbl_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_partners`
--
ALTER TABLE `tbl_partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment_methods`
--
ALTER TABLE `tbl_payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_permissions`
--
ALTER TABLE `tbl_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pets`
--
ALTER TABLE `tbl_pets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pet_breeds`
--
ALTER TABLE `tbl_pet_breeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_policies`
--
ALTER TABLE `tbl_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_preferences`
--
ALTER TABLE `tbl_preferences`
  ADD PRIMARY KEY (`pref_id`);

--
-- Indexes for table `tbl_press`
--
ALTER TABLE `tbl_press`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_promocodes`
--
ALTER TABLE `tbl_promocodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_questions`
--
ALTER TABLE `tbl_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ref_signups`
--
ALTER TABLE `tbl_ref_signups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reports`
--
ALTER TABLE `tbl_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mem_id` (`mem_id`),
  ADD KEY `profile_id` (`profile_id`);

--
-- Indexes for table `tbl_resources`
--
ALTER TABLE `tbl_resources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reviews`
--
ALTER TABLE `tbl_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_services`
--
ALTER TABLE `tbl_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_siteadmin`
--
ALTER TABLE `tbl_siteadmin`
  ADD PRIMARY KEY (`site_id`);

--
-- Indexes for table `tbl_sitecontent`
--
ALTER TABLE `tbl_sitecontent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_site_texts`
--
ALTER TABLE `tbl_site_texts`
  ADD PRIMARY KEY (`txt_id`);

--
-- Indexes for table `tbl_states`
--
ALTER TABLE `tbl_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subjects`
--
ALTER TABLE `tbl_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_testimonials`
--
ALTER TABLE `tbl_testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_transactions`
--
ALTER TABLE `tbl_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_withdraws`
--
ALTER TABLE `tbl_withdraws`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_blogs`
--
ALTER TABLE `tbl_blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_blog_categories`
--
ALTER TABLE `tbl_blog_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_bookings`
--
ALTER TABLE `tbl_bookings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_breeds`
--
ALTER TABLE `tbl_breeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_chat`
--
ALTER TABLE `tbl_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_chat_attachments`
--
ALTER TABLE `tbl_chat_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_chat_msgs`
--
ALTER TABLE `tbl_chat_msgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_cities`
--
ALTER TABLE `tbl_cities`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `tbl_founders`
--
ALTER TABLE `tbl_founders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tbl_help`
--
ALTER TABLE `tbl_help`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tbl_holidays`
--
ALTER TABLE `tbl_holidays`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_jobs`
--
ALTER TABLE `tbl_jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_job_grade_levels`
--
ALTER TABLE `tbl_job_grade_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_members`
--
ALTER TABLE `tbl_members`
  MODIFY `mem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_newsletter`
--
ALTER TABLE `tbl_newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_notifications`
--
ALTER TABLE `tbl_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tbl_packages`
--
ALTER TABLE `tbl_packages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_partners`
--
ALTER TABLE `tbl_partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_payment_methods`
--
ALTER TABLE `tbl_payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_permissions`
--
ALTER TABLE `tbl_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_pets`
--
ALTER TABLE `tbl_pets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_pet_breeds`
--
ALTER TABLE `tbl_pet_breeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_policies`
--
ALTER TABLE `tbl_policies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_preferences`
--
ALTER TABLE `tbl_preferences`
  MODIFY `pref_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_press`
--
ALTER TABLE `tbl_press`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_promocodes`
--
ALTER TABLE `tbl_promocodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_questions`
--
ALTER TABLE `tbl_questions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_ref_signups`
--
ALTER TABLE `tbl_ref_signups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_reports`
--
ALTER TABLE `tbl_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_resources`
--
ALTER TABLE `tbl_resources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_reviews`
--
ALTER TABLE `tbl_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_siteadmin`
--
ALTER TABLE `tbl_siteadmin`
  MODIFY `site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_sitecontent`
--
ALTER TABLE `tbl_sitecontent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_site_texts`
--
ALTER TABLE `tbl_site_texts`
  MODIFY `txt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_states`
--
ALTER TABLE `tbl_states`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `tbl_subjects`
--
ALTER TABLE `tbl_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `tbl_testimonials`
--
ALTER TABLE `tbl_testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_transactions`
--
ALTER TABLE `tbl_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tbl_withdraws`
--
ALTER TABLE `tbl_withdraws`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
