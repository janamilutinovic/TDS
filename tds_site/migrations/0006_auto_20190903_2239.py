# Generated by Django 2.2.1 on 2019-09-03 20:39

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('tds_site', '0005_auto_20190902_0001'),
    ]

    operations = [
        migrations.RenameField(
            model_name='linkpref',
            old_name='link_id',
            new_name='link',
        ),
    ]
