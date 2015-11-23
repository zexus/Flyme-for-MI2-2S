.class Lcom/android/settings/dndmode/w;
.super Ljava/lang/Object;
.source "VipCallSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic Xs:Lcom/android/settings/dndmode/u;

.field final synthetic Xt:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/dndmode/u;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/settings/dndmode/w;->Xs:Lcom/android/settings/dndmode/u;

    iput-object p2, p0, Lcom/android/settings/dndmode/w;->Xt:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 148
    check-cast p1, Lmiui/preference/RadioButtonPreference;

    .line 149
    invoke-virtual {p1}, Lmiui/preference/RadioButtonPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/settings/dndmode/w;->Xt:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lmiui/preference/RadioButtonPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 151
    iget-object v1, p0, Lcom/android/settings/dndmode/w;->Xs:Lcom/android/settings/dndmode/u;

    invoke-static {v1}, Lcom/android/settings/dndmode/u;->a(Lcom/android/settings/dndmode/u;)Lmiui/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/MiuiSettings$AntiSpam;->setVipListForQuietMode(Landroid/content/Context;I)V

    .line 152
    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/android/settings/dndmode/w;->Xs:Lcom/android/settings/dndmode/u;

    invoke-static {v0}, Lcom/android/settings/dndmode/u;->b(Lcom/android/settings/dndmode/u;)V

    .line 158
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dndmode/w;->Xs:Lcom/android/settings/dndmode/u;

    invoke-static {v0}, Lcom/android/settings/dndmode/u;->c(Lcom/android/settings/dndmode/u;)V

    goto :goto_0
.end method
