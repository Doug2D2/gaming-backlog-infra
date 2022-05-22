provider "aws" {
    region = "us-east-1"
}

module "UsersTable" {
    source = "./modules/db"

    tableName  = "Users"
    hashKey    = "UserID"
    rangeKey   = ""
    attributes = [{"name": "UserID", "type": "S"}]
}

module "BacklogTable" {
    source = "./modules/db"

    tableName  = "Backlog"
    hashKey    = "UserID"
    rangeKey   = "SK"
    attributes = [{"name": "UserID", "type": "S"}, {"name": "SK", "type": "S"}]
}

module "WishlistTable" {
    source = "./modules/db"

    tableName  = "Wishlist"
    hashKey    = "UserID"
    rangeKey   = "SK"
    attributes = [{"name": "UserID", "type": "S"}, {"name": "SK", "type": "S"}]
}

module "CompletedTable" {
    source = "./modules/db"

    tableName  = "Completed"
    hashKey    = "UserID"
    rangeKey   = "SK"
    attributes = [{"name": "UserID", "type": "S"}, {"name": "SK", "type": "S"}]
}
