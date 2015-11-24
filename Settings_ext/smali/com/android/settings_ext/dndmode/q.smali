.class public Lcom/android/settings_ext/dndmode/q;
.super Landroid/preference/PreferenceFragment;
.source "QuietActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private WJ:Lmiui/app/Activity;

.field private WQ:Landroid/database/ContentObserver;

.field private WY:Lcom/android/settings_ext/dndmode/RadioButtonWithArrow;

.field private WZ:Lcom/android/settings_ext/dndmode/RadioButtonWithArrow;

.field private Xa:Lcom/android/settings_ext/dndmode/RadioButtonWithArrow;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 41
    new-instance v0, Lcom/android/settings_ext/dndmode/r;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ext/dndmode/r;-><init>(Lcom/android/settings_ext/dndmode/q;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ext/dndmode/q;->WQ:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/dndmode/q;)Lmiui/app/Activity;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/q;->WJ:Lmiui/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings_ext/dndmode/q;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/settings_ext/dndmode/q;->bF(I)V

    return-void
.end method

.method private bF(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 75
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/q;->WY:Lcom/android/settings_ext/dndmode/RadioButtonWithArrow;

    invoke-virtual {v0, v2}, Lcom/android/settings_ext/dndmode/RadioButtonWithArrow;->setChecked(Z)V

    .line 76
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/q;->WZ:Lcom/android/settings_ext/dndmode/RadioButtonWithArrow;

    invoke-virtual {v0, v2}, Lcom/android/settings_ext/dndmode/RadioButtonWithArrow;->setChecked(Z)V

    .line 77
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/q;->Xa:Lcom/android/settings_ext/dndmode/RadioButtonWithArrow;

    invoke-virtual {v0, v2}, Lcom/android/settings_ext/dndmode/RadioButtonWithArrow;->setChecked(Z)V

    .line 78
    packed-switch p1, :pswitch_data_0

    .line 96
    :goto_0
    return-void

    .line 80
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/q;->WY:Lcom/android/settings_ext/dndmode/RadioButtonWithArrow;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/dndmode/RadioButtonWithArrow;->setChecked(Z)V

    goto :goto_0

    .line 84
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/q;->Xa:Lcom/android/settings_ext/dndmode/RadioButtonWithArrow;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/dndmode/RadioButtonWithArrow;->setChecked(Z)V

    goto :goto_0

    .line 88
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/q;->WZ:Lcom/android/settings_ext/dndmode/RadioButtonWithArrow;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/dndmode/RadioButtonWithArrow;->setChecked(Z)V

    goto :goto_0

    .line 92
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/q;->WZ:Lcom/android/settings_ext/dndmode/RadioButtonWithArrow;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/dndmode/RadioButtonWithArrow;->setChecked(Z)V

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 116
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.ZEN_MODE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 118
    const-string v2, "important_interruptions"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    const-string v0, "switch"

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/q;->WJ:Lmiui/app/Activity;

    invoke-virtual {v0, v1}, Lmiui/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 124
    return-void

    .line 120
    :cond_1
    const-string v2, "quiet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const-string v0, "switch"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f06002d

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/dndmode/q;->addPreferencesFromResource(I)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings_ext/dndmode/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/app/Activity;

    iput-object v0, p0, Lcom/android/settings_ext/dndmode/q;->WJ:Lmiui/app/Activity;

    .line 57
    const-string v0, "off"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/dndmode/q;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/dndmode/RadioButtonWithArrow;

    iput-object v0, p0, Lcom/android/settings_ext/dndmode/q;->WY:Lcom/android/settings_ext/dndmode/RadioButtonWithArrow;

    .line 58
    const-string v0, "important_interruptions"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/dndmode/q;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/dndmode/RadioButtonWithArrow;

    iput-object v0, p0, Lcom/android/settings_ext/dndmode/q;->WZ:Lcom/android/settings_ext/dndmode/RadioButtonWithArrow;

    .line 59
    const-string v0, "quiet"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/dndmode/q;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/dndmode/RadioButtonWithArrow;

    iput-object v0, p0, Lcom/android/settings_ext/dndmode/q;->Xa:Lcom/android/settings_ext/dndmode/RadioButtonWithArrow;

    .line 61
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/q;->WY:Lcom/android/settings_ext/dndmode/RadioButtonWithArrow;

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/dndmode/RadioButtonWithArrow;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/q;->WY:Lcom/android/settings_ext/dndmode/RadioButtonWithArrow;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/dndmode/RadioButtonWithArrow;->bG(I)V

    .line 63
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/q;->WZ:Lcom/android/settings_ext/dndmode/RadioButtonWithArrow;

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/dndmode/RadioButtonWithArrow;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/q;->WZ:Lcom/android/settings_ext/dndmode/RadioButtonWithArrow;

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/dndmode/RadioButtonWithArrow;->b(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/q;->Xa:Lcom/android/settings_ext/dndmode/RadioButtonWithArrow;

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/dndmode/RadioButtonWithArrow;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/q;->Xa:Lcom/android/settings_ext/dndmode/RadioButtonWithArrow;

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/dndmode/RadioButtonWithArrow;->b(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ext/dndmode/q;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/dndmode/q;->WQ:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 70
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/q;->WJ:Lmiui/app/Activity;

    invoke-virtual {v0}, Lmiui/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 71
    invoke-direct {p0, v0}, Lcom/android/settings_ext/dndmode/q;->bF(I)V

    .line 72
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 100
    const-string v0, "off"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/q;->WJ:Lmiui/app/Activity;

    invoke-virtual {v0}, Lmiui/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 110
    :cond_0
    :goto_0
    return v3

    .line 103
    :cond_1
    const-string v0, "important_interruptions"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/q;->WJ:Lmiui/app/Activity;

    invoke-virtual {v0}, Lmiui/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 106
    :cond_2
    const-string v0, "quiet"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/settings_ext/dndmode/q;->WJ:Lmiui/app/Activity;

    invoke-virtual {v0}, Lmiui/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
