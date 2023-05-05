
 select count(*) from movies where name = "Natalie Portman"; 
 
 -- Quantas vezes Natalie Portman foi indicada ao Oscar?
-- R: 3 vezes

 

select count(*) from movies where name = "Natalie Portman" and  winner = "true";

 -- Quantos Oscars Natalie Portman ganhou?
-- 1 oscar



 select * from movies where name = "Amy Adams" and winner= "winner"; 
 
 -- Amy Adams já ganhou algum Oscar?
-- Não


 select  year_ceremony from movies where film = "Toy Story 3" and winner= "true";
 
 -- Toy Story 3 ganhou um Oscar em quais anos?
-- 2011



 select count(*) from movies where category= "BEST PICTURE" and winner="true";
 select count(*) from movies where category= "Actor" and winner="true";
 
 -- Quem tem mais Oscars: a categoria "Melhor Ator" ou "Melhor Filme"?
-- "Melhor Filme" tem mais Oscars. 58 no total.



select name, year_film from movies where winner= "true" and category= "Actress";

-- O primeiro Oscar para melhor Atriz foi para quem? Em que ano?
-- Janet Gaynor, em 1927.



update movies set winner= 0 where winner= "false";
update movies set winner= 1 where winner= "true";
 
 -- Na coluna/campo Winner, altere todos os valores com "True" para 1 e todos os valores "False" para 0.




 select * from movies where film="Crash" and winner=1 and category="BEST PICTURE";
 
 -- Em qual edição do Oscar "Crash" ganhou o prêmio principal?
 -- Na 78ª edição do Oscar, em 2006.
 

 update movies set winner=1 where id_movie=9706;
 
 --  Na sua opinião, que filme merecia ganhar um Oscar e não ganhou?

-- Na minha opinião, "Interstellar" merecia ganhar o oscar de melhor trilha sonora original, em 2015.

select * from movies where film = "Interstellar";

-- Bom... dê um Oscar para esse filme, então.



 select * from movies where film="Central do Brasil";
 
 -- O filme Central do Brasil aparece no Oscar?
-- 	Não.

-- Aliás... Qual sua opinião sobre Central do Brasil?
-- R: Um filme essencial para todos os brasileiros. Um filme nacional que sai do padrão de filmes de comédia ou "crime/ação" que costumamos ter.

-- Inclua no banco 3 filmes que nunca nem foram nomeados ao Oscar, mas que na sua opinião, merecem.

-- R: "Blade Runner", "Drive", "Star Wars: Episode III - Revenge of the Sith".

insert into movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) values (1982, 1983, 55, 'ACTOR ON A LEADING ROLE', 'Ridley Scott', 'Blade Runner', 1);

insert into movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) values (2011,2012, 84, 'BEST PICTURE', 'Nicolas Winding Refn', 'Drive', 1 );

insert into movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) values (2005,2006,78,'BEST PICTURE', 'George Lucas', 'Star Wars: Episode III - Revenge of the Sith', 1 );

 
-- Crie uma nova categoria de premiação. Qualquer prêmio que você queira dar. Agora vamos dar esses prêmios aos filmes que você cadastrou na questão acima.

-- R: Categoria: "Essenciais do seculor"

update movies set category= "Essenciais do seculo" where id_movie= 10406 or id_movie= 10407 or id_movie = 10408;

select * from movies where film = "Blade Runner";

select * from movies where film = "Drive";

select * from movies where film = "Star Wars: Episode III - Revenge of the Sith";




-- Qual foi o primeiro ano a ter um prêmio do Oscar?
-- 1928.

select year_film, year_ceremony from movies where winner= 1;

-- Pensando no ano em que você nasceu: Qual foi o Oscar de melhor filme, Melhor Atriz e Melhor Diretor?

-- O melhor filme foi: "Gladiator". O de melhor diretor para:"Steven Soderbergh" no filme "Traffic". Não consegui encotrar o oscar de melhor atriz. Porém com pesquisas descobri que foi a Julia Roberts, no filme, "Erin Brockovich - Uma Mulher de Talento".

select * from movies where category="BEST PICTURE" and year_ceremony= 2001 and winner=1 or category="DIRECTING" and year_ceremony= 2001 and winner=1 or category="ACTRESS ON A LEADING ROLE" and year_ceremony= 2001 and winner=1 order by category;

-- Agora procure 7 atrizes que não sejam americanas, europeias ou brasileiras.  Vamos cadastrá-los no nosso banco, mas eles ainda não ganharam o Oscar. Só foram nomeados.

insert into movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) values (2018, 2019, 91, 'ACTRESS', 'Letitia Wright', 'Black Panther', 0);
insert into movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) values (2021, 2022, 94, 'ACTRESS', 'Hanggini Purinda Retto', 'Geez & Ann', 0);
insert into movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) values (2018, 2019, 91, 'ACTRESS', 'Amy Sun', 'Accidentally in Love', 0);
insert into movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) values (2020, 2021, 92, 'ACTRESS', 'Seo Ye-ji', "It's Okay to Not Be Okay", 0);
insert into movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) values (2022, 2023, 95, 'ACTRESS', 'Gal Gadot', 'Death on the Nile', 0);
insert into movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) values (2021,2022,94,'ACTRESS', 'Pallavi Sharda', 'wedding season', 0);
insert into movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) values (2022, 2023, 95, 'ACTRESS', 'Hazal Kaya', 'Midnight at the Pera Palace', 0);

-- Agora vamos falar da sua vida. Me diga o nome de uma pessoa que você admira e o que ela fez na sua vida. Agora me diz: Quê prêmio essa pessoa merece?
 -- Giovana (minha namorada). Ela merece o prêmio de pessoa mais paciente do mundo.
