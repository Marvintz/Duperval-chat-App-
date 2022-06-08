--   structure de la table `chat_users`
--

CREATE TABLE `chat_users` (
  `userid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `current_session` int(11) NOT NULL,
  `online` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- insérer des données pour la table `chat_users``
--

INSERT INTO `chat_users` (`userid`, `username`, `password`, `avatar`, `current_session`, `online`) VALUES
(1, 'vannah', '123', 'user1.jpg', 3, 1),
(2, 'jess', '123', 'user2.jpg', 1, 0),
(3, 'adonis', '123', 'user3.jpg', 1, 1),
(4, 'kate', '123', 'user4.jpg', 0, 0),
(5, 'robert', '123', 'user5.jpg', 0, 0),
(6, 'olivia', '123', 'user6.jpg', 0, 0);

--
-- Indexes pour la table `chat_users`
--
ALTER TABLE `chat_users`
  ADD PRIMARY KEY (`userid`);
  
 

--
-- structure pour la table `chat`
--

CREATE TABLE `chat` (
  `chatid` int(11) NOT NULL,
  `sender_userid` int(11) NOT NULL,
  `reciever_userid` int(11) NOT NULL,
  `message` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes pour la table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chatid`);
  
  

--
-- structure pour la table `chat_login_details`
--

CREATE TABLE `chat_login_details` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `last_activity` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_typing` enum('no','yes') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Indexes  table `chat_login_details`
--
ALTER TABLE `chat_login_details`
  ADD PRIMARY KEY (`id`);
  
  

