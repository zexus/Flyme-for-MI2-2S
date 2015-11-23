.class public Lcom/android/settings/notification/SettingPref;
.super Ljava/lang/Object;
.source "SettingPref.java"


# instance fields
.field protected final afR:Ljava/lang/String;

.field protected final afS:I

.field private final afT:[I

.field protected afU:Landroid/preference/TwoStatePreference;

.field protected afV:Lcom/android/settings/notification/DropDownPreference;

.field private final mKey:Ljava/lang/String;

.field protected final mType:I

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public varargs constructor <init>(ILjava/lang/String;Ljava/lang/String;I[I)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/android/settings/notification/SettingPref;->mType:I

    .line 48
    iput-object p2, p0, Lcom/android/settings/notification/SettingPref;->mKey:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/android/settings/notification/SettingPref;->afR:Ljava/lang/String;

    .line 50
    iput p4, p0, Lcom/android/settings/notification/SettingPref;->afS:I

    .line 51
    iput-object p5, p0, Lcom/android/settings/notification/SettingPref;->afT:[I

    .line 52
    iget v0, p0, Lcom/android/settings/notification/SettingPref;->mType:I

    iget-object v1, p0, Lcom/android/settings/notification/SettingPref;->afR:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/notification/SettingPref;->c(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/SettingPref;->mUri:Landroid/net/Uri;

    .line 53
    return-void
.end method

.method protected static a(ILandroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 133
    packed-switch p0, :pswitch_data_0

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 135
    :pswitch_0
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 137
    :goto_0
    return v0

    :pswitch_1
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static b(ILandroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 143
    packed-switch p0, :pswitch_data_0

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 145
    :pswitch_0
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 147
    :goto_0
    return v0

    :pswitch_1
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static c(ILjava/lang/String;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 123
    packed-switch p0, :pswitch_data_0

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 125
    :pswitch_0
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 127
    :goto_0
    return-object v0

    :pswitch_1
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected a(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public be(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public bg(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 114
    iget v0, p0, Lcom/android/settings/notification/SettingPref;->mType:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/SettingPref;->afR:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/notification/SettingPref;->afS:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/notification/SettingPref;->b(ILandroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 115
    iget-object v1, p0, Lcom/android/settings/notification/SettingPref;->afU:Landroid/preference/TwoStatePreference;

    if-eqz v1, :cond_2

    .line 116
    iget-object v1, p0, Lcom/android/settings/notification/SettingPref;->afU:Landroid/preference/TwoStatePreference;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 120
    :cond_0
    :goto_1
    return-void

    .line 116
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/android/settings/notification/SettingPref;->afV:Lcom/android/settings/notification/DropDownPreference;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/settings/notification/SettingPref;->afV:Lcom/android/settings/notification/DropDownPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/DropDownPreference;->n(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public c(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/preference/Preference;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 65
    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/SettingPref;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 66
    if-eqz v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/SettingPref;->be(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-object v1, v2

    .line 70
    :cond_0
    instance-of v0, v1, Landroid/preference/TwoStatePreference;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 71
    check-cast v0, Landroid/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/notification/SettingPref;->afU:Landroid/preference/TwoStatePreference;

    .line 78
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/settings/notification/SettingPref;->bg(Landroid/content/Context;)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/notification/SettingPref;->afU:Landroid/preference/TwoStatePreference;

    if-eqz v0, :cond_4

    .line 80
    new-instance v0, Lcom/android/settings/notification/SettingPref$1;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/notification/SettingPref$1;-><init>(Lcom/android/settings/notification/SettingPref;Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 87
    iget-object v2, p0, Lcom/android/settings/notification/SettingPref;->afU:Landroid/preference/TwoStatePreference;

    .line 98
    :cond_2
    :goto_0
    return-object v2

    .line 72
    :cond_3
    instance-of v0, v1, Lcom/android/settings/notification/DropDownPreference;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 73
    check-cast v0, Lcom/android/settings/notification/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/notification/SettingPref;->afV:Lcom/android/settings/notification/DropDownPreference;

    .line 74
    iget-object v4, p0, Lcom/android/settings/notification/SettingPref;->afT:[I

    array-length v5, v4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_1

    aget v6, v4, v0

    .line 75
    iget-object v7, p0, Lcom/android/settings/notification/SettingPref;->afV:Lcom/android/settings/notification/DropDownPreference;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {p0, v8, v6}, Lcom/android/settings/notification/SettingPref;->a(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Lcom/android/settings/notification/DropDownPreference;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 89
    :cond_4
    iget-object v0, p0, Lcom/android/settings/notification/SettingPref;->afV:Lcom/android/settings/notification/DropDownPreference;

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/android/settings/notification/SettingPref;->afV:Lcom/android/settings/notification/DropDownPreference;

    new-instance v1, Lcom/android/settings/notification/SettingPref$2;

    invoke-direct {v1, p0, v3}, Lcom/android/settings/notification/SettingPref$2;-><init>(Lcom/android/settings/notification/SettingPref;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/DropDownPreference;->a(Lcom/android/settings/notification/DropDownPreference$Callback;)V

    .line 96
    iget-object v2, p0, Lcom/android/settings/notification/SettingPref;->afV:Lcom/android/settings/notification/DropDownPreference;

    goto :goto_0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/notification/SettingPref;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/settings/notification/SettingPref;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected i(Landroid/content/Context;I)Z
    .locals 3

    .prologue
    .line 102
    iget v0, p0, Lcom/android/settings/notification/SettingPref;->mType:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/SettingPref;->afR:Ljava/lang/String;

    invoke-static {v0, v1, v2, p2}, Lcom/android/settings/notification/SettingPref;->a(ILandroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
