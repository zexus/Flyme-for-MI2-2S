.class Lcom/android/settings_ext/notification/ZenModeSettings$10;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic agC:Lcom/android/settings_ext/notification/ZenModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/notification/ZenModeSettings;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/settings_ext/notification/ZenModeSettings$10;->agC:Lcom/android/settings_ext/notification/ZenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 322
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings_ext/notification/ZenModeSettings$10;->agC:Lcom/android/settings_ext/notification/ZenModeSettings;

    invoke-static {v1}, Lcom/android/settings_ext/notification/ZenModeSettings;->d(Lcom/android/settings_ext/notification/ZenModeSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0909f8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;

    iget-object v2, p0, Lcom/android/settings_ext/notification/ZenModeSettings$10;->agC:Lcom/android/settings_ext/notification/ZenModeSettings;

    invoke-static {v2}, Lcom/android/settings_ext/notification/ZenModeSettings;->d(Lcom/android/settings_ext/notification/ZenModeSettings;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings_ext/notification/ZenModeAutomaticConditionSelection;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ext/notification/ZenModeSettings$10$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/notification/ZenModeSettings$10$1;-><init>(Lcom/android/settings_ext/notification/ZenModeSettings$10;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09054e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 333
    const/4 v0, 0x1

    return v0
.end method
