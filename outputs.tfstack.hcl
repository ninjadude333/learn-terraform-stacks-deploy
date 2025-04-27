output "lambda_urls" {
  type = list(string)
  description = "URLs to invoke lambda functions"
  value = [ for x in component.lambda: x.invoke_arn ]
}

output "api_gw_urls" {
  type = list(string)
  description = "URLs from api gw"
  value = [ for x in component.api_gateway: x.hello_url ]
}