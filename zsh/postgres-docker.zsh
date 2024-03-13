##########################################
# PostgreSQL
##########################################

# ? Should probably use Docker-compose

export DATABASE_URL='postgres://user:secret@localhost:5432/table_dev?sslmode=disable'

function pgall {
    pgstart
    pgastart
}

function _create_net {
    docker network ls | grep pg-net > /dev/null || docker network create --driver bridge pg-net
}

function pgstart {
    cd ~/docker
    
    _create_net

    docker run --rm \
            -e POSTGRES_PASSWORD=secret \
            -e POSTGRES_USER=user \
            -e POSTGRES_DB=table_dev \
            --name=pg \
            -p 5432:5432 \
            -v ./pgdb:/var/lib/postgresql/data \
            --network pg-net \
            -d \
            postgres

    cd -
}

function pgcon {
    docker exec -it pg psql -U user table_dev
}

function pgastart {
    cd ~/docker

    _create_net

    docker run --rm \
        -p 15432:80 \
        -e 'PGADMIN_DEFAULT_EMAIL=user@user.user' \
        -e 'PGADMIN_DEFAULT_PASSWORD=secret' \
        --name pgadmin \
        -v ./pgadmin:/var/lib/pgadmin \
        --network pg-net \
        -d \
        dpage/pgadmin4

    cd -
}

function pgstop {
    docker stop pg
    docker stop pgadmin 
}
