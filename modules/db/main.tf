resource "aws_dynamodb_table" "table" {
    name           = var.tableName
    hash_key       = var.hashKey
    range_key      = var.rangeKey
    write_capacity = 5
    read_capacity  = 5

    dynamic "attribute" {
        for_each = var.attributes
        content {
            name = attribute.value["name"]
            type = attribute.value["type"]
        }
    }

    tags = {
        Name = var.tableName
        App  = "GameBacklog"
    }
}
