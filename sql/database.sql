DROP TABLE IF EXISTS CommentComments;
DROP TABLE IF EXISTS Comments;
DROP TABLE IF EXISTS Post2Cat;
DROP TABLE IF EXISTS PostCategory;
DROP TABLE IF EXISTS Posts;
DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS Book;


/*USE anaxdb;*/


SET NAMES utf8;

-- TODO: Add user table - link user to post
-- TODO: Update Comments and Post and add like userId to link users to there comments or posts sp they can remove them.

CREATE TABLE Posts (
  id        INT NOT NULL AUTO_INCREMENT,
  posttitle VARCHAR(100),
  postname  VARCHAR(100),
  posttext  TEXT(2499),

  PRIMARY KEY (id)

);


CREATE TABLE Comments (
  idcomment   INT NOT NULL AUTO_INCREMENT,
  commenttext TEXT(2499),
  idpost      INT,
  postuser    VARCHAR(100),

  PRIMARY KEY (idcomment),

  FOREIGN KEY (idpost) REFERENCES Posts (id)

);

CREATE TABLE CommentComments (
    idcommentc INT NOT NULL AUTO_INCREMENT,
    textcomment text(2499),
    idcommentcomment INT,
    postuser VARCHAR(100),

    PRIMARY KEY (idcommentc),

    FOREIGN KEY (idcommentcomment) REFERENCES Comments (idcomment)
);


CREATE TABLE PostCategory (
  id INT auto_increment,
  category varchar(30),

  primary key (id)
);

CREATE TABLE Post2Cat (
  postid INT,
  catid INT
);



