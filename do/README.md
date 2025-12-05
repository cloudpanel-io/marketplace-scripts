1. Update source lists and packages

```
apt update && apt -y upgrade
```

2. Install CloudPanel

```
curl -sSL https://installer.cloudpanel.io/ce/v2/install.sh | sudo CLOUD=do bash
```

3. Run clean-up script:

```
curl -sSL https://raw.githubusercontent.com/cloudpanel-io/marketplace-scripts/master/do/cleanup.sh | sudo bash
```

4. Clone DO marketplace partners repo:

```
git clone https://github.com/digitalocean/marketplace-partners.git /tmp/marketplace-partners && chmod -R 700 /tmp/marketplace-partners
```

5. Execute script: img_check.sh:

```
/tmp/marketplace-partners/scripts/99-img-check.sh
```

6. Execute script: cleanup.sh:

```
/tmp/marketplace-partners/scripts/90-cleanup.sh
```

7. Delete marketplace directory

```
rm -rf /tmp/* && rm -f /root/.bash_history
```