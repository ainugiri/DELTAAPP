REM   Script: Session 06
REM   20210912B

create table bricks ( 
  brick_id integer, 
  colour   varchar2(10) 
);

create table colours ( 
  colour_name           varchar2(10), 
  minimum_bricks_needed integer 
);

insert into colours values ( 'blue', 2 );

insert into colours values ( 'green', 3 );

insert into colours values ( 'red', 2 );

insert into colours values ( 'orange', 1);

insert into colours values ( 'yellow', 1 );

insert into colours values ( 'purple', 1 );

insert into bricks values ( 1, 'blue' );

insert into bricks values ( 2, 'blue' );

insert into bricks values ( 3, 'blue' );

insert into bricks values ( 4, 'green' );

insert into bricks values ( 5, 'green' );

insert into bricks values ( 6, 'red' );

insert into bricks values ( 7, 'red' );

insert into bricks values ( 8, 'red' );

insert into bricks values ( 9, null );

commit


select * from bricks;

select * from colours;

select * from ( 
  select * from bricks 
);

select * from ( 
  select colour, count(*) c 
  from   bricks 
  group  by colour 
) brick_counts;

select * from ( 
  select colour, count(*) c 
  from   bricks 
  group  by colour 
) brick_counts 
join   colours 
on     brick_counts.colour = colours.colour_name 
and    brick_counts.c < colours.minimum_bricks_needed;

select * from ( 
 
);

select * from ( 
select colour, MIN(BRICK_ID), MAX(BRICK_ID) 
  from   bricks 
  group  by colour 
) brick_counts 
join   colours 
on     brick_counts.colour = colours.colour_name 
and    brick_counts.c < colours.minimum_bricks_needed;

select * from ( 
select colour, MIN(BRICK_ID), MAX(BRICK_ID) C 
  from   bricks 
  group  by colour 
) brick_counts 
join   colours 
on     brick_counts.colour = colours.colour_name 
and    brick_counts.c < colours.minimum_bricks_needed;

select * from ( 
select colour, MIN(BRICK_ID), MAX(BRICK_ID) C 
  from   bricks;

select * from ( 
select colour, MIN(BRICK_ID), MAX(BRICK_ID) C 
  from   bricks);

select * from ( 
select colour, MIN(BRICK_ID), MAX(BRICK_ID) C 
  from   bricks 
  group  by colour 
);

select * from ( 
select colour, MIN(BRICK_ID), MAX(BRICK_ID) 
  from   bricks 
  group  by colour 
);

select * from colours c 
where  c.colour_name in ( 
  select b.colour from bricks b 
);

select * from colours c 
where  c.colour_name in ( 
  select b.colour from bricks b 
  where  b.brick_id < 5 
);

select * from colours 
where  exists ( 
  select null from bricks 
);

with brick_colour_counts as ( 
  select colour, count(*)  
  from   bricks 
  group  by colour 
)  
  select * from brick_colour_counts 


select c.colour_name,  
       c.minimum_bricks_needed, ( 
         select avg ( count(*) ) 
         from   bricks b 
         group  by b.colour 
       ) mean_bricks_per_colour 
from   colours c 
where  c.minimum_bricks_needed < ( 
  select count(*) c 
  from   bricks b 
  where  b.colour = c.colour_name 
  group  by b.colour 
);

select brick_id  
from   bricks  
where  colour in ('red', 'blue');

select colour 
from   bricks 
group  by colour   
having count (*) < ( 
  select avg ( colour_count )  
  from   ( 
    select colour, count (*) colour_count 
    from   bricks 
    group  by colour   
  ) 
);

with brick_counts as (  
  -- 1. Count the bricks by colour 
  select b.colour, count(*) c 
  from   bricks b 
  group  by b.colour 
), average_bricks_per_colour as (  
  -- 2. Take the average of these counts 
  select avg ( c ) average_count 
  from   brick_counts 
) 
  select * from brick_counts bc   
  join   average_bricks_per_colour ac 
  -- 3. Return those rows where the value in step 1 is less than in step 2 
  on     bc.c < average_count


with brick_counts as ( 
  select b.colour, count(*) c 
  from   bricks b 
  group  by b.colour 
), average_bricks_per_colour as ( 
  select avg ( c ) average_count 
  from   brick_counts 
) 
  select * from brick_counts bc


with colour_count as ( 
 
) 
  select * from colour_count


