-- Retrieve the postid and display name of the user who posted it
-- for *all* posts that have linked to at least twenty other posts,
-- ordered by postId
-- 1.1 marks: <8 operators
-- 1.0 marks: <9 operators
-- 0.9 marks: <11 operators
-- 0.8 marks: correct answer

-- Replace this comment line with the actual query

SELECT PostId,displayName
FROM  Link
LEFT JOIN Post ON
Post.Id = Link.PostId
LEFT JOIN User ON
User.Id = Post.OwnerUserId
GROUP BY PostId
HAVING COUNT(PostId) >=20
ORDER BY PostId ASC;



