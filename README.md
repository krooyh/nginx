# nginx image #
It's based on alpine.  
___
Default index file path is ./web  

Variables to set:  
* INDEX_FILE (default=index.php)  
* PHP_UPSTREAM (default=php-upstream:9000)  
basic conf:
```yml
    nginx:
        image: krooyh/nginx:0.1.1
        ports:
            - 8080:80
        volumes:
            - .:/code
        depends_on:
            - php-upstream
        environment:
            VIRTUAL_HOST: some-name.docker
            VIRTUAL_PORT: 80
        links:
            - php-upstream
```

---
Tested only on dinghy.