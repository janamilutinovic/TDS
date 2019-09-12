from django import forms

from .models import LinkPref, Link


class LinkPrefForm(forms.ModelForm):
    weight = forms.FloatField(min_value=0.0, max_value=1.0)
    def __init__(self, *args, **kwargs):
        dict = args[1]
        super(LinkPrefForm, self).__init__(*args, **kwargs)
        self.fields['link'].queryset = self.fields['link'].queryset.filter(id=dict['link_id'])

    class Meta:
        model = LinkPref
        fields = [
            'link',
            'landing_page',
            'country',
            'weight',
        ]


class LinkPrefUpdateForm(forms.ModelForm):
    weight = forms.FloatField(min_value=0.1, max_value=1.0)
    class Meta:
        model = LinkPref
        fields = [
            'landing_page',
            'country',
            'weight',
        ]