# Generated by Django 2.1.3 on 2018-11-15 14:43

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0002_user_is_completed'),
    ]

    operations = [
        migrations.RenameField(
            model_name='student',
            old_name='userid',
            new_name='user',
        ),
    ]