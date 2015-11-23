.class Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$1;
.super Ljava/lang/Object;
.source "InstalledAppDetailsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic GG:Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;)V
    .locals 0

    .prologue
    .line 744
    iput-object p1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$1;->GG:Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$1;->GG:Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->jm()Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->f(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;)V

    .line 748
    return-void
.end method
