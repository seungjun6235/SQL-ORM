-- SELECT * FROM movies_user
-- WHERE age=41;

-- Movie.objects.filter(year__gt=2000)
-- SELECT * FROM movies_movie
-- WHERE year > 2000;

-- Movie.objects.filter(year__gt=2000,year__lt=2010)
-- SELECT * FROM movies_movie
-- WHERE year > 2000 AND year < 2010;

-- Movie.objects.filter(Q(year__lt=2000)|Q(year__gt=2010))
-- SELECT * FROM movies_movie
-- WHERE year < 2000 OR year > 2010;

-- USer.objects.exclude(age__gt=30)
-- SELECT * FROM movies_user
-- WHERE NOT age > 30;

-- Movie.objects.aggregate(Min('year'))
-- SELECT MIN(year) FROM movies_movie;

-- SELECT MAX(year) FROM movies_movie;

-- Score.objects.filter(movie_id=1).aggregate(Min('value'),Max('value'))
-- SELECT MAX(value),MIN(value) FROM movies_score
-- WHERE movie_id=1;

-- Movie.objects.count()
-- SELECT COUNT(*) FROM movies_movie;

-- Movie.objects.filter(year__gt=2000).count()
-- SELECT COUNT(*) FROM movies_movie
-- WHERE year > 2000;

-- User.objects.value('country').disitnct().count()
-- SELECT COUNT(DISTINCT country) FROM movies_user;

-- --  User.objects.aggregate(Sum('age'))
-- SELECT sum(age) from movies_user;

-- Score.objects.filter(movie_id=10).aggregate(Sum('value'))
-- SELECT sum(value) FROM movies_score

-- Movie.objects.aggregate(Avg('year'))
-- SELECT avg(year) From movies_movie;

-- Score.objects.filter(movie_id=10).aggregate(Avg('value'))
-- SELECT avg(value) FROM movies_score
-- WHERE movie_id=10;

-- Movie.objects.filter(title__contains='the')
-- SELECT * FROM movies_movie
-- WHERE title LIKE '%the%';

-- Movie.objects.filter(title__startswith='the')
-- SELECT * FROM movies_movie
-- WHERE title LIKE 'the%';

-- Movie.objects.filter(title__endswith='on.')
-- SELECT * FROM movies_movie
-- WHERE title LIKE '%on.';

-- ORM에서 사용하려면 정규표현식을 사용해야한다
-- SELECT * FROM movies_movie
-- WHERE title LIKE '%g__d%';


-- Movie.objects.filter(year__in=[2000,2001,2002])
-- SELECT * FROM movies_movie
-- WHERE year IN (2000,2001,2002);

-- User.objects.filter(age__range=[20,29])
-- SELECT * FROM movies_user
-- WHERE age BETWEEN 20 AND 29;