1. Install CloudPanel

```
curl -sSL https://installer.cloudpanel.io/ce/v2/install.sh | sudo CLOUD=do bash
```

2. Run clean-up script:

```
curl -sSL https://raw.githubusercontent.com/cloudpanel-io/marketplace-scripts/master/do/cleanup.sh | sudo bash
```

3. Clone DO marketplace partners repo:

```
git clone https://github.com/digitalocean/marketplace-partners.git /tmp/marketplace-partners && chmod -R 700 /tmp/marketplace-partners
```

4. Execute script: img_check.sh:

```
/tmp/marketplace-partners/scripts/99-img-check.sh
```

5. Execute script: cleanup.sh:

```
/tmp/marketplace-partners/scripts/90-cleanup.sh
```

6. Delete marketplace directory

```
rm -rf /tmp/*
```