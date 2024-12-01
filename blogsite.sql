-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2024 at 12:16 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(12) NOT NULL,
  `authorID` int(12) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `tags` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`tags`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(12) NOT NULL,
  `postD` int(12) NOT NULL,
  `userID` int(12) NOT NULL,
  `commentTxt` text NOT NULL,
  `posted` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `country` text NOT NULL,
  `subject` mediumtext NOT NULL,
  `datewritten` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `firstname`, `lastname`, `username`, `email`, `country`, `subject`, `datewritten`) VALUES
(1, 'Frazer', 'Harness', 'FrazerGTFC', 'frazergtfc9@outlook.com', '', 'Hello I think Euan&#039;s website is better ', '0000-00-00 00:00:00'),
(2, 'Frazer', 'Harness', 'FrazerGTFC', 'frazergtfc9@gmail.com', 'uk', 'Hello!', '2024-11-30 22:43:14'),
(10, 'feg', 'ghgjhg', 'EuanSmells', 'frazergtfc9@outlook.com', 'canada', 'ho ', '2024-11-30 22:50:09'),
(11, 'Frazer', 'Parry', '', 'gregs@gmail.com', 'Canada', 'g', '2024-12-01 13:34:05'),
(12, 'Frazer', 'Parry', '', 'gregs@gmail.com', 'Canada', 'g', '2024-12-01 13:36:01'),
(13, 'Frazer', 'Parry', '', 'gregs@gmail.com', 'Canada', 'g', '2024-12-01 13:37:52'),
(14, 'Frazer', 'Parry', '', 'gregs@gmail.com', 'Canada', 'g', '2024-12-01 13:38:16'),
(15, 'Frazer', 'Parry', '', 'gregs@gmail.com', 'Canada', 'g', '2024-12-01 13:38:29'),
(16, 'Frazer', 'Parry', '', 'gregs@gmail.com', 'Canada', 'g', '2024-12-01 13:39:32'),
(17, 'Frazer', 'Harness', 'FrazerGTFC', 'frazergtfc9@outlook.com', 'United Kingdom', 'Hello! thjis a notherr tedt', '2024-12-01 13:40:18'),
(18, 'Frazer', 'Harness', 'FrazerGTFC', 'frazergtfc9@outlook.com', 'United Kingdom', 'Hello! thjis a notherr tedt', '2024-12-01 13:40:46'),
(19, 'Frazer', 'Harness', 'FrazerGTFC', 'frazergtfc9@outlook.com', 'United Kingdom', 'Hello! thjis a notherr tedt', '2024-12-01 13:41:25'),
(20, 'Frazer', 'Harness', 'FrazerGTFC', 'frazergtfc9@outlook.com', 'United Kingdom', 'Hello! thjis a notherr tedt', '2024-12-01 13:42:02'),
(21, 'Frazer', 'Harness', 'FrazerGTFC', 'frazergtfc9@outlook.com', 'United Kingdom', 'Hello! thjis a notherr tedt', '2024-12-01 13:43:12'),
(22, 'Greg', 'Test', 'Test', 'test5453@gmail.com', 'USA', 'Testing', '2024-12-01 22:27:38'),
(23, 'Frazer', 'Harness', 'EuanSmells', 'frazergtfc9@outlook.com', 'United Kingdom', 'ghghghghgh', '2024-12-01 22:48:44');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(12) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `post_txt` mediumtext NOT NULL,
  `picture` blob NOT NULL,
  `created` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `post_txt`, `picture`, `created`) VALUES
