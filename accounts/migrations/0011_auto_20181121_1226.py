# Generated by Django 2.1.3 on 2018-11-21 06:56

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0010_auto_20181121_1209'),
    ]

    operations = [
        migrations.AddField(
            model_name='teacher',
            name='educations',
            field=models.TextField(default='Check'),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='teacher',
            name='experiences',
            field=models.TextField(default='Add Educations Details'),
        ),
    ]
