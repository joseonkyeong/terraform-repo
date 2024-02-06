variable "user_names" {
    description = "Create IAM users with these names"
    type        = list(string)
    default     = ["aws11-neo","trinity","aws11-morpheus"]
}