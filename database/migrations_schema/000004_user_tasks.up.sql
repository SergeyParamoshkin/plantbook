-- Задачи Tasks
create table if not exists user_tasks(
    id_task bigint generated by default as identity primary key,
    id_user bigint not null,
    id_plant bigint,
    name_task varchar(50) not null,
	description text,
    todo_at timestamp not null, -- Когда сделать
    done boolean default false, -- Сделана задача или нет
    done_at timestamp, -- Когда сделана
    created_at timestamp not null default current_timestamp,
	modified_at timestamp,
    -- constraints:
    constraint user_plants_id_plan_fk foreign key (id_plant) references plants (id_plant),
	constraint user_plants_id_user_fk foreign key (id_user) references users (id_user) on delete cascade
);
