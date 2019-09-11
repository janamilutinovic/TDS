# Generated by Django 2.2.1 on 2019-09-01 18:41

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('tds_site', '0003_auto_20190901_1155'),
    ]

    operations = [
        migrations.CreateModel(
            name='LinkPref',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('landing_page', models.CharField(max_length=50)),
                ('country', models.CharField(max_length=50)),
                ('weight', models.IntegerField()),
                ('link_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='tds_site.Link')),
            ],
        ),
        migrations.DeleteModel(
            name='LinkPrefs',
        ),
    ]