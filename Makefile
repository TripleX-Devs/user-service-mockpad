include .env.development

.PHONY: up plant reset clean check-env 

data-path := ./test/data
polinate: 
	cat $(data-path)/partials/*.sql > $(data-path)/Seed.sql

# To build a pre-seeded db image.
plant:	
	docker compose build \
	--build-arg POSTGRES_USER=$(POSTGRES_USER) \
	--build-arg POSTGRES_PASSWORD=$(POSTGRES_PASSWORD) \
	--build-arg POSTGRES_DB=$(POSTGRES_DB)

# To run docker compose.
up:
	docker compose up

# To delete both compose containers & volumes.
reset: 	
	docker compose rm && docker compose rm -v

# To delete compose volumes.
clean: 
	docker compose rm -v

# To check if your env's are loading into Makefile.
check-env: 
	@echo$(info	POSTGRES_USER is $(POSTGRES_USER)) \
	$(info	POSTGRES_PASSWORD is $(POSTGRES_PASSWORD)) \
	$(info	POSTGRES_DB is $(POSTGRES_DB))