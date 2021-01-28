1. Run clean-up script:

```
curl -sSL https://raw.githubusercontent.com/cloudpanel-io/do-marketplace/master/cleanup.sh | sudo bash
```

2. Clone DO marketplace partners repo:

```
git clone https://github.com/digitalocean/marketplace-partners.git /root/marketplace-partners && chmod -R 700 /root/marketplace-partners
```

3. Execute script: img_check.sh:

```
/root/marketplace-partners/scripts/img_check.sh
```

4. Execute script: cleanup.sh:

```
/root/marketplace-partners/scripts/cleanup.sh
```

5. Delete marketplace directory

```
rm -rf /root/marketplace-partners/
```