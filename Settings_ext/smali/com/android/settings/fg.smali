.class Lcom/android/settings/fg;
.super Ljava/lang/Object;
.source "OtherPersonalSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic tH:Lcom/android/settings/OtherPersonalSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/OtherPersonalSettings;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings/fg;->tH:Lcom/android/settings/OtherPersonalSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 83
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 84
    const-string v1, "com.miui.backup"

    const-string v2, "com.miui.backup.ui.TransMainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    iget-object v1, p0, Lcom/android/settings/fg;->tH:Lcom/android/settings/OtherPersonalSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings/OtherPersonalSettings;->startActivity(Landroid/content/Intent;)V

    .line 86
    const/4 v0, 0x1

    return v0
.end method
