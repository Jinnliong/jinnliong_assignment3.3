resource "aws_iam_instance_profile" "jinnliong_instance_profile" {
  name = "jinnliong-instance-profile"
  role = aws_iam_role.jinnliong_role.name
}

resource "aws_iam_role" "jinnliong_role" {
  name = "jinnliong-role"

  assume_role_policy = jsonencode({
    Version: "2012-10-17",
    Statement: [
      {
        Action: "sts:AssumeRole",
        Principal: {
          Service: "ec2.amazonaws.com"
        },
        Effect: "Allow",
        Sid: ""
      }
    ]
  })

  tags = {
    tag-key = "jinnliong-policy"
  }
}

resource "aws_iam_role_policy_attachment" "jinnliong_policy_attachment" {
  role       = aws_iam_role.jinnliong_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"  # Replace with a more restrictive policy if possible
}

resource "aws_s3_bucket_policy" "jinnliong_policy" {
  bucket = aws_s3_bucket.jinnliong_bucket.id
  policy = aws_iam_role.jinnliong_role.assume_role_policy
}