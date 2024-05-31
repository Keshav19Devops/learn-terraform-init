resource "aws_s3_bucket" "finance" {
    bucket = "keshav-finance"
    tags = {
        Description = "Finance and Payroll"
    }
}

resource "aws_s3_bucket_object" "finance-2024" {
    content = "/Users/kesh/Desktop/BYLAWSVNILAYAM.pdf"
    key = "BYLAWSVNILAYAM.pdf"
    bucket = aws_s3_bucket.finance.id
  
}