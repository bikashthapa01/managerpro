# Generated by Django 2.1.3 on 2018-11-21 06:39

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0009_teacher'),
    ]

    operations = [
        migrations.RenameField(
            model_name='teacher',
            old_name='desigination',
            new_name='designation',
        ),
    ]