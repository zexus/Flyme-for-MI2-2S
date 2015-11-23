.class Lcom/android/settings_ext/fn;
.super Ljava/lang/Object;
.source "PrivacyModeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic tW:Lcom/android/settings_ext/PrivacyModeDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/PrivacyModeDialog;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/settings_ext/fn;->tW:Lcom/android/settings_ext/PrivacyModeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    iget-object v1, p0, Lcom/android/settings_ext/fn;->tW:Lcom/android/settings_ext/PrivacyModeDialog;

    invoke-direct {v0, v1}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 35
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/security/ChooseLockSettingsHelper;->setPrivacyModeEnabled(Z)V

    .line 36
    return-void
.end method