INSERT INTO Posts (posttitle, postname, posttext) VALUE ("PHP explode function", "admin@admin.com", "<p>I want to let the user type in tags:</p>
<p>windows linux &#8220;mac os x&#8221;</p>
<p>and then split them up by white space but also recognizing &#8220;mac os x&#8221; as a whole word.</p>
<p>Is this possible to combine the explode function with other functions for this?</p>
<p>There has to be a way.</p>"),

  ("Python way of printing: with 'format' or percent form?", "admin@admin.com", " <p>In Python there seem to be two different ways of generating formatted output:</p>

<pre><code class='python'>user = 'Alex'
number = 38746
print('%s asked %d questions on stackoverflow.com' % (user, number))
print('{0} asked {1} questions on stackoverflow.com'.format(user, number))
</code></pre>
<p>Is there one way to be preferred over the other? Are they equivalent, what is the difference? What form should be used, especially for Python3?</p>"),

("MySQL - Operand should contain 1 column(s)", "admin@admin.com", " <p>While working on a system I&#8217;m creating, I attempted to use the following query in my project:</p>
<pre><code class='mysql'>SELECT
topics.id,
topics.name,
topics.post_count,
topics.view_count,
COUNT( posts.solved_post ) AS solved_post,
(SELECT users.username AS posted_by,
    users.id AS posted_by_id
    FROM users
    WHERE users.id = posts.posted_by)
FROM topics
LEFT OUTER JOIN posts ON posts.topic_id = topics.id
WHERE topics.cat_id = :cat
GROUP BY topics.id
</code></pre>
<p>&#8220;:cat&#8221; is bound by my PHP code as I&#8217;m using PDO. 2 is a valid value for &#8220;:cat&#8221;.</p>
<p>That query though gives me an error: &#8220;#1241 - Operand should contain 1 column(s)&#8221;</p>
<p>What stumps me is that I would think that this query would work no problem. Selecting columns, then selecting two more from another table, and continuing on from there. I just can&#8217;t figure out what the problem is.</p>
<p>Is there a simple fix to this, or another way to write my query?</p>");

INSERT INTO Comments (commenttext, idpost, postuser)
  VALUE ("<p>You can use both .No one said % formatting expression is deprecated.However,as stated before the format method call is a tad more powerful. Also note that the % expressions are bit more concise and easier to code.Try them and see what suits you best</p>", 2, "mangegreiff@gmail.com"), ("<p>I would ask the user to enter the tags commas separated and explode with comma delimiter:</p>
<pre><code class='php'>$string = 'windows, linux, mac os x';
$pieces = explode(',', $string);
</code></pre>
<p>This is they way most tag system work anyway.</p>
<p>otherwise you&#8217;ll need to construct a parser because explode cannot cope with what you want. Regex is an overkill in my opinion.</p>", 1, "doe@doe.com"), ("<p>Your subquery is selecting two columns, while you are using it to project one column (as part of the outer SELECT clause). You can only select one column from such a query in this context.</p>

<p>Consider joining to the users table instead; this will give you more flexibility when selecting what columns you want from users.</p>

<pre><code class='mysql'>SELECT
topics.id,
topics.name,
topics.post_count,
topics.view_count,
COUNT( posts.solved_post ) AS solved_post,
users.username AS posted_by,
users.id AS posted_by_id

FROM topics

LEFT OUTER JOIN posts ON posts.topic_id = topics.id
LEFT OUTER JOIN users ON users.id = posts.posted_by

WHERE topics.cat_id = :cat
GROUP BY topics.id
</code></pre>", 3, "doe@doe.com");

INSERT INTO CommentComments (textcomment, idcommentcomment, postuser) VALUE ("<p>It’s probably worth noting that logging module uses %-like syntax, so it may be preferred for consistency reasons.</p>", 1, "admin@admin.com"), ("<p>Thanks for the response. I'll fix my query, and mark you as the answer, but just for input, do you think there's a 'better' way to write my query than what I'm using now (but also disregarding the error in it)?</p>", 3, "admin@admin.com"), ("<p>Ah. Thank you for the edit on your original post. I will be sure to mark you as the answer when StackOverflow lets me. Thanks a lot! </p>", 3, "mangegreiff@gmail.com");


INSERT INTO PostCategory (category)
VALUES  ("SQL"), ("PHP"), ("PYTHON");

INSERT INTO Post2Cat (postid, catid)
VALUES (1,2), (2,3), (3,1);



-- DROP VIEW IF EXISTS VPost;
-- CREATE VIEW VPost as SELECT P.id as 'postid', P.posttitle as 'posttitle', P.posttext as 'posttext', P.postname as 'postname', group_concat(category) as Category FROM Posts as P
--   INNER JOIN Post2Cat as P2C ON P.id = P2C.post_id
--   INNER JOIN PostCategory as PC on PC.id = P2C.cat_id
-- GROUP BY P.id ORDER BY P.id;

DELIMITER //

DROP PROCEDURE IF EXISTS VPost //
CREATE PROCEDURE VPost(
    checkWhere varchar(5),
    checkValue int,
    checkCategory varchar(5),
    category varchar(200),
    orderBy varchar(4)
)
BEGIN
    IF (checkWhere = 'true') then
        select p.id postid,
          p.posttitle posttitle,
          p.posttext posttext,
          p.postname postname,
          c.category Category
        from Posts p
        inner join Post2Cat p2c
          on p.id = p2c.postid
        inner join PostCategory c
          on p2c.catid = c.id
        where p.id = checkValue;
    ELSEIF (checkCategory = 'true') then
        select p.id postid,
          p.posttitle posttitle,
          p.posttext posttext,
          p.postname postname,
          c.category Category
        from Posts p
        inner join Post2Cat p2c
          on p.id = p2c.postid
        inner join PostCategory c
          on p2c.catid = c.id
          where c.category = category;
        -- SELECT * FROM VPost WHERE Category = category;
    ELSEIF (orderBy = 'desc') then
        select p.id postid,
          p.posttitle posttitle,
          p.posttext posttext,
          p.postname postname,
          c.category Category
        from Posts p
        inner join Post2Cat p2c
          on p.id = p2c.postid
        inner join PostCategory c
          on p2c.catid = c.id
        order by p.id DESC;
    ELSE
        select p.id postid,
          p.posttitle posttitle,
          p.posttext posttext,
          p.postname postname,
          c.category Category
        from Posts p
        inner join Post2Cat p2c
          on p.id = p2c.postid
        inner join PostCategory c
          on p2c.catid = c.id;
    END IF;
END
//


DROP PROCEDURE IF EXISTS VCategory;
CREATE PROCEDURE VCategory(
    postid int
)
BEGIN
    select p.id postid,
      group_concat(c.category) Category
      -- group_concat(c.category) gcategory
    from Posts p
    inner join Post2Cat p2c
      on p.id = p2c.postid
    inner join PostCategory c
      on p2c.catid = c.id
      where p.id = postid
      group by p.id order by p.id;
END
//

DROP PROCEDURE IF EXISTS PopularTags;
CREATE PROCEDURE PopularTags(
)
BEGIN
    SELECT catid, count(catid) as count FROM Post2Cat GROUP BY catid order by count desc LIMIT 5;
END
//


DROP PROCEDURE IF EXISTS GetPostCategory;
CREATE PROCEDURE GetPostCategory(
)
BEGIN
    SELECT PC.Category, P2C.catid as catid, count(P2C.catid) as count FROM PostCategory as PC
    INNER JOIN Post2Cat as P2C ON PC.id = P2C.catid group by PC.id;
END
//


DELIMITER ;

-- Call VPost("false", 1, 'true', 'PHP' , null);

DELIMITER //

DROP PROCEDURE IF EXISTS CheckComment //
CREATE PROCEDURE CheckComment(
  post INT
)
  BEGIN
    SELECT
      P.id        AS `post id`,
      P.posttitle AS `Title`,
      P.posttext  AS `Text`,
      P.postname  AS `Name`,
      C.idcomment,
      C.commenttext,
      C.postuser  AS `Author`,
      C.idpost
    FROM Comments AS C
      INNER JOIN Posts AS P ON C.idpost = P.id
    WHERE C.idpost = post
    GROUP BY C.idcomment;
    COMMIT;
  END
//

DELIMITER ;

DELIMITER //

DROP PROCEDURE IF EXISTS GetAllCommentsFromSpecific //
CREATE PROCEDURE GetAllCommentsFromSpecific(
    postuser VARCHAR(255)
)
  BEGIN
    SELECT
      C.idcomment,
      C.commenttext,
      C.postuser,
      C.idpost
    FROM Comments as C
        INNER JOIN Posts as P ON C.idpost = P.id
    WHERE C.postuser = postuser;
    COMMIT;
  END
//

DELIMITER ;

DELIMITER //

DROP PROCEDURE IF EXISTS GetCommentsOfComments //
CREATE PROCEDURE GetCommentsOfComments(
    commentid INT
)
  BEGIN
    SELECT
      CC.idcommentc,
      CC.textcomment,
      CC.idcommentcomment,
      CC.postuser
    FROM CommentComments as CC
        INNER JOIN Comments AS C ON CC.idcommentcomment = C.idcomment
   WHERE C.idcomment = commentid;
    COMMIT;
  END
//

DELIMITER ;

DELIMITER //

--
-- Table Book
--

CREATE TABLE Book (
  `id`       INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `title`    VARCHAR(256)                       NOT NULL,
  `author`   VARCHAR(256)                       NOT NULL,
  `released` DATE                               NOT NULL
)
  ENGINE INNODB
  CHARACTER SET utf8
  COLLATE utf8_swedish_ci;


CREATE TABLE Users (
  `id`          INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `name`        VARCHAR(100)                       NOT NULL,
  `email`       VARCHAR(100)                       NOT NULL UNIQUE,
  `age`         INTEGER(3)                         NOT NULL,
  `password`    VARCHAR(255)                       NOT NULL,
  `points`      INT DEFAULT '0'                            ,
  `permissions` VARCHAR(5) DEFAULT 'user',
  `created`     TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `updated`     DATETIME,
  `deleted`     DATETIME,
  `active`      DATETIME
)
  ENGINE INNODB
  CHARACTER SET utf8
  COLLATE utf8_swedish_ci;


INSERT INTO Users (name, email, age, password, permissions) VALUES ("Admin", "admin@admin.com", 20,
                                                                    "$2y$10$lB4EEYcScF0u0VJZgdqruOcFWg1XN8m.ilmtObh3vusjiS2JejgoG", "admin"), ("Doe", "doe@doe.com", 20,
                                                                                                                                               "$2y$10$6yJKxW6dmaOyACY9AVyZwemFnlKr9NDlO2wU.DbV.HTJ.tpwt0liy", "user");
