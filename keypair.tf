resource "aws_key_pair" "demo2" {
  key_name   = "demo2"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDkvl8V/LfODZi0HLmMcmhtcCmjBPzajUvqgW2zKC01uA44Wwp/fTY6JCmkPPsDfaoZKZsrRL9bsfxdW2QgtUcwNWWAmUZBeZbpgErZKlWZUqNn1D0W21cfQ01+uRGdLMoLfsU5hlu6jAaNnuxv56ouDWqroi5XE33WL60CnfvnWRtHs+FOtnYT1J7ih0zu/KYMEz40c7V4SqVsFEOHmUFE+zyBIILp+0CG7ykLvPFPQ4UTFqM44uxGlhNzszGDgQruUZ9DJVDyyk6MeKDp/5+Ezy0nVG64uGHLGkFW2Fx1xenNDZF8auBEhglopEZBESuqDsimEubZLPhfYMf8zgGBUZD4IxcW41+rFe7LCUlYLaEa7eRDD86IAGkqiCgngFUYtsvGdP9Wy2DBRTadJOltJRtzcTUWyTIl69ZhzdAdpwanDr0fwsCSIRBbc8kddD1FdZdPl60SwizmWwf07PbHQCmW1sVW+oek5BCWOQWO+fTqoyrowbEOeCvKIef08ZE= Mr@Mr-PC"
  #public_key = file(id_rsa.pub)
  
}