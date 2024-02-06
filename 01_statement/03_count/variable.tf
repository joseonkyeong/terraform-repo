variable "user_names" {
    description = "Create IAM users with these names"
    type        = list(string)
    default     = ["aws11-neo","aws11-morpheus","aws11-trinity"]
}