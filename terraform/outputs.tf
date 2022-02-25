output "ol79_images" {
  value = data.oci_core_images.ol79_images.images[0].display_name
}

output "compute" {
    value = "ssh opc@${oci_core_instance.compute[0].public_ip}"
}