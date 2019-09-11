from django import forms

from .models import LinkPref, Link


class LinkPrefForm(forms.ModelForm):
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
    class Meta:
        model = LinkPref
        fields = [
            'landing_page',
            'country',
            'weight',
        ]