# Generated by Django 2.2.1 on 2019-09-08 10:58

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('tds_site', '0006_auto_20190903_2239'),
    ]

    operations = [
        migrations.AlterField(
            model_name='linkpref',
            name='link',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='tds_site.Link'),
        ),
    ]
