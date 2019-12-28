# モジュール化
/////////////////////////////////////////////////////////
module "describe_regions_for_ec2" {
  source            = "./iam_role"
  tabiya-iam-role   = "tabiya-role-01"
  tabiya-iam-policy = "tabiya-policy-02"
  identifier        = "ec2.amazonaws.com"
}
/////////////////////////////////////////////////////////

# 外部定義 リージョン指定
/////////////////////////////////////////////////////////
provider "aws" {
  region = "ap-northeast-1"
}
/////////////////////////////////////////////////////////