from rest_framework import serializers
from .models import LinkStat, UserStat

class LinkStatSerializer(serializers.ModelSerializer):
    class Meta:
        model = LinkStat
        fields = ('link', 'total_clicks', 'unique_clicks', 'countries', 'last_ip')
