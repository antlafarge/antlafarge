# SQLiteManager Dump
# Version: 1.2.4
# http://www.sqlitemanager.org/
# 
# Serveur: leetmovies.eu
# Généré le: Monday 06th 2012f August 2012 04:54 pm
# SQLite Version: 2.8.17
# PHP Version: 5.3.14
# Base de données: leetmovies.db
# --------------------------------------------------------

#
# Structure de la table: videos
#
CREATE TABLE 'videos' ( 'id' INTEGER PRIMARY KEY, 'displayName' VARCHAR(255), 'year' INTEGER, 'file360' VARCHAR(1023), 'file480' VARCHAR(1023), 'file720' VARCHAR(1023), 'file1080' VARCHAR(1023), 'views' BIGINT DEFAULT '0' );
CREATE INDEX videos_id ON 'videos'('id');
CREATE INDEX videos_displayName ON 'videos'('displayName');
CREATE INDEX videos_year ON 'videos'('year');
CREATE INDEX videos_views ON 'videos'('views');

#
# Contenu de la table: videos
#
INSERT INTO 'videos' VALUES ('1', 'Frag or Die', '2002', NULL, 'http://dl.dropbox.com/u/83275554/2002%20-%20Frag%20or%20Die-480p.webm', NULL, NULL, '11');
INSERT INTO 'videos' VALUES ('2', 'Mindtrek LAN 2002', '2002', NULL, 'http://dl.dropbox.com/u/83275554/2002%20-%20Mindtrek%20LAN%202002-480p.webm', NULL, NULL, '5');
INSERT INTO 'videos' VALUES ('3', 'Hard Clan - Die Hard', '2003', 'http://dl.dropbox.com/u/83275554/2003%20-%20Hard%20Clan%20-%20Die%20Hard-360p.webm', NULL, NULL, NULL, '4');
INSERT INTO 'videos' VALUES ('4', 'Status Owned 2', '2003', NULL, 'http://dl.dropbox.com/u/65105662/2003%20-%20Status%20Owned%202-480p.webm', NULL, NULL, '11');
INSERT INTO 'videos' VALUES ('5', 'The Art To Frag', '2003', NULL, 'http://dl.dropbox.com/u/83275554/2003%20-%20The%20Art%20To%20Frag-480p.webm', NULL, NULL, '7');
INSERT INTO 'videos' VALUES ('6', 'Choual History X', '2004', 'http://dl.dropbox.com/u/83275554/2004%20-%20Choual%20History%20X-360p.webm', NULL, NULL, NULL, '3');
INSERT INTO 'videos' VALUES ('7', 'CSFrance Saison 2003', '2004', NULL, 'http://dl.dropbox.com/u/83275554/2004%20-%20CSFrance%20Saison%202003-480p.webm', NULL, NULL, '3');
INSERT INTO 'videos' VALUES ('8', 'Jaegarn 5 Enemy of the State', '2004', NULL, 'http://dl.dropbox.com/u/83275554/2004%20-%20Jaegarn%205%20Enemy%20of%20the%20State-480p.webm', NULL, NULL, '4');
INSERT INTO 'videos' VALUES ('9', 'OCRANA.ATI The Movie', '2004', NULL, 'http://dl.dropbox.com/u/83275554/2004%20-%20OCRANA.ATI%20The%20Movie-480p.webm', NULL, NULL, '4');
INSERT INTO 'videos' VALUES ('10', 'Only FR 2', '2004', NULL, 'http://dl.dropbox.com/u/83275554/2004%20-%20Only%20Fr%202-480p.webm', NULL, NULL, '11');
INSERT INTO 'videos' VALUES ('11', 'Ruination', '2004', 'http://dl.dropbox.com/u/83275554/2004%20-%20Ruination-360p.webm', NULL, NULL, NULL, '16');
INSERT INTO 'videos' VALUES ('12', 'Toop Players 6', '2004', NULL, 'http://dl.dropbox.com/u/83275554/2004%20-%20Toop%20players%206-480p.webm', NULL, NULL, '7');
INSERT INTO 'videos' VALUES ('13', 'Voodoo 2', '2004', NULL, 'http://dl.dropbox.com/u/83275554/2004%20-%20Voodoo%202-480p.webm', NULL, NULL, '14');
INSERT INTO 'videos' VALUES ('14', 'Megapolis', '2005', NULL, 'http://dl.dropbox.com/u/83275554/2005%20-%20Megapolis-480p.webm', NULL, NULL, '5');
INSERT INTO 'videos' VALUES ('15', 'PaTyoJoN Play It Hard', '2005', NULL, 'http://dl.dropbox.com/u/83275554/2005%20-%20PaTyoJoN%20Play%20It%20Hard-480p.webm', NULL, NULL, '11');
INSERT INTO 'videos' VALUES ('16', 'Project Skeard', '2005', NULL, 'http://dl.dropbox.com/u/83275554/2005%20-%20Project%20Skeard-480p.webm', NULL, NULL, '8');
INSERT INTO 'videos' VALUES ('17', 'Pubmasters Two', '2005', NULL, 'http://dl.dropbox.com/u/83275554/2005%20-%20Pubmasters%20Two-480p.webm', NULL, NULL, '9');
INSERT INTO 'videos' VALUES ('18', 'Pubmasters', '2005', NULL, 'http://dl.dropbox.com/u/83275554/2005%20-%20Pubmasters-480p.webm', NULL, NULL, '5');
INSERT INTO 'videos' VALUES ('19', 'The Underground 2', '2005', NULL, 'http://dl.dropbox.com/u/83275554/2005%20-%20The%20Underground%202-480p.webm', NULL, NULL, '10');
INSERT INTO 'videos' VALUES ('20', 'Hostile Records - One Life Clan', '2006', 'http://dl.dropbox.com/u/83275554/2006%20-%20Hostile%20records%20-%20One%20life%20clan-360p.webm', NULL, NULL, NULL, '8');
INSERT INTO 'videos' VALUES ('21', 'bsl from the block', '2004', NULL, 'http://dl.dropbox.com/u/83275554/bsl%20from%20the%20block-480p.webm', NULL, NULL, '5');
INSERT INTO 'videos' VALUES ('22', 'CPL Movie 2002', '2002', NULL, 'http://dl.dropbox.com/u/83275554/CPL%20Movie%202002-480p.webm', NULL, NULL, '5');
INSERT INTO 'videos' VALUES ('23', 'eoLithic', '2003', NULL, 'http://dl.dropbox.com/u/83275554/eoLithic.avi-480p.webm', NULL, NULL, '4');
INSERT INTO 'videos' VALUES ('24', 'n1 NiceOne', '2003', NULL, 'http://dl.dropbox.com/u/83275554/n1%20NiceOne-480p.webm', NULL, NULL, '6');
INSERT INTO 'videos' VALUES ('25', 'Nollelva Lan 2004', '2004', NULL, 'http://dl.dropbox.com/u/83275554/Nollelva%20Lan%202004-480p.webm', NULL, NULL, '4');
INSERT INTO 'videos' VALUES ('26', 'Project Team 9', '2003', 'http://dl.dropbox.com/u/83275554/project-team9_XviD.avi-360p.webm', NULL, NULL, NULL, '4');
INSERT INTO 'videos' VALUES ('27', 'The Best of CPL Winter 2004', '2004', NULL, 'http://dl.dropbox.com/u/83275554/The%20Best%20of%20CPL%20Winter%202004-480p.webm', NULL, NULL, '7');
INSERT INTO 'videos' VALUES ('28', 'ClanWars', '2004', NULL, 'http://dl.dropbox.com/u/65105662/ClanWars_Insane_Quality.wmv-480p.webm', NULL, NULL, '5');
INSERT INTO 'videos' VALUES ('29', 'coL - ESWC 2005', '2005', NULL, 'http://dl.dropbox.com/u/83275554/coL-ESWC_2005-XviD.avi-480p.webm', NULL, NULL, '6');
INSERT INTO 'videos' VALUES ('30', 'Norway:Generation 1.5', '2004', NULL, 'http://dl.dropbox.com/u/65105662/ng15.avi-480p.webm', NULL, NULL, '6');
INSERT INTO 'videos' VALUES ('31', 'Team 3D World Cyber Games 2004', '2004', NULL, 'http://dl.dropbox.com/u/65105662/Team%203D%20World%20Cyber%20Games%202004-480p.webm', NULL, NULL, '5');
INSERT INTO 'videos' VALUES ('32', 'AESTHETIC', '2010', NULL, 'http://dl.dropbox.com/u/65105662/AESTHETIC_-_by_ndR.mp4-480p.webm', 'http://dl.dropbox.com/u/65105662/AESTHETIC_-_by_ndR.mp4-720p.webm', NULL, '10');
INSERT INTO 'videos' VALUES ('33', 'JAEGARN X3 - One Last Show', '2010', NULL, 'http://dl.dropbox.com/u/65106773/Jaegarn_x3_onelastshow.avi-480p.webm', 'http://dl.dropbox.com/u/65106773/2010%20-%20JAEGARN%20X3%20-%20One%20Last%20Show-720p.webm', NULL, '15');
INSERT INTO 'videos' VALUES ('34', 'MAJ3R - One Day', '2010', NULL, 'http://dl.dropbox.com/u/65106773/2010%20-%20MAJ3R%20-%20One%20Day-480p.webm', NULL, NULL, '4');
INSERT INTO 'videos' VALUES ('35', 'Worldwide 2', '2010', NULL, 'http://dl.dropbox.com/u/65106773/worldwide2.avi-480p.webm', 'http://dl.dropbox.com/u/65106773/worldwide2.avi-720p.webm', NULL, '19');
INSERT INTO 'videos' VALUES ('36', 'Potti The Movie', '2003', 'http://dl.dropbox.com/u/65106773/PottiTheMovie.avi-360p.webm', NULL, NULL, NULL, '4');
INSERT INTO 'videos' VALUES ('37', 'GoodGame Vision', '2006', NULL, 'http://dl.dropbox.com/u/65105662/GoodGame-Vision.wmv-480p.webm', NULL, NULL, '6');
INSERT INTO 'videos' VALUES ('38', 'xlnz', '2004', NULL, 'http://dl.dropbox.com/u/65105662/xlnz.avi-480p.webm', NULL, NULL, '7');
INSERT INTO 'videos' VALUES ('39', 'ADRENALINE', '2004', NULL, 'http://dl.dropbox.com/u/65105662/ADRENALINE.avi-480p.webm', NULL, NULL, '8');
INSERT INTO 'videos' VALUES ('40', 'Best-Frags-CPL-Oslo 2002', '2002', NULL, 'http://dl.dropbox.com/u/65105662/Best-Frags-CPL-Oslo.avi-480p.webm', NULL, NULL, '5');
INSERT INTO 'videos' VALUES ('41', 'CPL Europe Fall Copenhagen 2003', '2004', 'http://dl.dropbox.com/u/65105662/CPL%20Europe%20Fall%202003%20Copenhagen-360p.webm', NULL, NULL, NULL, '5');
INSERT INTO 'videos' VALUES ('42', 'EleMenT CS Movie', '2004', NULL, 'http://dl.dropbox.com/u/65105662/EleMenT%20CS%20Movie-480p.webm', NULL, NULL, '4');
INSERT INTO 'videos' VALUES ('43', 'ESWC 2006 POLAND', '2006', NULL, 'http://dl.dropbox.com/u/65105662/ESWC%202006%20POLAND%20by%20iksoN-480p.webm', NULL, NULL, '4');
INSERT INTO 'videos' VALUES ('44', 'fr0st identity', '2004', NULL, 'http://dl.dropbox.com/u/65105662/fr0st%20identity-480p.webm', NULL, NULL, '5');
INSERT INTO 'videos' VALUES ('45', 'h4x0rz movie', '2004', NULL, 'http://dl.dropbox.com/u/65105662/h4x0rz%20movie%20by%20TombStone-480p.webm', NULL, NULL, '4');
INSERT INTO 'videos' VALUES ('46', 'L4F4 Underground', '2004', NULL, 'http://dl.dropbox.com/u/65105662/L4F4%20Underground-480p.webm', NULL, NULL, '9');
INSERT INTO 'videos' VALUES ('47', 'M19 - The Revolution Is Here', '2004', 'http://dl.dropbox.com/u/65105662/M19%20%20The%20Revolution%20Is%20Here%C2%A4-360p.webm', NULL, NULL, NULL, '7');
INSERT INTO 'videos' VALUES ('48', 'Unseen Killers', '2006', NULL, 'http://dl.dropbox.com/u/65106773/MOVIEMAKERS%20PRESENTS%20Unseen%20Killers%202-480p.webm', NULL, NULL, '4');
INSERT INTO 'videos' VALUES ('49', 'aAa s Frags Collection Summer-Autumn 2002', '2003', 'http://dl.dropbox.com/u/65105662/aAas%20Frags%20Collection%20Summer-Autumn%202002-360p.webm', NULL, NULL, NULL, '5');
INSERT INTO 'videos' VALUES ('50', 'Militia', '2002', 'http://dl.dropbox.com/u/80854068/Akfilms%20%20Militia%20divx-360p.webm', NULL, NULL, NULL, '8');
INSERT INTO 'videos' VALUES ('51', 'Anticheat Project', '2005', NULL, 'http://dl.dropbox.com/u/80854068/anticheat%20project%20final-480p.webm', NULL, NULL, '3');
INSERT INTO 'videos' VALUES ('52', 'Avam Clan Movie', NULL, NULL, 'http://dl.dropbox.com/u/80854068/avam%20clan%20movie-480p.webm', NULL, NULL, '4');
INSERT INTO 'videos' VALUES ('53', 'Destination Skyline', NULL, 'http://dl.dropbox.com/u/80854068/Destination%20Skyline%20%20Reach%20the%20Horizon-360p.webm', NULL, NULL, NULL, '4');
INSERT INTO 'videos' VALUES ('54', 'DezerT - Tournament Only Caffe', '2004', NULL, 'http://dl.dropbox.com/u/80854068/DezerT%201st%20place%20movie%20by%20master-480p.webm', NULL, NULL, '4');
INSERT INTO 'videos' VALUES ('55', 'Gauss The Movie', NULL, NULL, 'http://dl.dropbox.com/u/80854068/gauss%20the%20movie-480p.webm', NULL, NULL, '4');
INSERT INTO 'videos' VALUES ('56', 'Gelb MYMTW Pres Kicked By Console', NULL, NULL, 'http://dl.dropbox.com/u/80854068/gelb%20mymtw%20pres%20kicked%20by%20console-480p.webm', NULL, NULL, '10');
INSERT INTO 'videos' VALUES ('57', 'Lan4Fun2 - Relacja', NULL, NULL, 'http://dl.dropbox.com/u/80854068/lan4fun2%20relacja-480p.webm', NULL, NULL, '3');
INSERT INTO 'videos' VALUES ('58', 'Lan4Fun Relacja', NULL, 'http://dl.dropbox.com/u/80854068/lan4fun%20relacja%20full-360p.webm', NULL, NULL, NULL, '2');
INSERT INTO 'videos' VALUES ('59', 'lolattack', NULL, NULL, 'http://dl.dropbox.com/u/80854068/lolattack-480p.webm', NULL, NULL, '5');
INSERT INTO 'videos' VALUES ('60', 'Militia 2', NULL, NULL, 'http://dl.dropbox.com/u/80854068/militia2%20medium%20quality-480p.webm', NULL, NULL, '5');
INSERT INTO 'videos' VALUES ('61', 'Mouseports', NULL, NULL, 'http://dl.dropbox.com/u/80854068/mousesports-480p.webm', NULL, NULL, '3');
INSERT INTO 'videos' VALUES ('62', 'Eyelessl', NULL, NULL, 'http://dl.dropbox.com/u/80854068/MOVIEMAKERS%20PRESENTS%20eyelessl-480p.webm', NULL, NULL, '7');
INSERT INTO 'videos' VALUES ('63', 'Frags Arena 7', NULL, NULL, 'http://dl.dropbox.com/u/80854068/MOVIEMAKERS%20PRESENTS%20Frags%20Arena%207-480p.webm', NULL, NULL, '4');
INSERT INTO 'videos' VALUES ('64', 'SuperPlayers Anarchy', NULL, NULL, 'http://dl.dropbox.com/u/80854068/MOVIEMAKERS%20PRESENTS%20SuperPlayers%20Anarchy-480p.webm', NULL, NULL, '2');
INSERT INTO 'videos' VALUES ('65', 'SK Swe The Latest Hits', NULL, NULL, 'http://dl.dropbox.com/u/80854068/SK%20swe%20TheLatest%20Hits-480p.webm', NULL, NULL, '2');
INSERT INTO 'videos' VALUES ('66', 'SteelHand', NULL, NULL, 'http://dl.dropbox.com/u/80854068/SteelHand-480p.webm', NULL, NULL, '6');
INSERT INTO 'videos' VALUES ('67', 'Superplayers 9', NULL, NULL, 'http://dl.dropbox.com/u/80854068/superplayers9-480p.webm', NULL, NULL, '3');
INSERT INTO 'videos' VALUES ('68', 'Superplayers 11 Reloaded', NULL, NULL, 'http://dl.dropbox.com/u/80854068/superplayers11%20reloaded-480p.webm', NULL, NULL, '4');
INSERT INTO 'videos' VALUES ('69', 'Superplayers 12 3d', NULL, NULL, 'http://dl.dropbox.com/u/80854068/superplayers12%203d-480p.webm', NULL, NULL, '4');
INSERT INTO 'videos' VALUES ('70', 'Superplayers 13 Gfrags', NULL, NULL, 'http://dl.dropbox.com/u/80854068/superplayers13%20%20Gfrags-480p.webm', NULL, NULL, '3');
INSERT INTO 'videos' VALUES ('71', 'Superplayers - A Polish Edition', '2005', NULL, 'http://dl.dropbox.com/u/80854068/SuperPlayers%20a%20Polish%20Edition%20by%20iksoN-480p.webm', NULL, NULL, '18');
INSERT INTO 'videos' VALUES ('72', 'aZn Reloaded', '2007', NULL, 'http://dl.dropbox.com/u/96305460/aZnReloaded.wmv-480p.webm', NULL, NULL, '0');
INSERT INTO 'videos' VALUES ('73', 'Team Pentagram', NULL, NULL, 'http://dl.dropbox.com/u/80854068/Team%20Pentagram-480p.webm', NULL, NULL, '3');
INSERT INTO 'videos' VALUES ('74', 'Team Poland', NULL, NULL, 'http://dl.dropbox.com/u/80854068/Team%20Poland-480p.webm', NULL, NULL, '8');
INSERT INTO 'videos' VALUES ('75', 'The Fellowship of NoA', NULL, NULL, 'http://dl.dropbox.com/u/80854068/The%20Fellowship%20of%20NoA-480p.webm', NULL, NULL, '4');
INSERT INTO 'videos' VALUES ('76', 'The One And Only Heaton', NULL, NULL, 'http://dl.dropbox.com/u/80854068/The%20one%20and%20only%20HeatoN-480p.webm', NULL, NULL, '6');
INSERT INTO 'videos' VALUES ('77', 'The Beginning', NULL, NULL, 'http://dl.dropbox.com/u/80854068/theBeginning-480p.webm', NULL, NULL, '4');
INSERT INTO 'videos' VALUES ('78', 'TombStone In Action', NULL, NULL, 'http://dl.dropbox.com/u/80854068/TombStone%20in%20action-480p.webm', NULL, NULL, '3');
INSERT INTO 'videos' VALUES ('79', 'The Spawn Low', NULL, NULL, 'http://dl.dropbox.com/u/65105662/TheSpawN%20low-480p.webm', NULL, NULL, '4');
INSERT INTO 'videos' VALUES ('80', 'Vesslan', NULL, NULL, 'http://dl.dropbox.com/u/65105662/vesslan-480p.webm', NULL, NULL, '3');
INSERT INTO 'videos' VALUES ('81', 'YDF Spray', NULL, NULL, 'http://dl.dropbox.com/u/65105662/YDF%20SpraY%20Final-480p.webm', NULL, NULL, '2');
INSERT INTO 'videos' VALUES ('82', 'Matrix Renaissance', NULL, NULL, 'http://dl.dropbox.com/u/65105662/matrix%20renaissance-480p.webm', NULL, NULL, '4');
INSERT INTO 'videos' VALUES ('83', 'NoA - The Two Continents', NULL, NULL, 'http://dl.dropbox.com/u/65106773/NoA%20TheTwoContinents-480p.webm', 'http://dl.dropbox.com/u/96305460/NoA%20TheTwoContinents-720p.webm', NULL, '5');
INSERT INTO 'videos' VALUES ('84', 'Lan 4 Fun 3 Light', '2004', 'http://dl.dropbox.com/u/96305460/L4F3%20light-360p.webm', NULL, NULL, NULL, '0');
INSERT INTO 'videos' VALUES ('85', 'Clan Otur', NULL, NULL, 'http://dl.dropbox.com/u/96305460/MOVIEMAKERS%20PRESENTS%20Clan%20Otur-480p.webm', NULL, NULL, '0');
INSERT INTO 'videos' VALUES ('86', 'Superplayers - New World Order Special Edition', NULL, NULL, 'http://dl.dropbox.com/u/96305460/MOVIEMAKERS%20PRESENTS%20SuperPlayers%20New%20World%20Order%20Special%20Edition-480p.webm', NULL, NULL, '0');
INSERT INTO 'videos' VALUES ('87', 'Unseen Killers', NULL, NULL, 'http://dl.dropbox.com/u/96305460/MOVIEMAKERS%20PRESENTS%20Unseen%20Killers%202-480p.webm', NULL, NULL, '0');
INSERT INTO 'videos' VALUES ('88', 'n0thing but headshots', NULL, NULL, 'http://dl.dropbox.com/u/96305460/n0thing-but-headshots.mp4-480p.webm', 'http://dl.dropbox.com/u/96305460/n0thing-but-headshots.mp4-720p.webm', NULL, '0');
INSERT INTO 'videos' VALUES ('89', 'Pentagram GShock - The Polish Style', NULL, NULL, 'http://dl.dropbox.com/u/96305460/PENTAGRAM%20GSHOCK%20-%20THE%20POLISH%20STYLE.wmv-480p.webm', NULL, NULL, '0');
INSERT INTO 'videos' VALUES ('90', 'wNv - The Surreal', NULL, NULL, 'http://dl.dropbox.com/u/96305460/wNv_The%20Surreal.mp4-480p.webm', NULL, NULL, '0');
# --------------------------------------------------------