(2, 'What we have learned ', 'Learning project 1 ', '<h1> Hello <br> Over the past few weeks we have been introduced to many things </h1> \r\n<p> On our first week we looked at VS Code and how start to use HTML</p> \r\n<p> We Then used Mimo at home <br> to learn how to use HTML CSS and Javascript </p> \r\n<p> We then the next week downloaded GITHUB Desktop and Xampp which is the file server </p> \r\n<p> Then Next week we started creating a film site with trailors for Films in 2024 </p>', '', '2024-09-26'),
(8, 'Football: The Beautiful Game', 'A post about the global phenomenon of football.', 'Football, known as soccer in some parts of the world, is the most popular sport globally. With its simple rules and minimal equipment, it is accessible to people of all ages and backgrounds. The sport\'s rich history dates back to ancient civilizations, but the modern game as we know it began in the 19th century in England. Today, football is more than just a game; it\'s a global phenomenon that brings people together. Major tournaments like the FIFA World Cup and the UEFA Champions League captivate millions of fans worldwide. The sport\'s greatest players, such as Pelé, Diego Maradona, and Lionel Messi, have become legends, inspiring future generations. Whether played in a professional stadium or a local park, football\'s universal appeal continues to grow.', '', '2024-10-03'),
(9, 'Films: A Journey Through Cinema', 'A post about the evolution and impact of films.', 'Films have been a significant part of human culture for over a century. From the silent films of the early 20th century to the blockbuster hits of today, cinema has evolved dramatically. The magic of movies lies in their ability to transport audiences to different worlds, evoke emotions, and tell compelling stories. Directors like Alfred Hitchcock, Steven Spielberg, and Christopher Nolan have pushed the boundaries of filmmaking, creating masterpieces that stand the test of time. Genres such as drama, comedy, horror, and science fiction offer something for everyone. The film industry continues to innovate with advancements in technology, such as CGI and virtual reality, enhancing the cinematic experience. Whether enjoyed in a theater or streamed at home, films remain a beloved form of entertainment.', 0x52494646d01800005745425056503820c41800009094009d012a3a02ac013e4522904522a22211e9247c280444b4b77a9ff87c78678edadc81e13b7f933fc97f63f127fa17f31fc69fec5fbc3f1ef4ecf5c7983c4a7e3df4d7ed7fcdbfb5ffcffca4fbbffd2f7bbc00bf0afe27fddffb7fecf7f78f80c7c271da803f54feadfddff377fa47ce27d1ff90f47fe603dc03f4c3fca7f5cfde9fed3ed8bfedfc54f681f001fcc3faa7fe1fef7f939f165fe27f78ff11ea27e81ff8ffe53e04ff957f58ff51fdebfbd7bd07ffff759e8dbfac7fffc5c1258ddeb1bbd6377ac6ef58ddeb1bbd6377ac6ef58ddeb1bbd6376054d61934ea748567df67836cf06d9e0db3c1b67836b74d4ebb1d711b8c8d949df3d3af74f0686698c75d4a0725e865d33c18aeee8b1bbd6377ac6ef58d8242d16b107e31035b7b4dddb6b790d4b3e118cd02be30521eb31933d9e1ce4537b684347961587513ef143836cf06d9e0dadc45c31597572deae8fbb527ccc5561c56419ea4c3429c632a8efd5196239508fcd8d1836dbce8d6b1e9ed225bff6f9d19cc560d6753bbb64104e889361126c1563d24a573ce2ca049fdd37387f2ac7f0c417fbeac15b03c12a343ff9eec575774a39f9c4642c7015137536285282988d176feb050fef969da5a017a7b2f63ce889361126c213ce40b0560b34ef69c9faa50d5be041f2eaebe33a899462f7cf4131f6a79f26da41c0c822e9dcd904d1e8fd428bdc38da18c77ae29a072120ba6c6ef58ddeb1bbd61b27261706e50353c45cbe3aa78b307cf256c613ad5f5608d6ff387db797ffa2637f87c56b67ecd23822c6ef58ddeb1bbd637783f4817a15a397ed3ae691c12f3ae6f96687bcc7d5c915c11251ee2b0d6e9309d386889361126c224d826a95254d9a17054c1d45e5d99cb2ee7177d7a05e029039f01840e69c377b095b112e6583c02a98ad937763997f3ca2503d6e8f5228abd72b33e3b8096377ac6ef58d7ce10c67a9f5e69b7b5c6eafce8e96d051e5ac4fd1c82755f29a980dd88e5cb5148f5612812218f99ed2f437d00f05d66abb1fe19c03c8f8bd2e0db3c1b67836b59d58b46c007ac0ebfb9acf8f7f16094f74928442f341822034aec013316aea27607408a373cac60e817e8732508396c341ecb42c6ef58ddeb1baf75a0e1992bae0cfd6e14d7433066517e82b41a29a1cc70edf43569fa1d5f8555ac66fc6ca528dcd80bb1a9c3b5f2e57ac5e11bd6377ac6ef5889ce20243cc422ee49537975195852ab8d2c46042e9d0e9b6ceb1f2859b375dc5176b23c9e0adac6ec5ebfa78495dfe118964f7537041b67836cf06d9a6c5eb1bbd6377ac6ef18e77d8496377ac6ebdee2d1126c224d84498d97a74e1a224d8447c479d1126c224d84498d97a74e1a224d8447c479d1126c224d84498d97a74e1a224d8447c479d1126c224d84498d97a74e1a224d8447c479d1126c224d84498d97a74e1a224d8447c5144409d1126c224d6d1c4b8670db3c1b67836cee57266ef58ddeb1bbd622766ef58ddeb1bbd513df61258ddeb1bbd622766ef58ddeb1bbd4e4ac65348acf63a765036799a127428b0b36650ddbda0a2599912007b2015dae99f4adce3b764e3c1b627addd252ef58ddeb1bbd6377ac6ef58ddeb1bbd6377ac6ef58ddeb1bbd6377ac6ef58ddeb1bbd6377ac6ef58ddeb1bbd6377ac6ef58ddeb1bbd6356000fefda8f00123e4637374cc404c9b1713105933d2c67b85da10865f6b0171d828cba9895921a4099decabf8748ee36b266427dc69834be09ce6fffc4181a84cad9d0dbeafba0331b97973192db8dc4ef8b70e403b40e9e8f7242a850b08de6a1651a7d556b8acb746c086c9b999b0260989ba4c73a1c9c2b1bf391f1bdb1aeb559a4fb6a2b8684716937476a0aacb6131f7d4b22dd4a5fe7855e82b0de8d1c7583267027d83d72c96742c2230a25f90bd74d7af64904020a009926a82f1e8cd07831f66b5746975d9950f1acd6a2f9a9d491282a09a0ec2a3732d52474927fff81b60765c600a65e5355795b589fc4d05cedf826f795144e10dce996fcfc4f8f4c065707ff23dff9ef9fec459e34862ad8d3af5154d3ab3f10eb146b72dedd62382381f222158f5ba02f323972a15ea6f23e8f918bf00ef14ad727fa6e1b60001d217844ea9920f5f83aab0ff3b7d24ca2f1f6bff7c1d823095c02249304259deacfe424cf8a548d3d353c4b4be28aa8c08734218622d4feeda7e398541e80ab34717e506a9133082e64a88ca3f2517a4bf177d1ec2247b76713c24c1837148cc60a85bf7455921aecf978f3b153722fdc15f2da2bf122c90de75c2ebe1b025812d1d77d8f64c3d3fbb522ec39359036711b7ff192e783bdf9824ae719dd16c06fcf238a19b8bc2a2b33ef964a506a880aca218bf9f6ce320b3305f902f411def7dd21e6a3877e6fbb34c4cb90e090eed99f388e49716fc15c779edd013df9b1bd399528513306a09523368d5e61e03ce70c9c5bde629782ef45e86dc1a87f4539b8e73547139dbf7caa08771c8ce1d640ac2b8eb9701c8a72469944f683ce84ac28dcfcf4c1ee07136063351f7b5e285cdb6bde336a7899414fc7a0d95c5eb4f0768710d95220ef5e8da1de7801cfb620855def12b4b8ec5c1170a08170df78ed96c06d46350817c5374913fe0ec393fa38090d043e7b297195ee5b86c9762b2d80bc8de7504c8cae81a65292894b7864c55e87dbe3b0c6c17fc6a1ffcd28d1b96d4553f1330a422024b07e52555c771729ee954a7ed00f6da6e833423b11dd387daf684ac624bafd842011def2408193daa57024677d3bf10aa8f0984b97403d641d3f1d1f38423a3eafeb842bd8a36b8916c75d3ff030f0f51ec7b1b1e612029cad89d7a4b9db39aa9390e3e7b697975dc6ea86bda80b3c90b62b1478dc8222fe595274930389750fe1b139cf73d549e40f3de1dde5fb998baef63564c6e138e61eb18c31aad6587c9f8ed5ca59848bc15d74a4f97795f68d5ee08e0b565b281d72c59345f036e3c5c094a8a4060e47dc8e7c9d844fc475da3ed071756d77f59c01b9498c33cec1cd1483142f29f01a20bc9e3f6b7c77af00b01f8013b231e583be818a6a901e72913f5a02574f55fe0d3daf117ac92e4e7fd11dbfb2fa4aae6d6b87483d1e7304a109dc57ade18069f33005cfc4e651e01754bbb44cc5803a47e18a341248c0ba6f2b3d9adf75a82b6588698faa2b901a0316318d20419104414a47994f938ca935815ef3c789c7d47b25c9cbdda69cf3e878082b481fc55fc1e802de9f5e308d87f408e8f9eb5ce900342f49263ae6cdb799eb2b0616e264c03c50af8367b7b7d1bd64a156f0ed1fc8e4c1ced2083a3eac833405e10abda1f100f975a79444e660bc71a40225d16dbf6e2bd6adb653fc83fbfa13885d8f2f0e1afdfc8791b3c5830c4175ee908ffaf60ce997ffcbf6724c5eee28cfb36efefedc750f4bff130178179e464606f56b7816f91ea073b03f8eddc769b1bd77ed85255b92b67aeb1cba6a718e089c9567ff4664d855b66f4520371ed780a7e45eb94090d935cdaecc0747788c2f73f92fe24e2ed43cd1e968838474393192102710dc3717b9a5a08bf4bca92e367979785cd8d73283150a35ef327fc71ba7f76557058d25fa65c0ca4fa00a2f788846e62d031c5246972c8388ec476c3251ef5adb8b13fd4550fd1ba5ac4438c0c658e6ea32cf91bc2a219ffad35821a1245ec46d44ab73ebcfbf291cbf3060a2d3f52f01cbb40633ac74b93590a30e54b660f4d09bbfd48f5bad675f2ff796677b2e45161aae5d1ab99c8a88b00ff4bd907fddae3b3d337c211f439f9b2fc882656864d2b974cad0bb62f1fd9426a336f536681c01d169d5cbf842e4a3a8c7c577e495beb8cc044c0e569185422f988f5c37e736f079ec8afcf9cfed246c0f847ceede45fb743b456da99e04e3460825aa66077e0eb929b8f211a014384cc79ae9fa8627ad0251b820e0869be07d09d19d5e916d111ec4ce2b02fd435fe96667b17d34d0f2b0e6bfed77bde8545e553b7706df4d9040beb98d47fe1a6ee561a4db5cd1796475b69abc49ef12935dfa7eb6fd3c5957b6ddbb908e8d5986c86b759bab5f205394a469f1b382a730b6d76080dab3fa3f6f51b0d5cbb06420e3712184e500d4e1fecd73462ddceb5dd92cd615fc0693205e0dc8c51c47991637ebd22248c00f439b2bc70d4ffa427399bb5efb68b089f48e3ebf5384f3f2d59f807d1394ae2e9e8167fc4a755fe5be0ea32b9c34813ffe9ea6411b2ca49e86b92b210097fabf2c738bd9122172800f10f219e717e9064b2a18774dc7a86bc0836a8dd28c76a53514f2d77dd0a999b237408b1f9c0dd7f0f8a4e7f69bfa3067ba04847e44039d0a0403d789432246c6aec34eedb62b6c470d313dbf2459d50823ff407da5407cedf68eaa01c33f1c57d239ccff9b93d50d47975b03b6c8deb89e8c73a5e160b053e02cf33d7e5d69a8687310342cac0a81652e6d6c2fc8251a8e0e2f9b43530dc705f54c98c6edfae829dbdd1a4302a1077c838dc3597c58ada3459e682a26eccf9b0408411497d7e27f9abf88f969c0d4ca28aea4d2a8ef1221891d7c65d3bdc0cfe90c5fd9c382b47fb9163929d1cff239f2add8ebe6bca1dc58f9046d4c34d7d2524055daf3811dac9b5419f87cc6f6ebd278b02a67b5c960da9de241f7f27450672153cd78be4ec095fa4461cb32538a06fb2a55ddde3de56434b66ba3efaa8860311af3bc0d0c866cf50c35de74aa7ee34ab0fc6c6a31479981f0444dfff11388e3e0c58b94411f78bb52182a363ded5346f2abed6ac9b091cb72f9721c4bed48679d0e9fab5e59e1acdda52a113dd2fbc85efb983896b5660b335e3bd0c51812ed3e3832638d9e01e8d1b3a7b187f52e5a8e1ddc5ef4710f3c080b6b08602b9988f704d102b594b178970d4902fbfc1bcd9361f5e2b09b223b18f7c11015b3191fc946af2d7010b1037a8e7c5f9f1b5fac853bfbfba016ac628f40cc72d9e22669e61a48fce9fa86b18fe06b64ea838e04d6fea1cf262c4477be4cbd754a054d9679dae493b901c63ada6d0bb4c49a8d89b000bffc80492430572a37a3cdce7f795920722b2b7576c17721282b4c2f24c3b9f04ca7081c3cf62b5347ca7395393eb21c02f5ed0db407f7a87bf46ba08ad7075e4476c50fdbd3a50186fbef1e918affca78059458a7d7f826670f6d1f3f0e6e0aec7b26ddefa89b56bb09a79bcab7a4c5cab58a82fb077ab14926f9ba8529b9cf9183649266adf6695d559f7b4be16f4fab3d5776eca47ff3078bca8a9f2df793900592a4931da29cec984e3464617e92649dfc4e4cbbed0286a94a6501e37408435d10e8890657a16b3f18db8d60db77f04193bab2eba2f656011799229228f7fb2b62198c20f283d53fb0852aea3ff700227d46f6dbf3c3300296e0c31d56a2a9905f6333372292f5e9cc04a8e32433d4540da49f52ad8b79e58e615ff0f66a44853db7e94dc7c896663279eeb8d59f076c503a51496443a32acb8339689868acc6acb65946a6c9e9e9d2f91d2fcec742a83d3e103f4f1d28b8d7e4fcf2f97a9ff066dc393a429ea00b4cc92deb4380f32b04fb688f0b9ae84ba393dd98817af9e29795fc41706e196d0570d85004f7f9261724dda3b4152783fd60dcfedcdeb0749611b1c771d57a387e7e618782465e3596b5fa587d5136a7102aa6f0cccf7a9b2fe30963a9f7eaf26cb3afbdf055a5862be421c0d531860ae40e6ba6ede185dfdc7a2eb39a152abbb583afe980c9ed10384c54e3cd85f4fec6854fdce86f1fa434d4e3804103f7a280f634e05019c7dd67c45a2d2a8260cd69c553ade66eaf2d42024c75a9678e52b4a50d4577289158dc24d977f31f810487634c701c8992e9d3653801713fdb6b08dcc6c6124f7e87a7726ef8262f0ebd30c55cb465b8237901fe75c45002698344393924c6886a13e2b6e465aa4b31e9f3aae28883b611a5a3f2736ddaf427e65626fd6dae28a69feaf0fb1ae626e438d66094cea80c1eb1b5e9e29f824bb5335ee87006fa93e26b9b5160c44ea35653fe222b3763aa1d5bfd5346544a4e54d9af310314a4d917fd9154585278284cd94509b19377f2b9f9a133661140fa6987c92ba950349f773933fab1d8c0045d8e1ff65a1255e8f7545b585d6416b9b24c60a14f202993e891a4e0c64f5a4169110157b06644e294b7e7de574ac199138a4ef96b3e84f39488d5bf72a0261386233ea31c06bc1a1a5d6f88f61124c973039b5ecc03e28268f4888941814c82dd95605c87d962c957ce8a8062ba89f474327dca0ceb82d776d025682ea124fa3895b7bb8c611173579e30cb5ea7f2f08e85da795d25f73325cd7402ef32d5ad9bf0a30b77fd47586d1678617649e79fa7b536f8091a17c3c11729181b39d428794e8b81a1e0d34e9a826314d9504ff8f8bc3c62917608ac38df9b9a1b405a0bf1182bf3db14693bc2c53fef170a79c0d8ffefea90c3e618b7c01a3d4cabbf05f9e4c348051f3c7aa62d91b313b84eaf3babf744196266ecca8828ef021e73d3f2ae3a007a5ee20b43ff875dbd3f19b367f8b4f440ebd9eb7b9c8051edf7f320bbe5d033734bdba4e0490d744ebb4ff28157874a8a05e7cce77f63460c37667d7f19a70be3af78d8ed241593bfdde15bf180a8675b056eefae5a3797fc5943089380c81a586664a002b332112df61255fdb0e7754a4f7aae96cfccfc79d306e3864d214f8eafc798e38195b31d74436e9a24d19ab93cc47577565d043ee45e3afdde7daa0c5f602cc1e444c7c09aa1da93093573226729b790a933d227611a199c1aa1578903f3291b554abb33082cc5b8d60d8f747afc61ac4d9b4f87d46aa5217a3ab6b8dede8289e9599bfbe80cd03a70d27ca3480cbd71b2e3b25967cc4eff0ff0625b08cf3ad2bf5bd4cb5f9fd4eff61af8dabbc1446041cbb2cfc85dc92d161149a6d0439b62c9984cd2aa1b8c681cf9e1a2415e4690a80cca084369256007630d75ffed8dce7e1dcf886f6a90bea4851f3dfcc055bb50b8b870910aed692f9b2214db4d3ac0d468c79c698fc2d2715492b0f049a430d52def708f220df539cabd5cd1c9489ecdbe9190bfd2c09d1df8c6d4a1704f4c6a2a2b114d2d96ce3d111c1a73c1befec0d6d23558fec89cc45f40c076ce62f313419ecd8d48cb753565db4814680f7ebc81b08599bceb2c3617ed00e75d4c91b2d0f888cc0330c605405a8c19eb05d084f3f2d048b8d91438b483220d4902b2207f7ba40f0fe035a9aa9820b632414182711734a031250d81a30af0937c9adae0405f950ca7bed65489063bb06b072b954b3e5ae9fa28bf863dead607c1df123cef95088f0f875789d1c93e6c4e2e9d7aa6e19b61be703ab7e30ca48d872e9da17d7c4d8053ebd30e5d662c964f2f0caea93ae94e758e3d47ac1f3066f31fba1ceedad7be1bae2c4b06a95507ccf815262b506af7ee67ad112685e6562655e7c387910e59444322cb6bcc285a0792a6467e30f9e25868f452be832fc8323a1a9698edcfc9a2825d8350be37e9e80295bfa399b4572f02747311aab22113ccf8d5685e6278e43f7cabdffa5c4dd5e44042b1777a5fbc09b3bf67c32f700ab05792b0c52139e2fe19d0408a2c8ba9065aabee7aa6ae7a29f921424bde36a175a4906ac8e0256c71b2e77c4b17bc4187a6e2bc7d736891945d1ff899ec486e893dbd9e6e08668bb1c72986bbfd7b6a08c3107fbee0b0232494dcecf90ef5107a42f6286f2a847a07ce57daa414060d515bb6bed0e1c4017e03e13a2363e6a12d66bbab44f13f12cc9e1a7edccfd03eebe0ecb9d43ec458277de451b68233d0fa13b116e2f9f985d249d0b7eac049e90b65516befd7ccc35cb10c35d7ffb6694ecc3657a40c490cc87b1c3feeac5b5204b51eaccb698708c050fa7e29a2f5f6f0bf390e40eaf2cfe0160baf4e4b2aba605fce4e455b3bf37903ca89acedf63ca23bddf2e4bf5777dfe83e517edc747db237c52796712e4bce4caeb36189f671bc75f414ae27826a07081f321646f80028d53bd07b5ebf519f801440b3565f0248af17520ea4f1b3cc1265d12f9b788097d13217ee018f35bdde1085f747b27a1ce5c13cc78f22e184f25afd9d80584e28ec4c996199b6320e14a6f6c082108b354dd5fce364b37ffed03b1fe1d1f98727633945155fdb6e40b1087b3fb1f0fd2411543c20872df77affba69d7ebc4400220669a7f2805844873ee20f247f9272b45a8f2096ad0bc2fcbfffb6d05ddfddb891cdd1d2817394b0d019111444f1b8e8e4c01b58b3d40efdb47d4d0e39bf6b6ceed1b24e686c807cceb6d93fe6e2c20a64e42c50ca05abbb4c949391e87ba728e7b0f7f419ec4e86a775dbe0cd1e0201b84c39a96f1353e02337ef4d5db250cebcb10e87957676c95923fa0e2e0cbd955b71efa225328499079d621247fe0393889de763ec1c7df7cf2683bfbf6ddc720fa91fc81e881a8ce269a7c82621cf58363509ebc8db580f50bbca368ffeba4b167361ae7280c91ee7086385e924ce18be9fd9e092238b4cffffb10e38733663b31eb2d0030ed1f1e9e70c4acdeb01ef4dacb9fc03e010a8e66aef0ea56df5bb2d49afd72034a8000b6020be5f56f20f1291097ec445840ddb1917ed5493d13a61d772012548621507ce1c8b0deafa4e756c17ff12cf8ff43a3be307ef8845c47e568a51b4a345233ab0f4b90305ae080197cbd421af09e2f3e12a61894f1ae8b2c39fdf91cf8e7bcf955ee3475a3e69299a766efd3286cc0941b7c9410da9c659768f9a0c3f81743da6fa8b295582ee7992b917f4b87e92d392d52af86e046ffab85fcf288fe7f828c27ecdd87f0d064cb964bf027eee272869888c878d25f3ab1871e14ef618acf550374c4034f3524bee6578b47fdf20000000000000, '2024-10-03'),
(10, 'Music: The Universal Language', 'A post about the power and diversity of music.', 'Music is a universal language that transcends cultural and linguistic barriers. It has the power to evoke emotions, create memories, and bring people together. From classical compositions by Beethoven and Mozart to contemporary hits by artists like Beyonc&eacute; and Ed Sheeran, music&#039;s diversity is vast. Each genre, whether it&#039;s rock, jazz, hip-hop, or classical, offers a unique listening experience. Music festivals, concerts, and streaming platforms have made it easier than ever to discover and enjoy music from around the world. The evolution of music technology, from vinyl records to digital downloads, has transformed how we consume music. Despite these changes, the essence of music remains the same: a powerful form of expression and connection.', 0x696d616765732f363734636362663962306234372e6a7067, '2024-10-03'),
(13, 'What did Euan Do Yesterday', 'feg', 'fdfdf', '', '2024-10-10'),
(19, 'Grimsby Town FC: A Rollercoaster Season in 2024/25', 'Here&rsquo;s a look at what&rsquo;s been happening at Blundell Park this season:', 'As of now, the 2024/25 season for Grimsby Town is still in progress, and a detailed review may not be fully available. However, I can provide an overview of the club&amp;#039;s general situation based on its recent history and season trends. Grimsby Town, competing in League Two (the fourth tier of English football), has been facing challenges in maintaining consistency and pushing for higher league positions after their promotion in the 2022/23 season.\r\n\r\n### Key Aspects of Grimsby Town&amp;#039;s 2024/25 Season:\r\n1. **League Position**: \r\n   The Mariners are likely aiming to stabilize their position in League Two. Having just been promoted, they would be seeking to avoid relegation and possibly aim for mid-table safety or even a push for the playoffs.\r\n\r\n2. **Transfers &amp;amp;amp;amp; Squad**: \r\n   Any significant movements in the transfer window, such as key player signings or departures, will have a major impact on their performance. Grimsby Town&amp;#039;s squad has often had a mix of experienced players and younger talents looking to make a name.\r\n\r\n3. **Managerial Approach**: \r\n   Under their manager (likely Paul Hurst, given his involvement with the club), Grimsby Town will focus on a balanced style, blending defensive solidity with counter-attacking football. The manager&amp;#039;s ability to adapt to League Two&amp;#039;s demands and manage squad rotation will be crucial.\r\n\r\n4. **Form &amp;amp;amp;amp; Key Players**: \r\n   The form of key players ;strikers and midfielders will dictate much of their success. If top players remain injury-free and in form, they could help propel the team to a strong league position.\r\n\r\n5. **Cup Runs**: \r\n   Grimsby Town;s progress in the FA Cup or League Cup will also be important. Historically, cup runs have provided the club with both financial rewards and a morale boost.\r\n\r\n### General Outlook:\r\nThe club&amp;#039;s primary goal for the 2024/25 season will likely be securing their League Two status while developing a competitive squad. A successful season could involve avoiding relegation, strengthening their squad for the next season, and possibly launching a run in one of the domestic cups.\r\n\r\nIf you&amp;#039;re interested in the most up-to-date performance, I recommend checking out live match reports or club-specific sources like their official website or social media for current results and detailed reviews.\r\n\r\n', 0x696d616765732f363734636336663962366630642e6a7067, '2024-11-28'),
(23, 'What did Euan Do Todaay', 'Hi hh', 'Harry scared euan forcing him to react ', '', '2024-11-28'),
(34, 'hjhjkhj', 'hghjghjgjhghjghjgg', 'bilrhnbnbjkhjkhjkh', 0x696d616765732f363734636537343263373434332e6a7067, '2024-12-01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(12) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `birthdate` date NOT NULL,
  `region` mediumtext NOT NULL,
  `status` enum('active','inactive') NOT NULL,
  `role` enum('admin','regular_usr') NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `firstname`, `lastname`, `birthdate`, `region`, `status`, `role`, `email`) VALUES
(1, 'FrazerGTFC', '$2y$10$y7kAtlLGtnm3Gobu4bKonezUZT3YoUEpIrXI2Dg2YnvDbMbZDRtgu', 'Frazer', 'Harness', '2008-06-07', 'United Kingdom', 'active', 'admin', 'frazergtfc9@outlook.com'),
(2, 'EuanGlynnRobertParry', '$2y$10$fpfTdH6QGxVB.EYVqlZVZ.an4R8gD4pqILGz6HbMoYsjPIiGwJuv2', 'Euan', 'Parry', '2007-06-07', 'United Kingdom', 'active', 'admin', 'euan@gmail.com'),
(6, 'Test', '$2y$10$eGm7wr6n7Qk139VAEXvQQ.1XDtG9expHlfwuaBi8IU2CF6/asuPHO', 'Test', 'Testing', '2012-01-16', 'United Kingdom', 'active', 'admin', 'test5453@gmail.com'),
(7, 'EuanSmells', '$2y$10$T9qtrsd/iNAsDdULF8LluODn/Or.PNXYTKzDsByW8FcBQDJeFVYWm', 'Jacob', 'Coates', '2007-12-15', 'United Kingdom', 'active', 'admin', 'jacob@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(12) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
