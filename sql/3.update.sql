    -- SELECT * FROM movies_actor
    -- WHERE id=1;

    UPDATE movies_actor
    SET name='iron man'
    where id=1;



-- 장고에서는
-- actor = Actor.objects.get(id=id)
-- actor.age =50
-- actor.save() 