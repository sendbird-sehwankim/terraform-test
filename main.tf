module "git_repo" {
    source = "git::https://github.com/sendbird-sehwankim/terraform-test.git"
    
    output "requirements_file" {
        value = "${path.module}/requirements.txt}"
    }
}

output "requirements" {
    value = module.git_repo.requirements_file
}