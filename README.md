# Oracle WebVR Demo

## Develop locally

Change directory to `web`:

```
cd web
```

> Requirement: Node install (tested on `16.13.2`)

Install dependencies:

```
npm install
```

Start local web server

```
npm start
```

## Deploy

You have two steps:

- Create compute with Terraform
- Provision webserver with Ansible

> `FIXME` Better automation between terraform and ansible

### Terraform

```
cd terraform
```

```
cp terraform.tfvars.template terraform.tfvars
```

Modify variables according to your tenancy, user and compartment details.

```
terraform init
```

```
terraform plan
```

```
terraform apply
```

Copy Public IP from terraform output

### Ansible


```
cd ansible
```

```
cp inventory/oci.ini.template inventory/oci.ini
```

Change ansible inventory `inventory/oci.ini` with the Public IP

```
ansible-playbook vr/vr.yml
```

## Clean up

Destroy compute with terraform

```
cd terraform
```

```
terraform destroy
```