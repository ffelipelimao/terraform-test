resource "local_file" "exemplo" {
  content              = var.content
  filename             = "exemplo.txt"
}

data "local_file" "content_exemplo"{
  filename = "exemplo.txt"
}

output data_source_result {
  value = data.local_file.content_exemplo.content_base64
}

variable content {
}

output id_file {
  value = resource.local_file.exemplo.id
}

output file_content {
  value = var.content
}
