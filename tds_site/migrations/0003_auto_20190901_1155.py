# Generated by Django 2.2.1 on 2019-09-01 09:55

import django.core.validators
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('tds_site', '0002_auto_20190831_1611'),
    ]

    operations = [
        migrations.AlterField(
            model_name='link',
            name='link',
            field=models.TextField(validators=[django.core.validators.RegexValidator('http://mind.now/([a-zA-Z0-9]{1,5}$)', 'The short version of URL should be in the next format: http://mind.now/<short_url_identifier> (max 5 chars)')]),
        ),
        migrations.CreateModel(
            name='LinkPrefs',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('landing_page', models.TextField()),
                ('country', models.CharField(max_length=50)),
                ('weight', models.IntegerField()),
                ('link_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='tds_site.Link')),
            ],
        ),
    ]
