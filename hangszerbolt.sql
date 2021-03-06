-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2020. Nov 12. 11:08
-- Kiszolgáló verziója: 10.4.6-MariaDB
-- PHP verzió: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `hangszerbolt`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `hangszer`
--

CREATE TABLE `hangszer` (
  `sorszam` varchar(10) COLLATE utf8_hungarian_ci NOT NULL,
  `nev` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `datum` date NOT NULL,
  `ar` bigint(15) NOT NULL,
  `leiras` varchar(200) COLLATE utf8_hungarian_ci NOT NULL,
  `kategoria` varchar(50) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `hangszer`
--

INSERT INTO `hangszer` (`sorszam`, `nev`, `datum`, `ar`, `leiras`, `kategoria`) VALUES
('B1', 'szintetizátor', '2020-11-04', 200000, 'Billentyűs hangszer.', 'billentyűs'),
('P1', 'basszus gitár', '2020-11-02', 300000, 'Elektronikus basszus gitár, pengetős hangszer.', 'pengetős'),
('P2', 'klasszikus gitár', '2020-11-05', 60000, 'Akusztikus gitár, pengetős hangszer.', 'pengetős'),
('V1', 'nagybőgő', '2020-11-02', 150000, 'Vonós hangszer.', 'vonós');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `hirlevel`
--

CREATE TABLE `hirlevel` (
  `nev` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `honap` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `nap` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `hirlevel`
--

INSERT INTO `hirlevel` (`nev`, `email`, `honap`, `nap`) VALUES
('Kiss Andrea', 'kissamail@gmail.com', 'április', 18),
('Kiss Zoé', 'kisszoe@gmail.com', 'június', 15),
('Nagy Elvíra', 'nagyelvira@gmail.com', 'január', 17),
('Varga Márk', 'vargamark@gmail.com', 'január', 10);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `hangszer`
--
ALTER TABLE `hangszer`
  ADD PRIMARY KEY (`sorszam`);

--
-- A tábla indexei `hirlevel`
--
ALTER TABLE `hirlevel`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
